// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tg_utils_file_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TgUtilsFileDetails _$TgUtilsFileDetailsFromJson(Map<String, dynamic> json) {
  return _FileDetails.fromJson(json);
}

/// @nodoc
mixin _$TgUtilsFileDetails {
  TgUtilsFileType get tgFileType => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get mediaGroupId => throw _privateConstructorUsedError;
  String? get fileId => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;

  /// Serializes this TgUtilsFileDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TgUtilsFileDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TgUtilsFileDetailsCopyWith<TgUtilsFileDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TgUtilsFileDetailsCopyWith<$Res> {
  factory $TgUtilsFileDetailsCopyWith(
          TgUtilsFileDetails value, $Res Function(TgUtilsFileDetails) then) =
      _$TgUtilsFileDetailsCopyWithImpl<$Res, TgUtilsFileDetails>;
  @useResult
  $Res call(
      {TgUtilsFileType tgFileType,
      int? id,
      String? mediaGroupId,
      String? fileId,
      String? caption,
      String? fileName});
}

/// @nodoc
class _$TgUtilsFileDetailsCopyWithImpl<$Res, $Val extends TgUtilsFileDetails>
    implements $TgUtilsFileDetailsCopyWith<$Res> {
  _$TgUtilsFileDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TgUtilsFileDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tgFileType = null,
    Object? id = freezed,
    Object? mediaGroupId = freezed,
    Object? fileId = freezed,
    Object? caption = freezed,
    Object? fileName = freezed,
  }) {
    return _then(_value.copyWith(
      tgFileType: null == tgFileType
          ? _value.tgFileType
          : tgFileType // ignore: cast_nullable_to_non_nullable
              as TgUtilsFileType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mediaGroupId: freezed == mediaGroupId
          ? _value.mediaGroupId
          : mediaGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
      fileId: freezed == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileDetailsImplCopyWith<$Res>
    implements $TgUtilsFileDetailsCopyWith<$Res> {
  factory _$$FileDetailsImplCopyWith(
          _$FileDetailsImpl value, $Res Function(_$FileDetailsImpl) then) =
      __$$FileDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TgUtilsFileType tgFileType,
      int? id,
      String? mediaGroupId,
      String? fileId,
      String? caption,
      String? fileName});
}

/// @nodoc
class __$$FileDetailsImplCopyWithImpl<$Res>
    extends _$TgUtilsFileDetailsCopyWithImpl<$Res, _$FileDetailsImpl>
    implements _$$FileDetailsImplCopyWith<$Res> {
  __$$FileDetailsImplCopyWithImpl(
      _$FileDetailsImpl _value, $Res Function(_$FileDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TgUtilsFileDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tgFileType = null,
    Object? id = freezed,
    Object? mediaGroupId = freezed,
    Object? fileId = freezed,
    Object? caption = freezed,
    Object? fileName = freezed,
  }) {
    return _then(_$FileDetailsImpl(
      tgFileType: null == tgFileType
          ? _value.tgFileType
          : tgFileType // ignore: cast_nullable_to_non_nullable
              as TgUtilsFileType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mediaGroupId: freezed == mediaGroupId
          ? _value.mediaGroupId
          : mediaGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
      fileId: freezed == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileDetailsImpl implements _FileDetails {
  const _$FileDetailsImpl(
      {required this.tgFileType,
      this.id,
      this.mediaGroupId,
      this.fileId,
      this.caption,
      this.fileName});

  factory _$FileDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileDetailsImplFromJson(json);

  @override
  final TgUtilsFileType tgFileType;
  @override
  final int? id;
  @override
  final String? mediaGroupId;
  @override
  final String? fileId;
  @override
  final String? caption;
  @override
  final String? fileName;

  @override
  String toString() {
    return 'TgUtilsFileDetails(tgFileType: $tgFileType, id: $id, mediaGroupId: $mediaGroupId, fileId: $fileId, caption: $caption, fileName: $fileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileDetailsImpl &&
            (identical(other.tgFileType, tgFileType) ||
                other.tgFileType == tgFileType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mediaGroupId, mediaGroupId) ||
                other.mediaGroupId == mediaGroupId) &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, tgFileType, id, mediaGroupId, fileId, caption, fileName);

  /// Create a copy of TgUtilsFileDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileDetailsImplCopyWith<_$FileDetailsImpl> get copyWith =>
      __$$FileDetailsImplCopyWithImpl<_$FileDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileDetailsImplToJson(
      this,
    );
  }
}

abstract class _FileDetails implements TgUtilsFileDetails {
  const factory _FileDetails(
      {required final TgUtilsFileType tgFileType,
      final int? id,
      final String? mediaGroupId,
      final String? fileId,
      final String? caption,
      final String? fileName}) = _$FileDetailsImpl;

  factory _FileDetails.fromJson(Map<String, dynamic> json) =
      _$FileDetailsImpl.fromJson;

  @override
  TgUtilsFileType get tgFileType;
  @override
  int? get id;
  @override
  String? get mediaGroupId;
  @override
  String? get fileId;
  @override
  String? get caption;
  @override
  String? get fileName;

  /// Create a copy of TgUtilsFileDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileDetailsImplCopyWith<_$FileDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
