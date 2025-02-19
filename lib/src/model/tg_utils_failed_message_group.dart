import 'package:freezed_annotation/freezed_annotation.dart';

part 'tg_utils_failed_message_group.freezed.dart';

part 'tg_utils_failed_message_group.g.dart';

@freezed
class TgUtilsFailedMessageGroup with _$TgUtilsFailedMessageGroup {
  const factory TgUtilsFailedMessageGroup({
    required String group,
    required String message,
    required String exception,
  }) = _FailedMessageGroup;

  factory TgUtilsFailedMessageGroup.fromJson(Map<String, dynamic> json) =>
      _$TgUtilsFailedMessageGroupFromJson(json);
}
