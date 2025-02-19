import 'dart:async';

import 'package:tg_utils/tg_utils.dart';

// ignore: one_member_abstracts
abstract class AbstractMessageSender {
  Future<void> send({List<MessageGroup>? messageGroups});
}
