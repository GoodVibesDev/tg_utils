import 'package:freezed_annotation/freezed_annotation.dart';

part 'serialized_callback.freezed.dart';

part 'serialized_callback.g.dart';

@freezed
sealed class SerializedCallback with _$SerializedCallback {
  const factory SerializedCallback({
    required String text,
    String? callbackData,
    String? url,
  }) = _SerializedCallback;

  factory SerializedCallback.fromJson(Map<String, dynamic> json) =>
      _$SerializedCallbackFromJson(json);
}
