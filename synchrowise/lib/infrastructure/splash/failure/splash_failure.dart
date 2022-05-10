import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';

part 'splash_failure.freezed.dart';

@freezed
abstract class SplashFacadeFailure extends SynchrowiseFailure
    with _$SplashFacadeFailure {
  @Implements<UnknownSynchrowiseFailure>()
  const factory SplashFacadeFailure.unknown() = _UnknwonFailure;
}
