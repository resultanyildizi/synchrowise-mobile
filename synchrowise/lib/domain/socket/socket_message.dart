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

abstract class SocketMessage {
  const SocketMessage();
  SocketMessageType get type;
}
