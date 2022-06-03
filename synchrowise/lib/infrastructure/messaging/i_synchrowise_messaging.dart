import 'package:synchrowise/domain/messaging/synchrowise_message.dart';

abstract class ISynchrowiseMessaging {
  ///* Subscribes to the token stream and emits the `messaging token` of the current device.
  ///* The stream will emit the token once, and then emit the token again whenever the token is refreshed.
  Stream<String?> subscribeToken();

  ///* Subscribes to the message stream and emits the `SynchrowiseMessage` when a message is received.
  Stream<SynchrowiseMessage> onMessage();

  ///* Subscribes to the message stream and emits the `SynchrowiseMessage` when a message is opened in the app.
  Stream<SynchrowiseMessage> onMessageOpenedApp();

  ///* Returns the initial message that was received when the app was opened.
  Future<SynchrowiseMessage?> getInitialMessage();
}
