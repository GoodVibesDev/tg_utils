// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tg_message_group_queue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TgMessageGroupQueueImpl _$$TgMessageGroupQueueImplFromJson(
        Map<String, dynamic> json) =>
    _$TgMessageGroupQueueImpl(
      groups: (json['groups'] as List<dynamic>)
          .map((e) => MessageGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TgMessageGroupQueueImplToJson(
        _$TgMessageGroupQueueImpl instance) =>
    <String, dynamic>{
      'groups': instance.groups,
    };
