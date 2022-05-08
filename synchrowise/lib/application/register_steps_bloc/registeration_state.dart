part of 'registeration_bloc.dart';

@freezed
class RegisterationState with _$RegisterationState {
  const RegisterationState._();

  const factory RegisterationState({
    required Option<Either<ValueFailure, String>> valueFailureOrUsernameOption,
    required Option<Either<ImageFailure, File>> imageFailureOrImageOption,
    required Option<Either<AvatarRepositoryFailure, Unit>>
        avatarFailureOrAvatarOption,
    required Option<Either<SynchrowiseUserRepositoryFailure, Unit>>
        usernameFailureOrUnitOption,
    required Option<Either<SynchrowiseUserStorageFailure, Unit>>
        storageFailureOrUnitOption,
    required bool progressing,
    required bool showErrors,
    required int step,
  }) = _RegisterationState;

  factory RegisterationState.initial() {
    return RegisterationState(
      storageFailureOrUnitOption: none(),
      usernameFailureOrUnitOption: none(),
      valueFailureOrUsernameOption: none(),
      avatarFailureOrAvatarOption: none(),
      imageFailureOrImageOption: none(),
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
      avatarFailureOrAvatarOption.fold(() => false, (foa) => foa.isLeft());

  bool get hasImageFailed => imageFailureOrImageOption.fold(
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
      avatarFailureOrAvatarOption.fold(() => false, (foa) => foa.isRight());

  bool get hasImageSucceeded => imageFailureOrImageOption.fold(
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
