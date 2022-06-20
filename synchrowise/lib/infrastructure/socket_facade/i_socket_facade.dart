import 'package:synchrowise/domain/socket/user_joined_sm.dart';
import 'package:synchrowise/domain/socket/user_left_sm.dart';

abstract class ISocketFacade {
  Future<void> connectToSocket(String synchrowiseId);
  Future<void> sendUploadMediaMessage(String fileGuid);
  Future<void> sendJoinGroupMessage();
  Future<void> sendLeaveGroupMessage();

  Stream<UserJoinedSM> get userJoinedStream;
  Stream<UserLeftSM> get userLeftStream;
}
