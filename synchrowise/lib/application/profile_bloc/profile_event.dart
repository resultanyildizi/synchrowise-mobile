part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.signOut() = _SignOutEvent;
  const factory ProfileEvent.delete() = _DeleteEvent;
}
