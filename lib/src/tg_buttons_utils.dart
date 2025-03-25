import 'package:tg_utils/src/model/model.dart';

class TgButtonsUtils {
  static SerializedCallback userProfileButton(int tgId, {String? text}) {
    return SerializedCallback(
      text: text ?? 'Ссылка на пользователя',
      url: 'tg://user?id=$tgId',
    );
  }
}
