import 'package:synchrowise/domain/helper/duration_adapter.dart';
import 'package:synchrowise/domain/socket/socket_message.dart';

class SkipForwardSM extends SocketMessage {
  @override
  SocketMessageType get type => SocketMessageType.mediaForwarded;

  final String groupId;
  final Duration forwardTime;

  const SkipForwardSM({required this.groupId, required this.forwardTime});

  factory SkipForwardSM.fromMap(Map<String, dynamic> map) {
    final forwardTime = DurationAdapter.fromMilliseconds(map['forwardTimeMs']);

    return SkipForwardSM(
      groupId: map['groupId'],
      forwardTime: forwardTime,
    );
  }

  @override
  List<Object?> get props => [groupId, forwardTime];
}
