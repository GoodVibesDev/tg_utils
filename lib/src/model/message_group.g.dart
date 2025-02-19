// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageGroupImpl _$$MessageGroupImplFromJson(Map<String, dynamic> json) =>
    _$MessageGroupImpl(
      messages: (json['messages'] as List<dynamic>)
          .map((e) => SerializedMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      chatId: (json['chatId'] as num).toInt(),
      failCounter: (json['failCounter'] as num?)?.toInt(),
      priority: (json['priority'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MessageGroupImplToJson(_$MessageGroupImpl instance) =>
    <String, dynamic>{
      'messages': instance.messages,
      'chatId': instance.chatId,
      'failCounter': instance.failCounter,
      'priority': instance.priority,
    };
