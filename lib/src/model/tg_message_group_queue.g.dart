// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tg_message_group_queue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TgMessageGroupQueue _$TgMessageGroupQueueFromJson(Map<String, dynamic> json) =>
    _TgMessageGroupQueue(
      groups: (json['groups'] as List<dynamic>)
          .map((e) => MessageGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TgMessageGroupQueueToJson(
        _TgMessageGroupQueue instance) =>
    <String, dynamic>{
      'groups': instance.groups,
    };
