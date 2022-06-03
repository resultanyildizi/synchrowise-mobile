part of 'notification_settings_bloc.dart';

@freezed
class NotificationSettingsEvent with _$NotificationSettingsEvent {
  const factory NotificationSettingsEvent.updateGroupNotification() =
      _UpdateGroupNotificationEvent;
  const factory NotificationSettingsEvent.updateMessageNotification() =
      _UpdateMessageNotificationEvent;
}
