part of 'contact_us_bloc.dart';

@freezed
class ContactUsEvent with _$ContactUsEvent {
  const factory ContactUsEvent.updateEmailText({required String email}) =
      _UpdateEmailTextEvent;
  const factory ContactUsEvent.updateSubjectText({required String subject}) =
      _UpdateSubjectTextEvent;
  const factory ContactUsEvent.updateMessageText({required String message}) =
      _UpdateMessageTextEvent;
  const factory ContactUsEvent.send() = _SendEvent;
}
