import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tg_utils/src/model/message_group.dart';

part 'tg_message_group_queue.freezed.dart';

part 'tg_message_group_queue.g.dart';

@freezed
class TgMessageGroupQueue with _$TgMessageGroupQueue {
  const factory TgMessageGroupQueue({
    required List<MessageGroup> groups,
  }) = _TgMessageGroupQueue;

  factory TgMessageGroupQueue.fromJson(Map<String, dynamic> json) =>
      _$TgMessageGroupQueueFromJson(json);
}
