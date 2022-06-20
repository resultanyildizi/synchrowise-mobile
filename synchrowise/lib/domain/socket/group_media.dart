import 'package:equatable/equatable.dart';
import 'package:synchrowise/domain/socket/socket_message.dart';

class GroupMediaSM extends SocketMessage {
  final String groupId;
  final String filePath;

  const GroupMediaSM({
    required this.groupId,
    required this.filePath,
  });

  @override
  SocketMessageType get type => SocketMessageType.mediaUploaded;

  factory GroupMediaSM.fromMap(Map<String, dynamic> map) {
    return GroupMediaSM(groupId: map['groupId'], filePath: map['filePath']);
  }
}
