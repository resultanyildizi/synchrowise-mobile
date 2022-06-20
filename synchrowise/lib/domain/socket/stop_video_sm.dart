import 'package:synchrowise/domain/socket/socket_message.dart';

class StopVideoSM extends SocketMessage {
  @override
  SocketMessageType get type => SocketMessageType.mediaPaused;

  final String groupId;
  final int stopTimeMs;

  const StopVideoSM({required this.groupId, required this.stopTimeMs});

  factory StopVideoSM.fromMap(Map<String, dynamic> map) {
    return StopVideoSM(
      groupId: map['groupId'],
      stopTimeMs: map['stopTimeMs'],
    );
  }
}
