part of 'group_session_bloc.dart';

@freezed
class GroupSessionState with _$GroupSessionState {
  const factory GroupSessionState({
    required Option<Either<SynchrowiseFailure, Media>> failureOrMediaOption,
    required Option<Either<SynchrowiseFailure, Unit>> failureOrUnitOption,
    required Option<Either<SynchrowiseUserStorageFailure, Unit>>
        storageFailureOrUnitOption,
    required Option<KtList<UserSummary>> membersOption,
    required bool isProgressing,
  }) = _GroupSessionState;

  factory GroupSessionState.initial() {
    return GroupSessionState(
      storageFailureOrUnitOption: none(),
      failureOrMediaOption: none(),
      failureOrUnitOption: none(),
      membersOption: none(),
      isProgressing: false,
    );
  }
}
