part of 'register_steps_bloc.dart';

@freezed
class RegisterStepsState with _$RegisterStepsState {
  const factory RegisterStepsState({
    required Option<Either<ValueFailure, String>> failureOrUsernameOption,
    required Option<Either<ImageFailure, File>> failureOrImageOption,
    required Option<Either<AvatarRepositoryFailure, Unit>>
        failureOrAvatarOption,
    required Option<Either<SynchrowiseUserRepositoryFailure, Unit>>
        usernameFailureOrUnitOption,
    required Option<Either<SynchrowiseUserStorageFailure, Unit>>
        storageFailureOrUnitOption,
    required bool uploadingImage,
    required bool showErrors,
    required int step,
  }) = _RegisterStepsState;

  factory RegisterStepsState.initial() {
    return RegisterStepsState(
      storageFailureOrUnitOption: none(),
      usernameFailureOrUnitOption: none(),
      failureOrUsernameOption: none(),
      failureOrAvatarOption: none(),
      failureOrImageOption: none(),
      uploadingImage: false,
      showErrors: false,
      step: 0,
    );
  }
}
