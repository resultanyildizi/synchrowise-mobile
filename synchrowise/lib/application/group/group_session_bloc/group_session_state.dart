part of 'group_session_bloc.dart';

@freezed
class GroupSessionState with _$GroupSessionState {
  const GroupSessionState._();

  const factory GroupSessionState({
    required Option<Either<MediaFailure, Media>> failureOrMediaOption,
    required Option<SocketMessage> incomingMessageOption,
    required Option<Either<GroupRepositoryFailure, Unit>>
        groupFailureOrUnitOption,
    required Option<Either<GroupFileRepositoryFailure, Unit>>
        fileFailureOrUnitOption,
    required Option<Either<SynchrowiseUserStorageFailure, Unit>>
        storageFailureOrUnitOption,
    required Option<KtList<UserSummary>> membersOption,
    required bool isProgressing,
  }) = _GroupSessionState;

  factory GroupSessionState.initial() {
    return GroupSessionState(
      storageFailureOrUnitOption: none(),
      incomingMessageOption: none(),
      failureOrMediaOption: none(),
      groupFailureOrUnitOption: none(),
      fileFailureOrUnitOption: none(),
      membersOption: none(),
      isProgressing: false,
    );
  }
}
