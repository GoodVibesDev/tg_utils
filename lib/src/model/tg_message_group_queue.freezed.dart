// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tg_message_group_queue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TgMessageGroupQueue _$TgMessageGroupQueueFromJson(Map<String, dynamic> json) {
  return _TgMessageGroupQueue.fromJson(json);
}

/// @nodoc
mixin _$TgMessageGroupQueue {
  List<MessageGroup> get groups => throw _privateConstructorUsedError;

  /// Serializes this TgMessageGroupQueue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TgMessageGroupQueue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TgMessageGroupQueueCopyWith<TgMessageGroupQueue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TgMessageGroupQueueCopyWith<$Res> {
  factory $TgMessageGroupQueueCopyWith(
          TgMessageGroupQueue value, $Res Function(TgMessageGroupQueue) then) =
      _$TgMessageGroupQueueCopyWithImpl<$Res, TgMessageGroupQueue>;
  @useResult
  $Res call({List<MessageGroup> groups});
}

/// @nodoc
class _$TgMessageGroupQueueCopyWithImpl<$Res, $Val extends TgMessageGroupQueue>
    implements $TgMessageGroupQueueCopyWith<$Res> {
  _$TgMessageGroupQueueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TgMessageGroupQueue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_value.copyWith(
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<MessageGroup>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TgMessageGroupQueueImplCopyWith<$Res>
    implements $TgMessageGroupQueueCopyWith<$Res> {
  factory _$$TgMessageGroupQueueImplCopyWith(_$TgMessageGroupQueueImpl value,
          $Res Function(_$TgMessageGroupQueueImpl) then) =
      __$$TgMessageGroupQueueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MessageGroup> groups});
}

/// @nodoc
class __$$TgMessageGroupQueueImplCopyWithImpl<$Res>
    extends _$TgMessageGroupQueueCopyWithImpl<$Res, _$TgMessageGroupQueueImpl>
    implements _$$TgMessageGroupQueueImplCopyWith<$Res> {
  __$$TgMessageGroupQueueImplCopyWithImpl(_$TgMessageGroupQueueImpl _value,
      $Res Function(_$TgMessageGroupQueueImpl) _then)
      : super(_value, _then);

  /// Create a copy of TgMessageGroupQueue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_$TgMessageGroupQueueImpl(
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<MessageGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TgMessageGroupQueueImpl implements _TgMessageGroupQueue {
  const _$TgMessageGroupQueueImpl({required final List<MessageGroup> groups})
      : _groups = groups;

  factory _$TgMessageGroupQueueImpl.fromJson(Map<String, dynamic> json) =>
      _$$TgMessageGroupQueueImplFromJson(json);

  final List<MessageGroup> _groups;
  @override
  List<MessageGroup> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'TgMessageGroupQueue(groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TgMessageGroupQueueImpl &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groups));

  /// Create a copy of TgMessageGroupQueue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TgMessageGroupQueueImplCopyWith<_$TgMessageGroupQueueImpl> get copyWith =>
      __$$TgMessageGroupQueueImplCopyWithImpl<_$TgMessageGroupQueueImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TgMessageGroupQueueImplToJson(
      this,
    );
  }
}

abstract class _TgMessageGroupQueue implements TgMessageGroupQueue {
  const factory _TgMessageGroupQueue(
      {required final List<MessageGroup> groups}) = _$TgMessageGroupQueueImpl;

  factory _TgMessageGroupQueue.fromJson(Map<String, dynamic> json) =
      _$TgMessageGroupQueueImpl.fromJson;

  @override
  List<MessageGroup> get groups;

  /// Create a copy of TgMessageGroupQueue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TgMessageGroupQueueImplCopyWith<_$TgMessageGroupQueueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
