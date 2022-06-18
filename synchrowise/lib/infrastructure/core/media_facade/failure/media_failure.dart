import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';

part 'media_failure.freezed.dart';

@freezed
abstract class MediaFailure extends SynchrowiseFailure with _$MediaFailure {
  const factory MediaFailure.pickFailure(String? message) = _PickFailure;
  const factory MediaFailure.sizeFailure(double mediaSize) = _SizeFailure;
  const factory MediaFailure.unsupportedFailure(String ext) =
      _UnsupportedFailure;
}
