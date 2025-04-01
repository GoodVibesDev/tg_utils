import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tg_utils/src/model/serialized_callback.dart';
import 'package:tg_utils/src/model/tg_utils_file_details.dart';

part 'serialized_message.freezed.dart';
part 'serialized_message.g.dart';

@freezed
sealed class SerializedMessage with _$SerializedMessage {
  const factory SerializedMessage({
    String? text,
    List<TgUtilsFileDetails>? files,
    List<List<SerializedCallback>>? serializedMarkup,
    int? replyToId,
    int? editMessageId,
    String? type,
    String? additionalData,
    bool? isSent,
  }) = _SerializedMessage;

  factory SerializedMessage.fromJson(Map<String, dynamic> json) =>
      _$SerializedMessageFromJson(json);
}
