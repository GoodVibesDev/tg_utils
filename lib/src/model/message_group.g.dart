// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageGroup _$MessageGroupFromJson(Map<String, dynamic> json) =>
    _MessageGroup(
      messages: (json['messages'] as List<dynamic>)
          .map((e) => SerializedMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      chatId: (json['chatId'] as num).toInt(),
      failCounter: (json['failCounter'] as num?)?.toInt(),
      priority: (json['priority'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MessageGroupToJson(_MessageGroup instance) =>
    <String, dynamic>{
      'messages': instance.messages,
      'chatId': instance.chatId,
      'failCounter': instance.failCounter,
      'priority': instance.priority,
    };
