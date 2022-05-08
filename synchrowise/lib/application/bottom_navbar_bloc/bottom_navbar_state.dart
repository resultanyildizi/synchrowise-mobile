part of 'bottom_navbar_bloc.dart';

@freezed
abstract class BottomNavbarState with _$BottomNavbarState {
  const factory BottomNavbarState({required int index}) = _BottomNavbarState;

  factory BottomNavbarState.home() {
    return const BottomNavbarState(index: 1);
  }

  factory BottomNavbarState.profile() {
    return const BottomNavbarState(index: 0);
  }

  factory BottomNavbarState.settings() {
    return const BottomNavbarState(index: 2);
  }
}
