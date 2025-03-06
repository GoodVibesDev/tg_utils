import 'dart:async';
import 'dart:io' as io;

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:synchronized/synchronized.dart';
import 'package:teledart/model.dart';
import 'package:teledart/teledart.dart';
import 'package:tg_utils/tg_utils.dart';

class TeleDartMessageSender extends AbstractMessageSender {
  TeleDartMessageSender({
    required TeleDart? bot,
    required Logger logger,
    required InnerMessageSenderCache innerCache,
    required Future<void> Function(
      SerializedMessage, {
      required List<Message> sentTgMessages,
      required int chatId,
    }) onMessageSent,
    required Future<void> Function(SerializedMessage) onSendingFailed,
    required Future<void> Function(int) onBotBanned,
    required Future<void> Function(TgUtilsFailedMessageGroup)
        onFailedMessageGroup,
  })  : _bot = bot,
        _logger = logger,
        _innerCache = innerCache,
        _onMessageSent = onMessageSent,
        _onSendingFailed = onSendingFailed,
        _onBotBanned = onBotBanned,
        _onFailedMessageGroup = onFailedMessageGroup;

  /// Папка для временных файлов, которые могут быть созданы в процессе
  /// отправки сообщений.
  static const tempFilesDir = 'ms_temp';

  // TODO(sergsavchuk): add doc comment
  static const int failLimit = 3;

  /// Максимальное количество сообщений, которое бот может отправить в секунду,
  /// взято из документации Telegram.
  static const int messagesLimit = 30;

  /// Максимальное количество сообщений, которые бот может отправить в один и
  /// тот же чат за одну секунду, в документации Telegram, написано, что этот
  /// лимит - 1, но пока что с лимитом в 3 всё работает вполне хорошо.
  static const int singleChatMessagesLimit = 3;

  /// Частота отправки сообщений, по идее всегда будет равна одной секунде, но
  /// возможно в некоторый случаях может пригодиться конфигурация этого
  /// параметра.
  static const int sendingFrequencyMilliSecs = 1000;

  // TODO(sergsavchuk): add doc comment
  static const int mediaGroupFilesLimit = 3;

  final Logger _logger;
  final TeleDart? _bot;
  final InnerMessageSenderCache _innerCache;

  final Future<void> Function(
    SerializedMessage message, {
    required List<Message> sentTgMessages,
    required int chatId,
  }) _onMessageSent;

  final Future<void> Function(SerializedMessage message) _onSendingFailed;

  final Future<void> Function(int) _onBotBanned;
  final Future<void> Function(TgUtilsFailedMessageGroup) _onFailedMessageGroup;

  late final _inputQueueKey = 'inputQueue';
  late final _outputQueueKey = 'outputQueue';

  final Lock _inputQueueLock = Lock();
  final Lock _outputQueueLock = Lock();
  final Lock _startSendLock = Lock();

  final Map<int, int> _chatCounters = {};
  int _counter = 0;
  bool _isSending = false;
  final _sendingStopWatch = Stopwatch();

