// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serialized_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SerializedMessageImpl _$$SerializedMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$SerializedMessageImpl(
      text: json['text'] as String?,
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => TgUtilsFileDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      serializedMarkup: (json['serializedMarkup'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>)
              .map(
                  (e) => SerializedCallback.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
      replyToId: (json['replyToId'] as num?)?.toInt(),
      editMessageId: (json['editMessageId'] as num?)?.toInt(),
      type: json['type'] as String?,
      additionalData: json['additionalData'] as String?,
      isSent: json['isSent'] as bool?,
    );

Map<String, dynamic> _$$SerializedMessageImplToJson(
        _$SerializedMessageImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'files': instance.files,
      'serializedMarkup': instance.serializedMarkup,
      'replyToId': instance.replyToId,
      'editMessageId': instance.editMessageId,
      'type': instance.type,
      'additionalData': instance.additionalData,
      'isSent': instance.isSent,
    };
