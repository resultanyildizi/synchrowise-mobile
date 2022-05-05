import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';

part 'group_member_repository_failure.freezed.dart';

@freezed
abstract class GroupMemberRepositoryFailure
    with _$GroupMemberRepositoryFailure {
  @Implements<UnknownSynchrowiseFailure>()
  const factory GroupMemberRepositoryFailure.unknown(String? message) =
      _UnknownFailure;

  @Implements<ConnectionSynchrowiseFailure>()
  const factory GroupMemberRepositoryFailure.connection() = _ConnectionFailure;

  @Implements<ServerSynchrowiseFailure>()
  const factory GroupMemberRepositoryFailure.server(
      int statusCode, String? message) = _ServerFailure;

  const factory GroupMemberRepositoryFailure.groupNotFound() =
      _GroupNotFoundFailure;
}
