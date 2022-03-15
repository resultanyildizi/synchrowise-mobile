part of 'register_steps_bloc.dart';

@freezed
class RegisterStepsEvent with _$RegisterStepsEvent {
  const factory RegisterStepsEvent.updateUsernameText(
      {required String username}) = _SigninUpdateUsernameTextFormEvent;
  const factory RegisterStepsEvent.updateImageFile() =
      _SigninUpdateImageFileFormEvent;
  const factory RegisterStepsEvent.saveUsernameAndImage() =
      _SigninSaveUsernameAndImageFormEvent;
}
