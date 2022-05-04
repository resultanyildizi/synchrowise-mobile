import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';

part 'group_repository_failure.freezed.dart';

@freezed
abstract class GroupRepositoryFailure with _$GroupRepositoryFailure {
  @Implements<ServerSynchrowiseFailure>()
  const factory GroupRepositoryFailure.server() = _ServerFailure;
  @Implements<UnknownSynchrowiseFailure>()
  const factory GroupRepositoryFailure.unknown() = _UnknownFailure;
  const factory GroupRepositoryFailure.notFound() = _NotFoundFailure;
}
