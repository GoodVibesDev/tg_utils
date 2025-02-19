enum TgUtilsFileType {
  photo,
  document,
  video,
  voice,
  audio,
  videoNote,
  sticker;

  static TgUtilsFileType fromJson(String value) =>
      TgUtilsFileType.values.firstWhere((e) => e.name == value);
}
