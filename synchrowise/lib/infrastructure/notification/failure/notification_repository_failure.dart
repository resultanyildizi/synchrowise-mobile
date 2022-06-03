import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';

part 'notification_repository_failure.freezed.dart';

@freezed
abstract class NotificationRepositoryFailure extends SynchrowiseFailure
    with _$NotificationRepositoryFailure {
  @Implements<ConnectionSynchrowiseFailure>()
  const factory NotificationRepositoryFailure.connection() = _ConnectionFailure;
  @Implements<ServerSynchrowiseFailure>()
  const factory NotificationRepositoryFailure.server(
      int statusCode, String? message) = _ServerFailure;
  @Implements<UnknownSynchrowiseFailure>()
  const factory NotificationRepositoryFailure.unknown(String? message) =
      _UnknownFailure;
}
