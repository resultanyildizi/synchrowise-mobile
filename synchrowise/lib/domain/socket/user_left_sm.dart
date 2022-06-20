import 'package:synchrowise/domain/auth/user_summary.dart';
import 'package:synchrowise/domain/socket/socket_message.dart';

class UserLeftSM extends SocketMessage {
  @override
  SocketMessageType get type => SocketMessageType.userLeft;

  final String groupId;
  final UserSummary userSummary;

  const UserLeftSM({required this.groupId, required this.userSummary});

  factory UserLeftSM.fromMap(Map<String, dynamic> map) {
    return UserLeftSM(
      groupId: map['groupId'],
      userSummary: UserSummary.fromSocketMap(map),
    );
  }
}
