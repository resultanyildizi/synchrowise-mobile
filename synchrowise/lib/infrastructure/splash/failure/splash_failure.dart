import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_failure.freezed.dart';

@freezed
abstract class SplashFailure with _$SplashFailure {
  const factory SplashFailure.unknown() = _UnknwonSplashFailure;
}
