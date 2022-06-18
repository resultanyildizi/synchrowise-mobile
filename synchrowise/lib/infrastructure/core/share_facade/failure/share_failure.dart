import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';

part 'share_failure.freezed.dart';

@freezed
abstract class ShareFailure extends SynchrowiseFailure with _$ShareFailure {
  @Implements<UnknownSynchrowiseFailure>()
  const factory ShareFailure.unknown() = _UnkownShareFailure;
}
