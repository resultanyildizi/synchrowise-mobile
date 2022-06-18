import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';

part 'group_file_repository_failure.freezed.dart';

@freezed
abstract class GroupFileRepositoryFailure extends SynchrowiseFailure
    with _$GroupFileRepositoryFailure {
  @Implements<ConnectionSynchrowiseFailure>()
  const factory GroupFileRepositoryFailure.connection() = _ConnectionFailure;
  @Implements<ServerSynchrowiseFailure>()
  const factory GroupFileRepositoryFailure.server(
      int statusCode, String? message) = _ServerFailure;
  @Implements<UnknownSynchrowiseFailure>()
  const factory GroupFileRepositoryFailure.unknown(String? message) =
      _UnknownFailure;
}
