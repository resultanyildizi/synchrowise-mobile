part of 'registeration_bloc.dart';

@freezed
class RegisterationEvent with _$RegisterationEvent {
  const factory RegisterationEvent.updateUsernameText(
      {required String username}) = _RegisterStepsUpdateUsernameTextEvent;
  const factory RegisterationEvent.updateAvatarImage({
    required AndroidUiSettings androidUiSettings,
    required IOSUiSettings iosUiSettings,
  }) = _RegisterStepsUpdateAvatarImageEvent;
  const factory RegisterationEvent.saveUsername() =
      _RegisterStepsSaveUsernameEvent;
  const factory RegisterationEvent.registerFields() =
      _RegisterStepsRegisterFieldsEvent;
  const factory RegisterationEvent.goBack() = _RegisterStepsGoBackEvent;
  const factory RegisterationEvent.goNext() = _RegisterStepsGoNextEvent;
  const factory RegisterationEvent.removeAvatarImage() =
      _RegisterStepsRemoveAvatarImageEvent;
}
