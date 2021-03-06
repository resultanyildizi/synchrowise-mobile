import 'package:synchrowise/domain/socket/group_file_uploaded_sm.dart';
import 'package:synchrowise/domain/socket/play_video_sm.dart';
import 'package:synchrowise/domain/socket/skip_forward_sm.dart';
import 'package:synchrowise/domain/socket/stop_video_sm.dart';
import 'package:synchrowise/domain/socket/user_joined_sm.dart';
import 'package:synchrowise/domain/socket/user_left_sm.dart';

abstract class ISocketFacade {
  Future<void> connectToSocket(String synchrowiseId);
  Future<void> sendUploadMediaMessage(String fileGuid);
  Future<void> sendJoinGroupMessage();
  Future<void> sendLeaveGroupMessage(String groupId);
  Future<void> deleteFileUploadMessage();

  Future<void> sendPlayMesage(int timeMs);
  Future<void> sendPauseMessage(int timeMs);
  Future<void> sendSeekMessage(int timeMs);

  Stream<UserJoinedSM> get userJoinedStream;
  Stream<UserLeftSM> get userLeftStream;
  Stream<GroupFileUploadedSM> get groupFileUploadedStream;
  Stream<String> get deleteFileUploadStream;
  Stream<PlayVideoSM> get playVideoStream;
  Stream<StopVideoSM> get stopVideoStream;
  Stream<SkipForwardSM> get skipForwardStream;
}
