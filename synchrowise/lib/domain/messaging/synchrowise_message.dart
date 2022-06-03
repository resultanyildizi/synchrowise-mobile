import 'package:equatable/equatable.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:synchrowise/domain/messaging/media_message.dart';
import 'package:synchrowise/domain/messaging/unknown_message.dart';

abstract class SynchrowiseMessage extends Equatable {
  const SynchrowiseMessage();

  factory SynchrowiseMessage.fromRemoteMessage(RemoteMessage message) {
    final typeStr = message.data['type'];

    switch (typeStr) {
      case 'media':
        return MediaMessage.fromMap(message.data);
      default:
        return UnknownMessage();
    }
  }
}
