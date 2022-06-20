import 'package:synchrowise/domain/helper/duration_adapter.dart';
import 'package:synchrowise/domain/socket/socket_message.dart';

class PlayVideoSM extends SocketMessage {
  final String groupId;
  final Duration playTime;

  const PlayVideoSM({
    required this.groupId,
    required this.playTime,
  });

  factory PlayVideoSM.fromMap(Map<String, dynamic> map) {
    final playtime = DurationAdapter.fromMilliseconds(map['playTimeMs']);
    return PlayVideoSM(
      groupId: map['groupId'],
      playTime: playtime,
    );
  }

  @override
  SocketMessageType get type => SocketMessageType.mediaPlayed;

  @override
  List<Object?> get props => [groupId, playTime];
}
