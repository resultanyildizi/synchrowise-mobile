part of 'messaging_bloc.dart';

@freezed
class MessagingEvent with _$MessagingEvent {
  const factory MessagingEvent.start() = _StartEvent;
}
