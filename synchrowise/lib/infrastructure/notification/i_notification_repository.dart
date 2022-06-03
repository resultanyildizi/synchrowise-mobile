import 'package:dartz/dartz.dart';
import 'package:synchrowise/domain/auth/notification_settings_data.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/notification/failure/notification_repository_failure.dart';

abstract class INotificationRepository {
  ///* Updates the notification settings of the `synchrowiseUser` on the server with given `notificationData` model.
  ///*
  ///* Returns `Unit` if it is successful.
  ///* Returns `NotificationRepositoryFailure` if an exception occurs.
  Future<Either<NotificationRepositoryFailure, Unit>> update({
    required NotificationSettingsData notificationData,
    required SynchrowiseUser synchrowiseUser,
  });
}
