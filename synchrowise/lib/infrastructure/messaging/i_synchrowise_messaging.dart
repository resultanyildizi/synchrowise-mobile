import 'package:synchrowise/domain/messaging/synchrowise_message.dart';

abstract class ISynchrowiseMessaging {
  Stream<String?> subscribeToken();
  Stream<SynchrowiseMessage> onMessage();
  Stream<SynchrowiseMessage> onMessageOpenedApp();
  Future<SynchrowiseMessage?> getInitialMessage();
}
