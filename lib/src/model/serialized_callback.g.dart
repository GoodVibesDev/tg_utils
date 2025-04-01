// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serialized_callback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SerializedCallback _$SerializedCallbackFromJson(Map<String, dynamic> json) =>
    _SerializedCallback(
      text: json['text'] as String,
      callbackData: json['callbackData'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$SerializedCallbackToJson(_SerializedCallback instance) =>
    <String, dynamic>{
      'text': instance.text,
      'callbackData': instance.callbackData,
      'url': instance.url,
    };
