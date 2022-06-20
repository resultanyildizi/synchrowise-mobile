import 'package:equatable/equatable.dart';

class PlayVideoSM extends Equatable {
  final String groupId;
  final int playTimeMs;

  const PlayVideoSM({
    required this.groupId,
    required this.playTimeMs,
  });

  factory PlayVideoSM.fromMap(Map<String, dynamic> map) {
    return PlayVideoSM(
      groupId: map['groupId'],
      playTimeMs: map['playTimeMs'],
    );
  }

  @override
  List<Object?> get props => [groupId, playTimeMs];
}
