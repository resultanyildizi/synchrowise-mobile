import 'package:equatable/equatable.dart';
import 'package:synchrowise/domain/socket/socket_message.dart';

class GroupFileUploadedSM extends SocketMessage {
  final String groupId;
  final String filePath;

  const GroupFileUploadedSM({
    required this.groupId,
    required this.filePath,
  });

  @override
  SocketMessageType get type => SocketMessageType.mediaUploaded;

  factory GroupFileUploadedSM.fromMap(Map<String, dynamic> map) {
    return GroupFileUploadedSM(
        groupId: map['groupId'], filePath: map['filePath']);
  }
}
