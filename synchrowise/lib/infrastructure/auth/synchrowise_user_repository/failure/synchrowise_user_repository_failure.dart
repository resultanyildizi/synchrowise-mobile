import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';

part 'synchrowise_user_repository_failure.freezed.dart';

@freezed
abstract class SynchrowiseUserRepositoryFailure extends SynchrowiseFailure
    with _$SynchrowiseUserRepositoryFailure {
  @Implements<ConnectionSynchrowiseFailure>()
  const factory SynchrowiseUserRepositoryFailure.connection() = _Connection;
  @Implements<ServerSynchrowiseFailure>()
  const factory SynchrowiseUserRepositoryFailure.server(
      int statusCode, String? message) = _ServerFailure;
  @Implements<UnknownSynchrowiseFailure>()
  const factory SynchrowiseUserRepositoryFailure.unknown(String? message) =
      _UnknownFailure;
}
