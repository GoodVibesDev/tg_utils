// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tg_utils_failed_message_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FailedMessageGroupImpl _$$FailedMessageGroupImplFromJson(
        Map<String, dynamic> json) =>
    _$FailedMessageGroupImpl(
      group: json['group'] as String,
      message: json['message'] as String,
      exception: json['exception'] as String,
    );

Map<String, dynamic> _$$FailedMessageGroupImplToJson(
        _$FailedMessageGroupImpl instance) =>
    <String, dynamic>{
      'group': instance.group,
      'message': instance.message,
      'exception': instance.exception,
    };
