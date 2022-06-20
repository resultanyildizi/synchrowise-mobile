import 'package:synchrowise/domain/socket/socket_message.dart';

class SkipForwardSM extends SocketMessage {
  @override
  SocketMessageType get type => SocketMessageType.mediaForwarded;

  final String groupId;
  final int forwardTimeMs;

  const SkipForwardSM({required this.groupId, required this.forwardTimeMs});

  factory SkipForwardSM.fromMap(Map<String, dynamic> map) {
    return SkipForwardSM(
      groupId: map['groupId'],
      forwardTimeMs: map['forwardTimeMs'],
    );
  }
}
