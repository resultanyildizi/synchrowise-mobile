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

  factory GroupSessionEvent.playMedia() = _PlayMediaEvent;

  factory GroupSessionEvent.pauseMedia() = _PauseMediaEvent;

  factory GroupSessionEvent.seekMedia() = _SeekMediaEvent;
}
