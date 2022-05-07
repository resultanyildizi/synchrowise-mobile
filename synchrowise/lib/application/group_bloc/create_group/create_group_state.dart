part of 'create_group_bloc.dart';

@freezed
class CreateGroupState with _$CreateGroupState {
  const factory CreateGroupState({
    required Option<Either<ValueFailure, String>> failureOrGroupNameOption,
    required Option<Either<GroupRepositoryFailure, Unit>>
        groupNameFailureOrUnitOption,
    required Option<Either<ValueFailure, String>> failureOrGroupDescOption,
    required Option<Either<GroupRepositoryFailure, Unit>>
        groupDescFailureOrUnitOption,
    required Option<Either<SynchrowiseUserStorageFailure, Unit>>
        storageFailureOrUnitOption,
    required bool showErrors,
    required int step,
  }) = _CreateGroupState;

  factory CreateGroupState.initial() {
    return CreateGroupState(
      storageFailureOrUnitOption: none(),
      failureOrGroupNameOption: none(),
      groupNameFailureOrUnitOption: none(),
      failureOrGroupDescOption: none(),
      groupDescFailureOrUnitOption: none(),
      showErrors: false,
      step: 0,
    );
  }
}
