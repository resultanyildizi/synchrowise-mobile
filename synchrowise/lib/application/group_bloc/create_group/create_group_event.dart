part of 'create_group_bloc.dart';

@freezed
class CreateGroupEvent with _$CreateGroupEvent {
  const factory CreateGroupEvent.updateGroupNameText(
      {required String groupName}) = _CreateGroupUpdateGroupNameTextEvent;
  const factory CreateGroupEvent.updateGroupDescText(
      {required String groupDesc}) = _CreateGroupUpdateGroupDescTextEvent;
  const factory CreateGroupEvent.submitGroup() = _CreateGroupSubmitGroupEvent;
  const factory CreateGroupEvent.saveGroupKey() = _CreateGroupSaveUsernameEvent;

  const factory CreateGroupEvent.goBack() = _CreateGroupGoBackEvent;
}
