part of 'get_group_bloc.dart';

@freezed
class GetGroupEvent with _$GetGroupEvent {
  const factory GetGroupEvent.fetch() = _GetGroupFetchEvent;
}
