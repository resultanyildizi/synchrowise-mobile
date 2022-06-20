import 'package:equatable/equatable.dart';

enum SocketMessageType {
  userJoined,
  userLeft,
  mediaUploaded,
  mediaRemoved,
  mediaPlayed,
  mediaPaused,
  mediaRestarted,
  mediaForwarded,
}

abstract class SocketMessage extends Equatable {
  const SocketMessage();
  SocketMessageType get type;
}
