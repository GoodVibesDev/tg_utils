// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tg_utils_failed_message_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TgUtilsFailedMessageGroup _$TgUtilsFailedMessageGroupFromJson(
    Map<String, dynamic> json) {
  return _FailedMessageGroup.fromJson(json);
}

/// @nodoc
mixin _$TgUtilsFailedMessageGroup {
  String get group => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get exception => throw _privateConstructorUsedError;

  /// Serializes this TgUtilsFailedMessageGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TgUtilsFailedMessageGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TgUtilsFailedMessageGroupCopyWith<TgUtilsFailedMessageGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TgUtilsFailedMessageGroupCopyWith<$Res> {
  factory $TgUtilsFailedMessageGroupCopyWith(TgUtilsFailedMessageGroup value,
          $Res Function(TgUtilsFailedMessageGroup) then) =
      _$TgUtilsFailedMessageGroupCopyWithImpl<$Res, TgUtilsFailedMessageGroup>;
  @useResult
  $Res call({String group, String message, String exception});
}

/// @nodoc
class _$TgUtilsFailedMessageGroupCopyWithImpl<$Res,
        $Val extends TgUtilsFailedMessageGroup>
    implements $TgUtilsFailedMessageGroupCopyWith<$Res> {
  _$TgUtilsFailedMessageGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TgUtilsFailedMessageGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? message = null,
    Object? exception = null,
  }) {
    return _then(_value.copyWith(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FailedMessageGroupImplCopyWith<$Res>
    implements $TgUtilsFailedMessageGroupCopyWith<$Res> {
  factory _$$FailedMessageGroupImplCopyWith(_$FailedMessageGroupImpl value,
          $Res Function(_$FailedMessageGroupImpl) then) =
      __$$FailedMessageGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String group, String message, String exception});
}

/// @nodoc
class __$$FailedMessageGroupImplCopyWithImpl<$Res>
    extends _$TgUtilsFailedMessageGroupCopyWithImpl<$Res,
        _$FailedMessageGroupImpl>
    implements _$$FailedMessageGroupImplCopyWith<$Res> {
  __$$FailedMessageGroupImplCopyWithImpl(_$FailedMessageGroupImpl _value,
      $Res Function(_$FailedMessageGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of TgUtilsFailedMessageGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? message = null,
    Object? exception = null,
  }) {
    return _then(_$FailedMessageGroupImpl(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FailedMessageGroupImpl implements _FailedMessageGroup {
  const _$FailedMessageGroupImpl(
      {required this.group, required this.message, required this.exception});

  factory _$FailedMessageGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailedMessageGroupImplFromJson(json);

  @override
  final String group;
  @override
  final String message;
  @override
  final String exception;

  @override
  String toString() {
    return 'TgUtilsFailedMessageGroup(group: $group, message: $message, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedMessageGroupImpl &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, group, message, exception);

  /// Create a copy of TgUtilsFailedMessageGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedMessageGroupImplCopyWith<_$FailedMessageGroupImpl> get copyWith =>
      __$$FailedMessageGroupImplCopyWithImpl<_$FailedMessageGroupImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FailedMessageGroupImplToJson(
      this,
    );
  }
}

abstract class _FailedMessageGroup implements TgUtilsFailedMessageGroup {
  const factory _FailedMessageGroup(
      {required final String group,
      required final String message,
      required final String exception}) = _$FailedMessageGroupImpl;

  factory _FailedMessageGroup.fromJson(Map<String, dynamic> json) =
      _$FailedMessageGroupImpl.fromJson;

  @override
  String get group;
  @override
  String get message;
  @override
  String get exception;

  /// Create a copy of TgUtilsFailedMessageGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedMessageGroupImplCopyWith<_$FailedMessageGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
