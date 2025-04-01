// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tg_utils_file_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FileDetails _$FileDetailsFromJson(Map<String, dynamic> json) => _FileDetails(
      tgFileType: $enumDecode(_$TgUtilsFileTypeEnumMap, json['tgFileType']),
      id: (json['id'] as num?)?.toInt(),
      mediaGroupId: json['mediaGroupId'] as String?,
      fileId: json['fileId'] as String?,
      caption: json['caption'] as String?,
      fileName: json['fileName'] as String?,
    );

Map<String, dynamic> _$FileDetailsToJson(_FileDetails instance) =>
    <String, dynamic>{
      'tgFileType': _$TgUtilsFileTypeEnumMap[instance.tgFileType]!,
      'id': instance.id,
      'mediaGroupId': instance.mediaGroupId,
      'fileId': instance.fileId,
      'caption': instance.caption,
      'fileName': instance.fileName,
    };

const _$TgUtilsFileTypeEnumMap = {
  TgUtilsFileType.photo: 'photo',
  TgUtilsFileType.document: 'document',
  TgUtilsFileType.video: 'video',
  TgUtilsFileType.voice: 'voice',
  TgUtilsFileType.audio: 'audio',
  TgUtilsFileType.videoNote: 'videoNote',
  TgUtilsFileType.sticker: 'sticker',
};
