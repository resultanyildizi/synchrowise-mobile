import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';

part 'avatar_failure.freezed.dart';

@freezed
abstract class AvatarRepositoryFailure extends SynchrowiseFailure
    with _$AvatarRepositoryFailure {
  @Implements<ServerSynchrowiseFailure>()
  const factory AvatarRepositoryFailure.server(
    int statusCode,
    String message,
  ) = _ServerFailure;
}
