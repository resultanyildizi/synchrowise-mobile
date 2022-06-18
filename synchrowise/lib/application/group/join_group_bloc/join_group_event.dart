part of 'join_group_bloc.dart';

@freezed
class JoinGroupEvent with _$JoinGroupEvent {
  const factory JoinGroupEvent.updateGroupKeyText({
    required String groupKey,
  }) = _UpdateGroupKeyTextEvent;

  const factory JoinGroupEvent.submit() = _SubmitGroupEvent;
}
