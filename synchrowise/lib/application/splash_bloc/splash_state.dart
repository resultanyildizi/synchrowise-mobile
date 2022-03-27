part of 'splash_bloc.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.initial() = _SplashInitialState;
  const factory SplashState.outOfDate() = _SplashOutOfDateState;
  const factory SplashState.upToDate() = _SplashUpToDateState;
}
