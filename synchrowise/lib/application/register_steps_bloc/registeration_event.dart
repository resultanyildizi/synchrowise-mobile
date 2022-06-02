part of 'registeration_bloc.dart';

@freezed
class RegisterationEvent with _$RegisterationEvent {
  const factory RegisterationEvent.updateUsernameText(
      {required String username}) = _RegisterationUpdateUsernameTextEvent;
  const factory RegisterationEvent.updateAvatarImage({
    required AndroidUiSettings androidUiSettings,
    required IOSUiSettings iosUiSettings,
  }) = _RegisterationUpdateAvatarImageEvent;
  const factory RegisterationEvent.saveUsername() =
      _RegisterationSaveUsernameEvent;
  const factory RegisterationEvent.registerFields() =
      _RegisterationRegisterFieldsEvent;
  const factory RegisterationEvent.goBack() = _RegisterationGoBackEvent;
  const factory RegisterationEvent.goNext() = _RegisterationGoNextEvent;
  const factory RegisterationEvent.removeAvatarImage() =
      _RegisterationRemoveAvatarImageEvent;

  const factory RegisterationEvent.deleteAvatarImage() =
      _RegisterationDeleteAvatarImageEvent;
}
