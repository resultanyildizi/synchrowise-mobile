part of 'get_group_bloc.dart';

@freezed
class GetGroupState with _$GetGroupState {
  const factory GetGroupState.initial() = _GetGroupInitialState;
  const factory GetGroupState.loading() = _GetGroupLoadingState;
  const factory GetGroupState.loaded({required GroupData groupData}) =
      _GetGroupLoadedState;
  const factory GetGroupState.failure({required SynchrowiseFailure failure}) =
      _GetGroupFailureState;
}
