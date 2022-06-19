import 'package:synchrowise/domain/auth/user_summary.dart';
import 'package:synchrowise/domain/socket/socket_message.dart';

class UserJoinedSM extends SocketMessage {
  @override
  SocketMessageType get type => SocketMessageType.userJoined;

  final String groupId;
  final UserSummary userSummary;

  const UserJoinedSM({required this.groupId, required this.userSummary});

  UserJoinedSM fromMap(Map<String, dynamic> map) {
    return UserJoinedSM(
      groupId: map['groupId'],
      userSummary: UserSummary.fromMap(map['userSummary']),
    );
  }
}
