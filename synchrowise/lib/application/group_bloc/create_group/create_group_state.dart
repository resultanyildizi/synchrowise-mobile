part of 'create_group_bloc.dart';

@freezed
class CreateGroupState with _$CreateGroupState {
  const factory CreateGroupState({
    required Option<Either<ValueFailure, String>> failureOrGroupNameOption,
    required Option<Either<GroupRepositoryFailure, Unit>>
        submitFailureOrUnitOption,
    required Option<Either<ValueFailure, String>> failureOrGroupDescOption,
    required Option<Either<SynchrowiseUserStorageFailure, Unit>>
        storageFailureOrUnitOption,
    required bool showErrors,
    required bool progressing,
    required int step,
  }) = _CreateGroupState;

  factory CreateGroupState.initial() {
    return CreateGroupState(
      storageFailureOrUnitOption: none(),
      submitFailureOrUnitOption: none(),
      failureOrGroupNameOption: none(),
      failureOrGroupDescOption: none(),
      progressing: false,
      showErrors: false,
      step: 0,
    );
  }
}