  @override
  Future<void> send({List<MessageGroup>? messageGroups}) async {
    try {
      if (messageGroups != null) {
        await _modifyQueue(
          (inputQueue) => Future.value(
            inputQueue.copyWith(
              groups: List.of(inputQueue.groups)..addAll(messageGroups),
            ),
          ),
          lock: _inputQueueLock,
          key: _inputQueueKey,
        );
      }

      // На всякий случай
      await _startSendLock.synchronized(() {
        if (_isSending) return;

        _isSending = true;
        unawaited(_sendGroupsFromAllQueues());
      });
    } catch (e, stackTrace) {
      _logger.e(
        'Error in message sender',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> _sendGroupsFromAllQueues() async {
    try {
      _sendingStopWatch.start();

      var messageGroups = <MessageGroup>[];
      await _modifyQueue(
        (outputQueue) async {
          await _modifyQueue(
            (inputQueue) async {
              messageGroups
                ..addAll(outputQueue.groups)
                ..addAll(inputQueue.groups);

              // Делаем это здесь, на тот случай, если идет ожидание на
              // добавление в inputQueue, тогда оно сразу и запустит новую
              // отправку
              if (messageGroups.isEmpty) _isSending = false;

              //Достали из inputQueue все сообщения и обнуляем ее
              return Future.value();
            },
            lock: _inputQueueLock,
            key: _inputQueueKey,
          );

          // сохраняем все сообщения в outputQueue
          // чтобы они не потерялись, если сервер упадет
          return Future.value(TgMessageGroupQueue(groups: messageGroups));
        },
        lock: _outputQueueLock,
        key: _outputQueueKey,
      );

      if (messageGroups.isEmpty) {
        _sendingStopWatch
          ..stop()
          ..reset();
        return;
      }

      messageGroups = await _sendMessageGroups(messageGroups);
      await _rewriteOutputQueue(messageGroups);
    } catch (e, stackTrace) {
      _logger.e(
        'Error in message sender',
        error: e,
        stackTrace: stackTrace,
      );
    }

    _sendingStopWatch.stop();
    final sendingDuration = _sendingStopWatch.elapsedMilliseconds;
    _sendingStopWatch.reset();
    if (sendingDuration > sendingFrequencyMilliSecs) {
      unawaited(_sendGroupsFromAllQueues());
    } else {
      Future.delayed(
        Duration(milliseconds: sendingFrequencyMilliSecs - sendingDuration),
        _sendGroupsFromAllQueues,
      );
    }
  }

  Future<void> _rewriteOutputQueue(
    List<MessageGroup> groupsAfterSending,
  ) async {
    final newOutputQueue = <MessageGroup>[];

    for (final group in groupsAfterSending) {
      if (group.messages.isEmpty) continue;
      if ((group.failCounter == null || group.failCounter! < failLimit) &&
          (!(group.messages.last.isSent ?? false))) {
        newOutputQueue.add(group);
      }
    }

    await _innerCache.putQueue(
      _outputQueueKey,
      TgMessageGroupQueue(groups: newOutputQueue),
    );
  }

  Future<List<MessageGroup>> _sendMessageGroups(
    List<MessageGroup> groupsToSend,
  ) async {
    var result = List.of(groupsToSend);

    _resetCounters();

    // Сортируем группы по приоритету и положению в изначальном списке
    // (если группы имеют одинаковый приоритет, то первой будет та, что
    // находится раньше в изначальном списке)
    final sortedIndexedGroups = result.indexed.toList()
      ..sort((a, b) {
        final aPriority = a.$2.priority ?? 1;
        final bPriority = b.$2.priority ?? 1;
        if (aPriority.compareTo(bPriority) == 0) {
          final aIndex = a.$1;
          final bIndex = b.$1;
          return aIndex.compareTo(bIndex);
        }

        return aPriority.compareTo(bPriority);
      });

    result = sortedIndexedGroups.map((item) => item.$2).toList();

    for (var j = 0; j < result.length; j++) {
      for (var i = 0; i < result[j].messages.length; i++) {
        final message = result[j].messages[i];
        final sendResult = await _sendMessage(result[j], message);
        final sentMessage = sendResult.$1;
        if (sentMessage == null) {
          final messageGroup = sendResult.$2;
          if (messageGroup != null) {
            result[j] = messageGroup;
          }

          break;
        }

        result[j] = result[j].copyWith(
          messages: List.of(result[j].messages)
            ..replaceRange(i, i + 1, [sentMessage]),
        );

        // TODO(sergsavchuk): Чисто теоритически может такое быть,
        //  что условно 100 групп из 1000 зафейлятся подряд, а так как не
        //  проверяется при фейле лимит. То оно может попытаться отправить
        //  100 сообщений за одну секунду.
        //  Если ошибка будет выброшена не нами, а тг, то чисто теоритически
        //  бота может забанить временно от отправки.
        if (_counter >= messagesLimit) {
          return result;
        }
      }
    }

    return result;
  }

  /// Returns [SerializedMessage] that was sent(if it was sent) and updated
  /// [MessageGroup] (if it was updated).
  Future<(SerializedMessage?, MessageGroup?)> _sendMessage(
    MessageGroup messageGroup,
    SerializedMessage initialMessage,
  ) async {
    if (initialMessage.isSent ?? false) return (initialMessage, null);
    var message = initialMessage;

    List<Message>? sentMessageDetails;
    try {
      // Проверяем сообщение с mediaGroup на максимально разрешенное
      // количество файлов
      if ((message.files?.length ?? 0) > mediaGroupFilesLimit) {
        throw MediaGroupTooBigException();
      }

      // Проверяем не превышено ли количество сообщений отправленых в один
      // и тот же чат
      if ((_chatCounters[messageGroup.chatId] ?? 0) >=
          singleChatMessagesLimit) {
        return (null, null);
      }

      // Если сумма количества сообшений в этой итерации
      // и файлов в сообщении больше лимита, то увеличиваем кол-во
      // отправленных файлов до лимита для сохранения порядка сообщений
      // и завершаем отправку для данной группы сообщений
      if ((_chatCounters[messageGroup.chatId] ?? 0) +
              (message.files?.length ?? 0) >
          singleChatMessagesLimit) {
        _chatCounters[messageGroup.chatId] = singleChatMessagesLimit;
        return (null, null);
      }

      sentMessageDetails = await _sendSerializedMessage(
        chatId: messageGroup.chatId,
        serializedMessage: message,
      );
      message = message.copyWith(isSent: true);
      _updateCounters(
        chatId: messageGroup.chatId,
        sendMessagesCount: message.files?.length ?? 1,
      );
    } catch (error, stackTrace) {
      _updateCounters(
        chatId: messageGroup.chatId,
        sendMessagesCount: message.files?.length ?? 1,
      );

      return (
        null,
        await _processGroupSendingFailed(messageGroup, error, stackTrace),
      );
    }

    if (message.isSent ?? false) {
      await _onMessageSent(
        message,
        sentTgMessages: sentMessageDetails,
        chatId: messageGroup.chatId,
      );
    }

    return (message, null);
  }

  /// Returns updated [MessageGroup].
  Future<MessageGroup> _processGroupSendingFailed(
    MessageGroup initialMessageGroup,
    Object error,
    StackTrace stackTrace,
  ) async {
    var messageGroup = initialMessageGroup;

    if (error is HttpClientException && error.code == 403) {
      messageGroup = messageGroup.copyWith(failCounter: failLimit);
      await _onBotBanned(messageGroup.chatId);
    } else if (error is MediaGroupTooBigException) {
      messageGroup = messageGroup.copyWith(failCounter: failLimit);
    } else {
      messageGroup = messageGroup.copyWith(
        failCounter: (messageGroup.failCounter ?? 0) + 1,
      );
    }

    if (messageGroup.failCounter! >= failLimit) {
      _logger.e(
        'sendSerializedMessage error. Message: ${messageGroup.messages}',
        error: error,
        stackTrace: stackTrace,
      );

      for (final message in messageGroup.messages) {
        if (!(message.isSent ?? false)) {
          await _onSendingFailed(message);
        }
      }

      await _onFailedMessageGroup(
        TgUtilsFailedMessageGroup(
          group: messageGroup.toString(),
          message: messageGroup.messages
              .firstWhere(
                (message) => (message.isSent ?? false) == false,
              )
              .toString(),
          exception: error.toString(),
        ),
      );
    } else {
      // На текущий цикл заканчиваем отправку для этого чата,
      // чтобы сообщения не перемешались
      _chatCounters[messageGroup.chatId] = singleChatMessagesLimit;
    }

    return messageGroup;
  }

  void _resetCounters() {
    _counter = 0;
    _chatCounters.clear();
  }

  void _updateCounters({required int chatId, required int sendMessagesCount}) {
    _chatCounters.update(
      chatId,
      (value) => value + sendMessagesCount,
      ifAbsent: () => sendMessagesCount,
    );
    _counter += sendMessagesCount;
  }

  Future<void> _modifyQueue(
    Future<TgMessageGroupQueue?> Function(TgMessageGroupQueue messagesQueue)
        modify, {
    required Lock lock,
    required String key,
  }) async {
    await lock.synchronized(() async {
      final messageQueue = await _innerCache.getQueue(key);

      final newQueue =
          await modify(messageQueue ?? const TgMessageGroupQueue(groups: []));

      if (newQueue == null) {
        await _innerCache.invalidateQueue(key);
      } else {
        await _innerCache.putQueue(key, newQueue);
      }
    });
  }

  Future<List<Message>> _sendSerializedMessage({
    required int chatId,
    required SerializedMessage serializedMessage,
  }) async {
    if (_bot == null) throw BotNotStartedException();
    if (serializedMessage.text == null &&
        (serializedMessage.files == null || serializedMessage.files!.isEmpty)) {
      throw Exception('Empty serialized message');
    }

    if ((serializedMessage.files?.length ?? 0) > 1) {
      return _sendMediaGroup(
        chatId: chatId,
        serializedMessage: serializedMessage,
      );
    } else {
      return [
        await _sendOrEditMessage(
          chatId: chatId,
          serializedMessage: serializedMessage,
        ),
      ];
    }
  }

  Future<List<Message>> _sendMediaGroup({
    required int chatId,
    required SerializedMessage serializedMessage,
  }) {
    if (serializedMessage.files!.length > 1 &&
        serializedMessage.serializedMarkup != null) {
      throw Exception("Media group can't have a reply markup");
    }
    if (serializedMessage.files!.length > mediaGroupFilesLimit) {
      throw Exception("Media group can't have more than 3 files");
    }

    return _bot!.sendMediaGroup(
      chatId,
      serializedMessage.files!.map((file) {
        final type = _isNotDocumentGroup(serializedMessage.files!)
            ? file.tgFileType == TgUtilsFileType.photo
                ? InputMedia.typePhoto
                : file.tgFileType == TgUtilsFileType.video
                    ? InputMedia.typeVideo
                    : InputMedia.typeAudio
            : InputMedia.typeDocument;

        return InputMedia(
          type: type,
          media: file.fileId!,
          caption: file.caption,
        );
      }).toList(),
    );
  }

  bool _isNotDocumentGroup(List<TgUtilsFileDetails> files) {
    final fileTypesSet = files.map((file) => file.tgFileType).toSet();

    // Вместе могут отправляться только фото, видео, фото и видео, аудио
    // Все остальное должно отправляться как документ
    return (fileTypesSet.length == 2 &&
            fileTypesSet.contains(TgUtilsFileType.photo) &&
            fileTypesSet.contains(TgUtilsFileType.video)) ||
        (fileTypesSet.length == 1 &&
            (fileTypesSet.contains(TgUtilsFileType.photo) ||
                fileTypesSet.contains(TgUtilsFileType.video) ||
                fileTypesSet.contains(TgUtilsFileType.audio)));
  }

  Future<Message> _sendOrEditMessage({
    required int chatId,
    required SerializedMessage serializedMessage,
  }) async {
    if (serializedMessage.editMessageId != null &&
        serializedMessage.replyToId != null) {
      throw Exception("replyToId & editMessageId can't be specified at the same"
          ' time');
    }
    if (serializedMessage.editMessageId != null &&
        serializedMessage.text == null) {
      throw Exception('if replyToId specified, then text must be not null');
    }

    final file = serializedMessage.files?.first;
    final text = serializedMessage.text?.replaceFakeTagsDelimiters();
    final replyMarkup = serializedMessage.serializedMarkup?.toMarkup();

    // TODO(eug): Можно редактировать не только текст, но пока нет надобности
    if (serializedMessage.editMessageId != null) {
      final editResult = await _bot!.editMessageText(
        serializedMessage.text!,
        messageId: serializedMessage.editMessageId,
        chatId: chatId,
        parseMode: 'HTML',
        replyMarkup: serializedMessage.serializedMarkup?.toMarkup(),
      );

      if (editResult is Message) {
        return editResult;
      } else {
        throw Exception(
          'Failed to edit message\n ${serializedMessage.toJson()}',
        );
      }
    }

    if (file == null) {
      return _bot!.sendMessage(
        chatId,
        text!,
        replyMarkup: replyMarkup,
        parseMode: 'HTML',
        replyToMessageId: serializedMessage.replyToId,
      );
    } else {
      Object? fileResource = file.fileId;
      if (fileResource is String) {
        try {
          final uri = Uri.parse(fileResource);
          if (uri.scheme != 'https') {
            // TODO(sergsavchuk): придумать что-то, чтобы эта загрзка не
            //  замедляла отправку: возможно форсить всегда https вполне себе
            //  нормальная идея, просто нужно завести для этого нормальный
            //  сервис с https, может уже какое-то готовое облако?
            //  может дать NextCloud поднять, как я сделал для себя?
            final savePath =
                '$tempFilesDir/${file.fileName ?? uri.pathSegments.last}';
            await Dio().download(fileResource, savePath);
            fileResource = io.File(savePath);
          }
        } on FormatException catch (_) {
        } catch (e, stackTrace) {
          _logger.e(
            'Error while downloading file(${file.fileName}) '
            'from ${file.fileId}',
            error: e,
            stackTrace: stackTrace,
          );
          if (fileResource is io.File && fileResource.existsSync()) {
            unawaited(fileResource.delete());
          }
        }
      }

      switch (file.tgFileType) {
        case TgUtilsFileType.photo:
          return _bot!.sendPhoto(
            chatId,
            fileResource,
            replyMarkup: replyMarkup,
            parseMode: 'HTML',
            replyToMessageId: serializedMessage.replyToId,
            caption: file.caption,
          );
        case TgUtilsFileType.document:
          return _bot!.sendDocument(
            chatId,
            fileResource,
            replyMarkup: replyMarkup,
            parseMode: 'HTML',
            replyToMessageId: serializedMessage.replyToId,
            caption: file.caption,
          );
        case TgUtilsFileType.video:
          return _bot!.sendVideo(
            chatId,
            fileResource,
            replyMarkup: replyMarkup,
            parseMode: 'HTML',
            caption: file.caption,
            replyToMessageId: serializedMessage.replyToId,
          );
        case TgUtilsFileType.voice:
          return _bot!.sendVoice(
            chatId,
            fileResource,
            replyMarkup: replyMarkup,
            parseMode: 'HTML',
            replyToMessageId: serializedMessage.replyToId,
            caption: file.caption,
          );
        case TgUtilsFileType.audio:
          return _bot!.sendAudio(
            chatId,
            fileResource,
            replyMarkup: replyMarkup,
            parseMode: 'HTML',
            replyToMessageId: serializedMessage.replyToId,
            caption: file.caption,
          );
        case TgUtilsFileType.videoNote:
          return _bot!.sendVideoNote(
            chatId,
            fileResource,
            replyMarkup: replyMarkup,
            replyToMessageId: serializedMessage.replyToId,
          );
        case TgUtilsFileType.sticker:
          return _bot!.sendSticker(
            chatId,
            fileResource,
            replyMarkup: replyMarkup,
            replyToMessageId: serializedMessage.replyToId,
          );
      }
    }
  }
}

extension on String {
  String replaceFakeTagsDelimiters() => replaceAll(
        RegExp(
          '<(?!blockquote>|blockquote expandable>|/blockquote>|/b>|/i>|b>|i>'
          '|/code>|code>|/s>|s>|u>|/u>)',
        ),
        '&#60',
      );
}
