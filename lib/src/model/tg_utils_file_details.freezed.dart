// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tg_utils_file_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
TgUtilsFileDetails _$TgUtilsFileDetailsFromJson(Map<String, dynamic> json) {
  return _FileDetails.fromJson(json);
}

/// @nodoc
mixin _$TgUtilsFileDetails {
  TgUtilsFileType get tgFileType;
  int? get id;
  String? get mediaGroupId;
  String? get fileId;
  String? get caption;
  String? get fileName;

  /// Create a copy of TgUtilsFileDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TgUtilsFileDetailsCopyWith<TgUtilsFileDetails> get copyWith =>
      _$TgUtilsFileDetailsCopyWithImpl<TgUtilsFileDetails>(
          this as TgUtilsFileDetails, _$identity);

  /// Serializes this TgUtilsFileDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TgUtilsFileDetails &&
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

  @override
  String toString() {
    return 'TgUtilsFileDetails(tgFileType: $tgFileType, id: $id, mediaGroupId: $mediaGroupId, fileId: $fileId, caption: $caption, fileName: $fileName)';
  }
}

/// @nodoc
abstract mixin class $TgUtilsFileDetailsCopyWith<$Res> {
  factory $TgUtilsFileDetailsCopyWith(
          TgUtilsFileDetails value, $Res Function(TgUtilsFileDetails) _then) =
      _$TgUtilsFileDetailsCopyWithImpl;
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
class _$TgUtilsFileDetailsCopyWithImpl<$Res>
    implements $TgUtilsFileDetailsCopyWith<$Res> {
  _$TgUtilsFileDetailsCopyWithImpl(this._self, this._then);

  final TgUtilsFileDetails _self;
  final $Res Function(TgUtilsFileDetails) _then;

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
    return _then(_self.copyWith(
      tgFileType: null == tgFileType
          ? _self.tgFileType
          : tgFileType // ignore: cast_nullable_to_non_nullable
              as TgUtilsFileType,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mediaGroupId: freezed == mediaGroupId
          ? _self.mediaGroupId
          : mediaGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
      fileId: freezed == fileId
          ? _self.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _self.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FileDetails implements TgUtilsFileDetails {
  const _FileDetails(
      {required this.tgFileType,
      this.id,
      this.mediaGroupId,
      this.fileId,
      this.caption,
      this.fileName});
  factory _FileDetails.fromJson(Map<String, dynamic> json) =>
      _$FileDetailsFromJson(json);

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

  /// Create a copy of TgUtilsFileDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FileDetailsCopyWith<_FileDetails> get copyWith =>
      __$FileDetailsCopyWithImpl<_FileDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FileDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FileDetails &&
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

  @override
  String toString() {
    return 'TgUtilsFileDetails(tgFileType: $tgFileType, id: $id, mediaGroupId: $mediaGroupId, fileId: $fileId, caption: $caption, fileName: $fileName)';
  }
}

/// @nodoc
abstract mixin class _$FileDetailsCopyWith<$Res>
    implements $TgUtilsFileDetailsCopyWith<$Res> {
  factory _$FileDetailsCopyWith(
          _FileDetails value, $Res Function(_FileDetails) _then) =
      __$FileDetailsCopyWithImpl;
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
class __$FileDetailsCopyWithImpl<$Res> implements _$FileDetailsCopyWith<$Res> {
  __$FileDetailsCopyWithImpl(this._self, this._then);

  final _FileDetails _self;
  final $Res Function(_FileDetails) _then;

  /// Create a copy of TgUtilsFileDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tgFileType = null,
    Object? id = freezed,
    Object? mediaGroupId = freezed,
    Object? fileId = freezed,
    Object? caption = freezed,
    Object? fileName = freezed,
  }) {
    return _then(_FileDetails(
      tgFileType: null == tgFileType
          ? _self.tgFileType
          : tgFileType // ignore: cast_nullable_to_non_nullable
              as TgUtilsFileType,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mediaGroupId: freezed == mediaGroupId
          ? _self.mediaGroupId
          : mediaGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
      fileId: freezed == fileId
          ? _self.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _self.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
