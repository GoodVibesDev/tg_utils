import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tg_utils/src/model/tg_utils_file_type.dart';

part 'tg_utils_file_details.freezed.dart';

part 'tg_utils_file_details.g.dart';

@freezed
sealed class TgUtilsFileDetails with _$TgUtilsFileDetails {
  const factory TgUtilsFileDetails({
    required TgUtilsFileType tgFileType,
    int? id,
    String? mediaGroupId,
    String? fileId,
    String? caption,
    String? fileName,
  }) = _FileDetails;

  factory TgUtilsFileDetails.fromJson(Map<String, dynamic> json) =>
      _$TgUtilsFileDetailsFromJson(json);
}
