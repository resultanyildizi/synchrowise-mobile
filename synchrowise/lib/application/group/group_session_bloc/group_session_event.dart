part of 'group_session_bloc.dart';

@freezed
class GroupSessionEvent with _$GroupSessionEvent {
  factory GroupSessionEvent.init({required GroupData groupData}) = _InitEvent;

  factory GroupSessionEvent.uploadMedia({
    required GroupData groupData,
  }) = _UploadMediaEvent;

  factory GroupSessionEvent.removeMedia() = _RemoveMediaEvent;

  factory GroupSessionEvent.leaveGroup({required GroupData groupData}) =
      _LeaveGroupEvent;

  factory GroupSessionEvent.deleteMember({
    required GroupData groupData,
    required UserSummary member,
  }) = _DeleteMemberEvent;

  factory GroupSessionEvent.deleteGroup({required GroupData groupData}) =
      _DeleteGroupEvent;

  factory GroupSessionEvent.playMedia({
    required GroupData groupData,
    required int timeMs,
  }) = _PlayMediaEvent;

  factory GroupSessionEvent.pauseMedia({
    required GroupData groupData,
    required int timeMs,
  }) = _PauseMediaEvent;

  factory GroupSessionEvent.seekMedia({
    required GroupData groupData,
    required int timeMs,
  }) = _SeekMediaEvent;

  factory GroupSessionEvent.userLeft({required UserLeftSM message}) =
      _UserLeftEvent;

  factory GroupSessionEvent.userJoined({required UserJoinedSM message}) =
      _UserJoinedEvent;

  factory GroupSessionEvent.mediaPaused({required StopVideoSM message}) =
      _MediaPausedEvent;

  factory GroupSessionEvent.mediaPlayed({required PlayVideoSM message}) =
      _MediaPlayedEvent;

  factory GroupSessionEvent.skipForward({required SkipForwardSM message}) =
      _SkipForwardEvent;

  factory GroupSessionEvent.groupFileUploaded({
    required GroupFileUploadedSM message,
  }) = _GroupFileUploadedEvent;

  factory GroupSessionEvent.deleteFileUploaded({required String message}) =
      _deleteFileUploadedEvent;
}
