part of 'register_steps_bloc.dart';

@freezed
class RegisterStepsEvent with _$RegisterStepsEvent {
  const factory RegisterStepsEvent.updateUsernameText(
      {required String username}) = _RegisterStepsUpdateUsernameTextEvent;
  const factory RegisterStepsEvent.updateAvatarImage({
    required AndroidUiSettings androidUiSettings,
    required IOSUiSettings iosUiSettings,
  }) = _RegisterStepsUpdateAvatarImageEvent;
  const factory RegisterStepsEvent.saveUsername() =
      _RegisterStepsSaveUsernameEvent;
  const factory RegisterStepsEvent.registerFields() =
      _RegisterStepsRegisterFieldsEvent;
  const factory RegisterStepsEvent.goBack() = _RegisterStepsGoBackEvent;
  const factory RegisterStepsEvent.goNext() = _RegisterStepsGoNextEvent;
  const factory RegisterStepsEvent.removeAvatarImage() =
      _RegisterStepsRemoveAvatarImageEvent;
}
