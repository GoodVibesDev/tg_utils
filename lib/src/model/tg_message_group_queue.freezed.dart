// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tg_message_group_queue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TgMessageGroupQueue {
  List<MessageGroup> get groups;

  /// Create a copy of TgMessageGroupQueue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TgMessageGroupQueueCopyWith<TgMessageGroupQueue> get copyWith =>
      _$TgMessageGroupQueueCopyWithImpl<TgMessageGroupQueue>(
          this as TgMessageGroupQueue, _$identity);

  /// Serializes this TgMessageGroupQueue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TgMessageGroupQueue &&
            const DeepCollectionEquality().equals(other.groups, groups));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groups));

  @override
  String toString() {
    return 'TgMessageGroupQueue(groups: $groups)';
  }
}

/// @nodoc
abstract mixin class $TgMessageGroupQueueCopyWith<$Res> {
  factory $TgMessageGroupQueueCopyWith(
          TgMessageGroupQueue value, $Res Function(TgMessageGroupQueue) _then) =
      _$TgMessageGroupQueueCopyWithImpl;
  @useResult
  $Res call({List<MessageGroup> groups});
}

/// @nodoc
class _$TgMessageGroupQueueCopyWithImpl<$Res>
    implements $TgMessageGroupQueueCopyWith<$Res> {
  _$TgMessageGroupQueueCopyWithImpl(this._self, this._then);

  final TgMessageGroupQueue _self;
  final $Res Function(TgMessageGroupQueue) _then;

  /// Create a copy of TgMessageGroupQueue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_self.copyWith(
      groups: null == groups
          ? _self.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<MessageGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TgMessageGroupQueue implements TgMessageGroupQueue {
  const _TgMessageGroupQueue({required final List<MessageGroup> groups})
      : _groups = groups;
  factory _TgMessageGroupQueue.fromJson(Map<String, dynamic> json) =>
      _$TgMessageGroupQueueFromJson(json);

  final List<MessageGroup> _groups;
  @override
  List<MessageGroup> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  /// Create a copy of TgMessageGroupQueue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TgMessageGroupQueueCopyWith<_TgMessageGroupQueue> get copyWith =>
      __$TgMessageGroupQueueCopyWithImpl<_TgMessageGroupQueue>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TgMessageGroupQueueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TgMessageGroupQueue &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groups));

  @override
  String toString() {
    return 'TgMessageGroupQueue(groups: $groups)';
  }
}

/// @nodoc
abstract mixin class _$TgMessageGroupQueueCopyWith<$Res>
    implements $TgMessageGroupQueueCopyWith<$Res> {
  factory _$TgMessageGroupQueueCopyWith(_TgMessageGroupQueue value,
          $Res Function(_TgMessageGroupQueue) _then) =
      __$TgMessageGroupQueueCopyWithImpl;
  @override
  @useResult
  $Res call({List<MessageGroup> groups});
}

/// @nodoc
class __$TgMessageGroupQueueCopyWithImpl<$Res>
    implements _$TgMessageGroupQueueCopyWith<$Res> {
  __$TgMessageGroupQueueCopyWithImpl(this._self, this._then);

  final _TgMessageGroupQueue _self;
  final $Res Function(_TgMessageGroupQueue) _then;

  /// Create a copy of TgMessageGroupQueue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? groups = null,
  }) {
    return _then(_TgMessageGroupQueue(
      groups: null == groups
          ? _self._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<MessageGroup>,
    ));
  }
}

// dart format on
