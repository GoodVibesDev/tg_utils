// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tg_utils_failed_message_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
TgUtilsFailedMessageGroup _$TgUtilsFailedMessageGroupFromJson(
    Map<String, dynamic> json) {
  return _FailedMessageGroup.fromJson(json);
}

/// @nodoc
mixin _$TgUtilsFailedMessageGroup {
  String get group;
  String get message;
  String get exception;

  /// Create a copy of TgUtilsFailedMessageGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TgUtilsFailedMessageGroupCopyWith<TgUtilsFailedMessageGroup> get copyWith =>
      _$TgUtilsFailedMessageGroupCopyWithImpl<TgUtilsFailedMessageGroup>(
          this as TgUtilsFailedMessageGroup, _$identity);

  /// Serializes this TgUtilsFailedMessageGroup to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TgUtilsFailedMessageGroup &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, group, message, exception);

  @override
  String toString() {
    return 'TgUtilsFailedMessageGroup(group: $group, message: $message, exception: $exception)';
  }
}

/// @nodoc
abstract mixin class $TgUtilsFailedMessageGroupCopyWith<$Res> {
  factory $TgUtilsFailedMessageGroupCopyWith(TgUtilsFailedMessageGroup value,
          $Res Function(TgUtilsFailedMessageGroup) _then) =
      _$TgUtilsFailedMessageGroupCopyWithImpl;
  @useResult
  $Res call({String group, String message, String exception});
}

/// @nodoc
class _$TgUtilsFailedMessageGroupCopyWithImpl<$Res>
    implements $TgUtilsFailedMessageGroupCopyWith<$Res> {
  _$TgUtilsFailedMessageGroupCopyWithImpl(this._self, this._then);

  final TgUtilsFailedMessageGroup _self;
  final $Res Function(TgUtilsFailedMessageGroup) _then;

  /// Create a copy of TgUtilsFailedMessageGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? message = null,
    Object? exception = null,
  }) {
    return _then(_self.copyWith(
      group: null == group
          ? _self.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      exception: null == exception
          ? _self.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FailedMessageGroup implements TgUtilsFailedMessageGroup {
  const _FailedMessageGroup(
      {required this.group, required this.message, required this.exception});
  factory _FailedMessageGroup.fromJson(Map<String, dynamic> json) =>
      _$FailedMessageGroupFromJson(json);

  @override
  final String group;
  @override
  final String message;
  @override
  final String exception;

  /// Create a copy of TgUtilsFailedMessageGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FailedMessageGroupCopyWith<_FailedMessageGroup> get copyWith =>
      __$FailedMessageGroupCopyWithImpl<_FailedMessageGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FailedMessageGroupToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FailedMessageGroup &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, group, message, exception);

  @override
  String toString() {
    return 'TgUtilsFailedMessageGroup(group: $group, message: $message, exception: $exception)';
  }
}

/// @nodoc
abstract mixin class _$FailedMessageGroupCopyWith<$Res>
    implements $TgUtilsFailedMessageGroupCopyWith<$Res> {
  factory _$FailedMessageGroupCopyWith(
          _FailedMessageGroup value, $Res Function(_FailedMessageGroup) _then) =
      __$FailedMessageGroupCopyWithImpl;
  @override
  @useResult
  $Res call({String group, String message, String exception});
}

/// @nodoc
class __$FailedMessageGroupCopyWithImpl<$Res>
    implements _$FailedMessageGroupCopyWith<$Res> {
  __$FailedMessageGroupCopyWithImpl(this._self, this._then);

  final _FailedMessageGroup _self;
  final $Res Function(_FailedMessageGroup) _then;

  /// Create a copy of TgUtilsFailedMessageGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? group = null,
    Object? message = null,
    Object? exception = null,
  }) {
    return _then(_FailedMessageGroup(
      group: null == group
          ? _self.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      exception: null == exception
          ? _self.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
