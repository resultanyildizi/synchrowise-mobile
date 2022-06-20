import 'package:synchrowise/domain/helper/duration_adapter.dart';
import 'package:synchrowise/domain/socket/socket_message.dart';

class StopVideoSM extends SocketMessage {
  @override
  SocketMessageType get type => SocketMessageType.mediaPaused;

  final String groupId;
  final Duration stopTime;

  const StopVideoSM({required this.groupId, required this.stopTime});

  factory StopVideoSM.fromMap(Map<String, dynamic> map) {
    final stopTime = DurationAdapter.fromMilliseconds(map['stopTimeMs']);
    return StopVideoSM(
      groupId: map['groupId'],
      stopTime: stopTime,
    );
  }

  @override
  List<Object?> get props => [groupId, stopTime];
}
