// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'serialized_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SerializedMessage _$SerializedMessageFromJson(Map<String, dynamic> json) {
  return _SerializedMessage.fromJson(json);
}

/// @nodoc
mixin _$SerializedMessage {
  String? get text => throw _privateConstructorUsedError;
  List<TgUtilsFileDetails>? get files => throw _privateConstructorUsedError;
  List<List<SerializedCallback>>? get serializedMarkup =>
      throw _privateConstructorUsedError;
  int? get replyToId => throw _privateConstructorUsedError;
  int? get editMessageId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get additionalData => throw _privateConstructorUsedError;
  bool? get isSent => throw _privateConstructorUsedError;

  /// Serializes this SerializedMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SerializedMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SerializedMessageCopyWith<SerializedMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SerializedMessageCopyWith<$Res> {
  factory $SerializedMessageCopyWith(
          SerializedMessage value, $Res Function(SerializedMessage) then) =
      _$SerializedMessageCopyWithImpl<$Res, SerializedMessage>;
  @useResult
  $Res call(
      {String? text,
      List<TgUtilsFileDetails>? files,
      List<List<SerializedCallback>>? serializedMarkup,
      int? replyToId,
      int? editMessageId,
      String? type,
      String? additionalData,
      bool? isSent});
}

/// @nodoc
class _$SerializedMessageCopyWithImpl<$Res, $Val extends SerializedMessage>
    implements $SerializedMessageCopyWith<$Res> {
  _$SerializedMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SerializedMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? files = freezed,
    Object? serializedMarkup = freezed,
    Object? replyToId = freezed,
    Object? editMessageId = freezed,
    Object? type = freezed,
    Object? additionalData = freezed,
    Object? isSent = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<TgUtilsFileDetails>?,
      serializedMarkup: freezed == serializedMarkup
          ? _value.serializedMarkup
          : serializedMarkup // ignore: cast_nullable_to_non_nullable
              as List<List<SerializedCallback>>?,
      replyToId: freezed == replyToId
          ? _value.replyToId
          : replyToId // ignore: cast_nullable_to_non_nullable
              as int?,
      editMessageId: freezed == editMessageId
          ? _value.editMessageId
          : editMessageId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalData: freezed == additionalData
          ? _value.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as String?,
      isSent: freezed == isSent
          ? _value.isSent
          : isSent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SerializedMessageImplCopyWith<$Res>
    implements $SerializedMessageCopyWith<$Res> {
  factory _$$SerializedMessageImplCopyWith(_$SerializedMessageImpl value,
          $Res Function(_$SerializedMessageImpl) then) =
      __$$SerializedMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? text,
      List<TgUtilsFileDetails>? files,
      List<List<SerializedCallback>>? serializedMarkup,
      int? replyToId,
      int? editMessageId,
      String? type,
      String? additionalData,
      bool? isSent});
}

/// @nodoc
class __$$SerializedMessageImplCopyWithImpl<$Res>
    extends _$SerializedMessageCopyWithImpl<$Res, _$SerializedMessageImpl>
    implements _$$SerializedMessageImplCopyWith<$Res> {
  __$$SerializedMessageImplCopyWithImpl(_$SerializedMessageImpl _value,
      $Res Function(_$SerializedMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of SerializedMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? files = freezed,
    Object? serializedMarkup = freezed,
    Object? replyToId = freezed,
    Object? editMessageId = freezed,
    Object? type = freezed,
    Object? additionalData = freezed,
    Object? isSent = freezed,
  }) {
    return _then(_$SerializedMessageImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<TgUtilsFileDetails>?,
      serializedMarkup: freezed == serializedMarkup
          ? _value._serializedMarkup
          : serializedMarkup // ignore: cast_nullable_to_non_nullable
              as List<List<SerializedCallback>>?,
      replyToId: freezed == replyToId
          ? _value.replyToId
          : replyToId // ignore: cast_nullable_to_non_nullable
              as int?,
      editMessageId: freezed == editMessageId
          ? _value.editMessageId
          : editMessageId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalData: freezed == additionalData
          ? _value.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as String?,
      isSent: freezed == isSent
          ? _value.isSent
          : isSent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SerializedMessageImpl implements _SerializedMessage {
  const _$SerializedMessageImpl(
      {this.text,
      final List<TgUtilsFileDetails>? files,
      final List<List<SerializedCallback>>? serializedMarkup,
      this.replyToId,
      this.editMessageId,
      this.type,
      this.additionalData,
      this.isSent})
      : _files = files,
        _serializedMarkup = serializedMarkup;

  factory _$SerializedMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$SerializedMessageImplFromJson(json);

  @override
  final String? text;
  final List<TgUtilsFileDetails>? _files;
  @override
  List<TgUtilsFileDetails>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<List<SerializedCallback>>? _serializedMarkup;
  @override
  List<List<SerializedCallback>>? get serializedMarkup {
    final value = _serializedMarkup;
    if (value == null) return null;
    if (_serializedMarkup is EqualUnmodifiableListView)
      return _serializedMarkup;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? replyToId;
  @override
  final int? editMessageId;
  @override
  final String? type;
  @override
  final String? additionalData;
  @override
  final bool? isSent;

  @override
  String toString() {
    return 'SerializedMessage(text: $text, files: $files, serializedMarkup: $serializedMarkup, replyToId: $replyToId, editMessageId: $editMessageId, type: $type, additionalData: $additionalData, isSent: $isSent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SerializedMessageImpl &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            const DeepCollectionEquality()
                .equals(other._serializedMarkup, _serializedMarkup) &&
            (identical(other.replyToId, replyToId) ||
                other.replyToId == replyToId) &&
            (identical(other.editMessageId, editMessageId) ||
                other.editMessageId == editMessageId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.additionalData, additionalData) ||
                other.additionalData == additionalData) &&
            (identical(other.isSent, isSent) || other.isSent == isSent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      text,
      const DeepCollectionEquality().hash(_files),
      const DeepCollectionEquality().hash(_serializedMarkup),
      replyToId,
      editMessageId,
      type,
      additionalData,
      isSent);

  /// Create a copy of SerializedMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SerializedMessageImplCopyWith<_$SerializedMessageImpl> get copyWith =>
      __$$SerializedMessageImplCopyWithImpl<_$SerializedMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SerializedMessageImplToJson(
      this,
    );
  }
}

abstract class _SerializedMessage implements SerializedMessage {
  const factory _SerializedMessage(
      {final String? text,
      final List<TgUtilsFileDetails>? files,
      final List<List<SerializedCallback>>? serializedMarkup,
      final int? replyToId,
      final int? editMessageId,
      final String? type,
      final String? additionalData,
      final bool? isSent}) = _$SerializedMessageImpl;

  factory _SerializedMessage.fromJson(Map<String, dynamic> json) =
      _$SerializedMessageImpl.fromJson;

  @override
  String? get text;
  @override
  List<TgUtilsFileDetails>? get files;
  @override
  List<List<SerializedCallback>>? get serializedMarkup;
  @override
  int? get replyToId;
  @override
  int? get editMessageId;
  @override
  String? get type;
  @override
  String? get additionalData;
  @override
  bool? get isSent;

  /// Create a copy of SerializedMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SerializedMessageImplCopyWith<_$SerializedMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
