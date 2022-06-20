import 'package:synchrowise/domain/socket/socket_message.dart';

class UserLeftSM extends SocketMessage {
  @override
  SocketMessageType get type => SocketMessageType.userLeft;

  final String groupId;
  final String userId;

  const UserLeftSM({required this.groupId, required this.userId});

  factory UserLeftSM.fromMap(Map<String, dynamic> map) {
    return UserLeftSM(groupId: map['groupId'], userId: map['userId']);
  }
}
