import 'package:teledart/model.dart';
import 'package:tg_utils/src/model/serialized_callback.dart';

extension SerializedMarkupExtension on List<List<SerializedCallback>> {
  InlineKeyboardMarkup toMarkup() {
    return InlineKeyboardMarkup(
      inlineKeyboard: fold([], (keyboardList, serializedCallbackList) {
        return keyboardList
          ..add(
            serializedCallbackList
                .map(
                  (serializedCallback) => InlineKeyboardButton(
                    text: serializedCallback.text,
                    callbackData: serializedCallback.callbackData,
                  ),
                )
                .toList(),
          );
      }),
    );
  }
}
