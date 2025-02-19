import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tg_utils/src/model/serialized_message.dart';

part 'message_group.freezed.dart';
part 'message_group.g.dart';

@freezed
class MessageGroup with _$MessageGroup {
  const factory MessageGroup({
    required List<SerializedMessage> messages,
    required int chatId,
    int? failCounter,
    int? priority,
  }) = _MessageGroup;

  factory MessageGroup.fromJson(Map<String, dynamic> json) =>
      _$MessageGroupFromJson(json);
}
