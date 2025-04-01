// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'serialized_callback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SerializedCallback {
  String get text;
  String? get callbackData;
  String? get url;

  /// Create a copy of SerializedCallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SerializedCallbackCopyWith<SerializedCallback> get copyWith =>
      _$SerializedCallbackCopyWithImpl<SerializedCallback>(
          this as SerializedCallback, _$identity);

  /// Serializes this SerializedCallback to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SerializedCallback &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.callbackData, callbackData) ||
                other.callbackData == callbackData) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, callbackData, url);

  @override
  String toString() {
    return 'SerializedCallback(text: $text, callbackData: $callbackData, url: $url)';
  }
}

/// @nodoc
abstract mixin class $SerializedCallbackCopyWith<$Res> {
  factory $SerializedCallbackCopyWith(
          SerializedCallback value, $Res Function(SerializedCallback) _then) =
      _$SerializedCallbackCopyWithImpl;
  @useResult
  $Res call({String text, String? callbackData, String? url});
}

/// @nodoc
class _$SerializedCallbackCopyWithImpl<$Res>
    implements $SerializedCallbackCopyWith<$Res> {
  _$SerializedCallbackCopyWithImpl(this._self, this._then);

  final SerializedCallback _self;
  final $Res Function(SerializedCallback) _then;

  /// Create a copy of SerializedCallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? callbackData = freezed,
    Object? url = freezed,
  }) {
    return _then(_self.copyWith(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      callbackData: freezed == callbackData
          ? _self.callbackData
          : callbackData // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SerializedCallback implements SerializedCallback {
  const _SerializedCallback({required this.text, this.callbackData, this.url});
  factory _SerializedCallback.fromJson(Map<String, dynamic> json) =>
      _$SerializedCallbackFromJson(json);

  @override
  final String text;
  @override
  final String? callbackData;
  @override
  final String? url;

  /// Create a copy of SerializedCallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SerializedCallbackCopyWith<_SerializedCallback> get copyWith =>
      __$SerializedCallbackCopyWithImpl<_SerializedCallback>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SerializedCallbackToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SerializedCallback &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.callbackData, callbackData) ||
                other.callbackData == callbackData) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, callbackData, url);

  @override
  String toString() {
    return 'SerializedCallback(text: $text, callbackData: $callbackData, url: $url)';
  }
}

/// @nodoc
abstract mixin class _$SerializedCallbackCopyWith<$Res>
    implements $SerializedCallbackCopyWith<$Res> {
  factory _$SerializedCallbackCopyWith(
          _SerializedCallback value, $Res Function(_SerializedCallback) _then) =
      __$SerializedCallbackCopyWithImpl;
  @override
  @useResult
  $Res call({String text, String? callbackData, String? url});
}

/// @nodoc
class __$SerializedCallbackCopyWithImpl<$Res>
    implements _$SerializedCallbackCopyWith<$Res> {
  __$SerializedCallbackCopyWithImpl(this._self, this._then);

  final _SerializedCallback _self;
  final $Res Function(_SerializedCallback) _then;

  /// Create a copy of SerializedCallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = null,
    Object? callbackData = freezed,
    Object? url = freezed,
  }) {
    return _then(_SerializedCallback(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      callbackData: freezed == callbackData
          ? _self.callbackData
          : callbackData // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
