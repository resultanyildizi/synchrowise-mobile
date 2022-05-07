part of 'create_group_bloc.dart';

@freezed
class CreateGroupEvent with _$CreateGroupEvent {
  const factory CreateGroupEvent.updateGroupNameText(
      {required String groupName}) = _CreateGroupUpdateGroupNameTextEvent;
  const factory CreateGroupEvent.saveGroupName() =
      _CreateGroupSaveGroupNameEvent;
  const factory CreateGroupEvent.updateGroupDescText(
      {required String groupDesc}) = _CreateGroupUpdateGroupDescTextEvent;
  const factory CreateGroupEvent.saveDesc() = _CreateGroupSaveGroupDescEvent;
  const factory CreateGroupEvent.submit() = _CreateGroupSubmitEvent;
  const factory CreateGroupEvent.goBack() = _CreateGroupGoBackEvent;
}
