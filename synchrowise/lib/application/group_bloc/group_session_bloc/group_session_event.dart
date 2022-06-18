part of 'group_session_bloc.dart';

@freezed
class GroupSessionEvent with _$GroupSessionEvent {
  factory GroupSessionEvent.init({required GroupData groupData}) = _InitEvent;

  factory GroupSessionEvent.uploadMedia() = _UploadMediaEvent;

  factory GroupSessionEvent.removeMedia() = _RemoveMediaEvent;

  factory GroupSessionEvent.leaveGroup() = _LeaveGroupEvent;

  factory GroupSessionEvent.playMedia() = _PlayMediaEvent;

  factory GroupSessionEvent.pauseMedia() = _PauseMediaEvent;

  factory GroupSessionEvent.seekMedia() = _SeekMediaEvent;
}
