part of 'register_steps_bloc.dart';

@freezed
class RegisterStepsState with _$RegisterStepsState {
  const factory RegisterStepsState({
    required Option<Either<ValueFailure, String>> failureOrUsernameOption,
    required Option<Either<AuthFailure, File?>> failureOrImageOption,
    required Option<Either<ValueFailure, Unit>> failureOrUnitOption,
    required bool showErrors,
  }) = _RegisterStepsState;

  factory RegisterStepsState.initial() {
    return RegisterStepsState(
      failureOrUsernameOption: none(),
      failureOrImageOption: none(),
      failureOrUnitOption: none(),
      showErrors: false,
    );
  }
}
