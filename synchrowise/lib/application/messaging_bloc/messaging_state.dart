part of 'messaging_bloc.dart';

@freezed
class MessagingState with _$MessagingState {
  const factory MessagingState.initial() = _Initial;
  const factory MessagingState.onMessage({
    required SynchrowiseMessage message,
  }) = _OnMessage;

  const factory MessagingState.onMessageOpenedApp({
    required SynchrowiseMessage message,
  }) = _OnMessageOpenedApp;
}
