import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:synchrowise/domain/messaging/synchrowise_message.dart';
import 'package:synchrowise/infrastructure/messaging/i_synchrowise_messaging.dart';

class SynchrowiseFirebaseMessaging extends ISynchrowiseMessaging {
  SynchrowiseFirebaseMessaging();

  @override
  Stream<String?> subscribeToken() async* {
    yield await FirebaseMessaging.instance.getToken();
    yield* FirebaseMessaging.instance.onTokenRefresh.map((token) => token);
  }

  @override
  Stream<SynchrowiseMessage> onMessage() {
    return FirebaseMessaging.onMessage.map((message) {
      return SynchrowiseMessage.fromRemoteMessage(message);
    });
  }

  @override
  Stream<SynchrowiseMessage> onMessageOpenedApp() {
    return FirebaseMessaging.onMessageOpenedApp.map((message) {
      return SynchrowiseMessage.fromRemoteMessage(message);
    });
  }

  @override
  Future<SynchrowiseMessage?> getInitialMessage() {
    return FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message == null) return null;
      return SynchrowiseMessage.fromRemoteMessage(message);
    });
  }
}
