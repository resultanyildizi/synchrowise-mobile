part of 'register_steps_bloc.dart';

@freezed
class RegisterStepsState with _$RegisterStepsState {
  const factory RegisterStepsState({
    required Option<Either<ValueFailure, String>> failureOrUsernameOption,
    required Option<Either<RegisterFailure, File>> failureOrImageOption,
    required Option<Either<RegisterFailure, Unit>> registerFailureOrUnitOption,
    required bool showErrors,
    required int currentPageIndex,
  }) = _RegisterStepsState;

  factory RegisterStepsState.initial() {
    return RegisterStepsState(
      registerFailureOrUnitOption: none(),
      failureOrUsernameOption: none(),
      failureOrImageOption: none(),
      currentPageIndex: 0,
      showErrors: false,
    );
  }
}
