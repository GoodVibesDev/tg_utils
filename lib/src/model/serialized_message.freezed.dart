// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'serialized_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SerializedMessage {
  String? get text;
  List<TgUtilsFileDetails>? get files;
  List<List<SerializedCallback>>? get serializedMarkup;
  int? get replyToId;
  int? get editMessageId;
  String? get type;
  String? get additionalData;
  bool? get isSent;

  /// Create a copy of SerializedMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SerializedMessageCopyWith<SerializedMessage> get copyWith =>
      _$SerializedMessageCopyWithImpl<SerializedMessage>(
          this as SerializedMessage, _$identity);

  /// Serializes this SerializedMessage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SerializedMessage &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other.files, files) &&
            const DeepCollectionEquality()
                .equals(other.serializedMarkup, serializedMarkup) &&
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
      const DeepCollectionEquality().hash(files),
      const DeepCollectionEquality().hash(serializedMarkup),
      replyToId,
      editMessageId,
      type,
      additionalData,
      isSent);

  @override
  String toString() {
    return 'SerializedMessage(text: $text, files: $files, serializedMarkup: $serializedMarkup, replyToId: $replyToId, editMessageId: $editMessageId, type: $type, additionalData: $additionalData, isSent: $isSent)';
  }
}

/// @nodoc
abstract mixin class $SerializedMessageCopyWith<$Res> {
  factory $SerializedMessageCopyWith(
          SerializedMessage value, $Res Function(SerializedMessage) _then) =
      _$SerializedMessageCopyWithImpl;
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
class _$SerializedMessageCopyWithImpl<$Res>
    implements $SerializedMessageCopyWith<$Res> {
  _$SerializedMessageCopyWithImpl(this._self, this._then);

  final SerializedMessage _self;
  final $Res Function(SerializedMessage) _then;

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
    return _then(_self.copyWith(
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _self.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<TgUtilsFileDetails>?,
      serializedMarkup: freezed == serializedMarkup
          ? _self.serializedMarkup
          : serializedMarkup // ignore: cast_nullable_to_non_nullable
              as List<List<SerializedCallback>>?,
      replyToId: freezed == replyToId
          ? _self.replyToId
          : replyToId // ignore: cast_nullable_to_non_nullable
              as int?,
      editMessageId: freezed == editMessageId
          ? _self.editMessageId
          : editMessageId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalData: freezed == additionalData
          ? _self.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as String?,
      isSent: freezed == isSent
          ? _self.isSent
          : isSent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SerializedMessage implements SerializedMessage {
  const _SerializedMessage(
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
  factory _SerializedMessage.fromJson(Map<String, dynamic> json) =>
      _$SerializedMessageFromJson(json);

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

  /// Create a copy of SerializedMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SerializedMessageCopyWith<_SerializedMessage> get copyWith =>
      __$SerializedMessageCopyWithImpl<_SerializedMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SerializedMessageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SerializedMessage &&
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

  @override
  String toString() {
    return 'SerializedMessage(text: $text, files: $files, serializedMarkup: $serializedMarkup, replyToId: $replyToId, editMessageId: $editMessageId, type: $type, additionalData: $additionalData, isSent: $isSent)';
  }
}

/// @nodoc
abstract mixin class _$SerializedMessageCopyWith<$Res>
    implements $SerializedMessageCopyWith<$Res> {
  factory _$SerializedMessageCopyWith(
          _SerializedMessage value, $Res Function(_SerializedMessage) _then) =
      __$SerializedMessageCopyWithImpl;
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
class __$SerializedMessageCopyWithImpl<$Res>
    implements _$SerializedMessageCopyWith<$Res> {
  __$SerializedMessageCopyWithImpl(this._self, this._then);

  final _SerializedMessage _self;
  final $Res Function(_SerializedMessage) _then;

  /// Create a copy of SerializedMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_SerializedMessage(
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _self._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<TgUtilsFileDetails>?,
      serializedMarkup: freezed == serializedMarkup
          ? _self._serializedMarkup
          : serializedMarkup // ignore: cast_nullable_to_non_nullable
              as List<List<SerializedCallback>>?,
      replyToId: freezed == replyToId
          ? _self.replyToId
          : replyToId // ignore: cast_nullable_to_non_nullable
              as int?,
      editMessageId: freezed == editMessageId
          ? _self.editMessageId
          : editMessageId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalData: freezed == additionalData
          ? _self.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as String?,
      isSent: freezed == isSent
          ? _self.isSent
          : isSent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
