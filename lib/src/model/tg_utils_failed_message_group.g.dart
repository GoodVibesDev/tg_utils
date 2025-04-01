// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tg_utils_failed_message_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FailedMessageGroup _$FailedMessageGroupFromJson(Map<String, dynamic> json) =>
    _FailedMessageGroup(
      group: json['group'] as String,
      message: json['message'] as String,
      exception: json['exception'] as String,
    );

Map<String, dynamic> _$FailedMessageGroupToJson(_FailedMessageGroup instance) =>
    <String, dynamic>{
      'group': instance.group,
      'message': instance.message,
      'exception': instance.exception,
    };
