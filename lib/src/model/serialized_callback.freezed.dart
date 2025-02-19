// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'serialized_callback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SerializedCallback _$SerializedCallbackFromJson(Map<String, dynamic> json) {
  return _SerializedCallback.fromJson(json);
}

/// @nodoc
mixin _$SerializedCallback {
  String get text => throw _privateConstructorUsedError;
  String get callbackData => throw _privateConstructorUsedError;

  /// Serializes this SerializedCallback to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SerializedCallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SerializedCallbackCopyWith<SerializedCallback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SerializedCallbackCopyWith<$Res> {
  factory $SerializedCallbackCopyWith(
          SerializedCallback value, $Res Function(SerializedCallback) then) =
      _$SerializedCallbackCopyWithImpl<$Res, SerializedCallback>;
  @useResult
  $Res call({String text, String callbackData});
}

/// @nodoc
class _$SerializedCallbackCopyWithImpl<$Res, $Val extends SerializedCallback>
    implements $SerializedCallbackCopyWith<$Res> {
  _$SerializedCallbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SerializedCallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? callbackData = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      callbackData: null == callbackData
          ? _value.callbackData
          : callbackData // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SerializedCallbackImplCopyWith<$Res>
    implements $SerializedCallbackCopyWith<$Res> {
  factory _$$SerializedCallbackImplCopyWith(_$SerializedCallbackImpl value,
          $Res Function(_$SerializedCallbackImpl) then) =
      __$$SerializedCallbackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String callbackData});
}

/// @nodoc
class __$$SerializedCallbackImplCopyWithImpl<$Res>
    extends _$SerializedCallbackCopyWithImpl<$Res, _$SerializedCallbackImpl>
    implements _$$SerializedCallbackImplCopyWith<$Res> {
  __$$SerializedCallbackImplCopyWithImpl(_$SerializedCallbackImpl _value,
      $Res Function(_$SerializedCallbackImpl) _then)
      : super(_value, _then);

  /// Create a copy of SerializedCallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? callbackData = null,
  }) {
    return _then(_$SerializedCallbackImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      callbackData: null == callbackData
          ? _value.callbackData
          : callbackData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SerializedCallbackImpl implements _SerializedCallback {
  const _$SerializedCallbackImpl(
      {required this.text, required this.callbackData});

  factory _$SerializedCallbackImpl.fromJson(Map<String, dynamic> json) =>
      _$$SerializedCallbackImplFromJson(json);

  @override
  final String text;
  @override
  final String callbackData;

  @override
  String toString() {
    return 'SerializedCallback(text: $text, callbackData: $callbackData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SerializedCallbackImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.callbackData, callbackData) ||
                other.callbackData == callbackData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, callbackData);

  /// Create a copy of SerializedCallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SerializedCallbackImplCopyWith<_$SerializedCallbackImpl> get copyWith =>
      __$$SerializedCallbackImplCopyWithImpl<_$SerializedCallbackImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SerializedCallbackImplToJson(
      this,
    );
  }
}

abstract class _SerializedCallback implements SerializedCallback {
  const factory _SerializedCallback(
      {required final String text,
      required final String callbackData}) = _$SerializedCallbackImpl;

  factory _SerializedCallback.fromJson(Map<String, dynamic> json) =
      _$SerializedCallbackImpl.fromJson;

  @override
  String get text;
  @override
  String get callbackData;

  /// Create a copy of SerializedCallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SerializedCallbackImplCopyWith<_$SerializedCallbackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
