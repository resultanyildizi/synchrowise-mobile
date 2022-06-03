import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/core/string_values.dart';
import 'package:synchrowise/infrastructure/notification/failure/notification_repository_failure.dart';
import 'package:synchrowise/domain/auth/notification_settings_data.dart';
import 'package:dartz/dartz.dart';
import 'package:synchrowise/infrastructure/notification/i_notification_repository.dart';
import 'package:synchrowise/setup_env.dart';

class NotificationRepository implements INotificationRepository {
  //* Dependencies
  final Client _client;

  //* Constructor
  const NotificationRepository(this._client);

  //* Method implementations
  @override
  Future<Either<NotificationRepositoryFailure, Unit>> update({
    required NotificationSettingsData notificationData,
    required SynchrowiseUser synchrowiseUser,
  }) async {
    try {
      final uri = Uri.parse(
          "$apiurl/User/${synchrowiseUser.synchrowiseId}/Notifications");

      final result = await _client.post(
        uri,
        body: jsonEncode(notificationData.toMap()),
        headers: {HeaderKeys.contentType: HeaderValues.jsonBody},
      );

      if (result.statusCode == 200) {
        return right(unit);
      } else {
        return left(
          NotificationRepositoryFailure.server(
            result.statusCode,
            result.body,
          ),
        );
      }
    } on SocketException catch (_) {
      return left(const NotificationRepositoryFailure.connection());
    } catch (e) {
      return left(NotificationRepositoryFailure.unknown(e.toString()));
    }
  }
}
