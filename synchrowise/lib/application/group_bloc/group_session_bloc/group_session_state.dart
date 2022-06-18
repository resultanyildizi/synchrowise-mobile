part of 'group_session_bloc.dart';

@freezed
class GroupSessionState with _$GroupSessionState {
  const factory GroupSessionState({
    required Option<Either<SynchrowiseFailure, Media>> failureOrMediaOption,
    required Option<KtList<UserSummary>> membersOption,
    required bool isProgressing,
  }) = _GroupSessionState;

  factory GroupSessionState.initial() {
    return GroupSessionState(
      failureOrMediaOption: none(),
      membersOption: none(),
      isProgressing: false,
    );
  }
}
