part of 'notification_settings_bloc.dart';

@freezed
class NotificationSettingsState with _$NotificationSettingsState {
  const factory NotificationSettingsState({
    required Option<Either<NotificationRepositoryFailure, Unit>>
        failureOrUnitOption,
  }) = _NotificationSettingsState;

  factory NotificationSettingsState.initial() {
    return NotificationSettingsState(failureOrUnitOption: none());
  }
}
