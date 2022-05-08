part of 'bottom_navbar_bloc.dart';

@freezed
class BottomNavbarEvent with _$BottomNavbarEvent {
  const factory BottomNavbarEvent.openTab({required int index}) = _OpenTab;
}
