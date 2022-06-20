import 'package:equatable/equatable.dart';
import 'package:synchrowise/domain/socket/socket_message.dart';

class GroupMedia extends SocketMessage {
  final String groupId;
  final String filePath;

  const GroupMedia({
    required this.groupId,
    required this.filePath,
  });

  @override
  SocketMessageType get type => SocketMessageType.mediaUploaded;

  factory GroupMedia.fromMap(Map<String, dynamic> map) {
    return GroupMedia(groupId: map['groupId'], filePath: map['filePath']);
  }
}
