import 'package:tg_utils/tg_utils.dart';

abstract class InnerMessageSenderCache {
  Future<void> putQueue(String key, TgMessageGroupQueue object);

  Future<TgMessageGroupQueue?> getQueue(String key);

  Future<void> invalidateQueue(String key);
}
