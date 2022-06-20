import 'package:synchrowise/domain/socket/group_file_uploaded_sm.dart';
import 'package:synchrowise/domain/socket/user_joined_sm.dart';
import 'package:synchrowise/domain/socket/user_left_sm.dart';

abstract class ISocketFacade {
  Future<void> connectToSocket(String synchrowiseId);
  Future<void> sendUploadMediaMessage(String fileGuid);
  Future<void> sendJoinGroupMessage();
  Future<void> sendLeaveGroupMessage(String groupId);
  Future<void> deleteFileUploadMessage();

  Future<void> sendPlayMesage();
  Future<void> sendPauseMessage();
  Future<void> sendSeekMessage();

  Stream<UserJoinedSM> get userJoinedStream;
  Stream<UserLeftSM> get userLeftStream;
  Stream<GroupFileUploadedSM> get groupFileUploadedStream;
  Stream<String> get deleteFileUploadStream;
}
