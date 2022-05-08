part of 'register_steps_bloc.dart';

@freezed
class RegisterStepsState with _$RegisterStepsState {
  const RegisterStepsState._();

  const factory RegisterStepsState({
    required Option<Either<ValueFailure, String>> failureOrUsernameOption,
    required Option<Either<ImageFailure, File>> failureOrImageOption,
    required Option<Either<AvatarRepositoryFailure, Unit>>
        failureOrAvatarOption,
    required Option<Either<SynchrowiseUserRepositoryFailure, Unit>>
        usernameFailureOrUnitOption,
    required Option<Either<SynchrowiseUserStorageFailure, Unit>>
        storageFailureOrUnitOption,
    required bool progressing,
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
      progressing: false,
      showErrors: false,
      step: 0,
    );
  }

  bool get hasStorageFailed =>
      storageFailureOrUnitOption.fold(() => false, (fos) => fos.isLeft());

  bool get hasUsernameFailed =>
      usernameFailureOrUnitOption.fold(() => false, (fou) => fou.isLeft());

  bool get hasAvatarFailed =>
      failureOrAvatarOption.fold(() => false, (foa) => foa.isLeft());

  bool get hasImageFailed => failureOrImageOption.fold(
        () => false,
        (foi) => foi.fold(
          (f) => f.maybeMap(imageCancel: (_) => false, orElse: () => true),
          (r) => false,
        ),
      );

  bool get hasAnyFailed =>
      hasStorageFailed ||
      hasUsernameFailed ||
      hasAvatarFailed ||
      hasImageFailed;

  bool get hasStorageSucceeded =>
      storageFailureOrUnitOption.fold(() => false, (fos) => fos.isRight());

  bool get hasUsernameSucceeded =>
      usernameFailureOrUnitOption.fold(() => false, (fou) => fou.isRight());

  bool get hasAvatarSucceeded =>
      failureOrAvatarOption.fold(() => false, (foa) => foa.isRight());

  bool get hasImageSucceeded => failureOrImageOption.fold(
        () => true,
        (foi) => foi.fold(
          (f) => f.maybeMap(imageCancel: (_) => true, orElse: () => false),
          (_) => true,
        ),
      );

  bool get hasAllSucceeded =>
      hasStorageSucceeded &&
      hasUsernameSucceeded &&
      hasAvatarSucceeded &&
      hasImageSucceeded;
}
