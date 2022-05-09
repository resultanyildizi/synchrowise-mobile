import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/application/core/input_validator.dart';
import 'package:synchrowise/domain/group/group_data.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/failure/synchrowise_user_storage_failure.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/i_synchrowise_user_storage.dart';
import 'package:synchrowise/infrastructure/failures/value_failure.dart';
import 'package:synchrowise/infrastructure/group/group_repository/failure/group_repository_failure.dart';
import 'package:synchrowise/infrastructure/group/group_repository/i_group_repository.dart';

part 'create_group_event.dart';
part 'create_group_state.dart';
part 'create_group_bloc.freezed.dart';

class CreateGroupBloc extends Bloc<CreateGroupEvent, CreateGroupState> {
  final ISynchrowiseUserStorage _iUserStorage;
  final IGroupRepository _iGroupRepository;

  void updateGroupNameText({required String groupName}) =>
      add(CreateGroupEvent.updateGroupNameText(groupName: groupName));
  void updateGroupDescText({required String groupDesc}) =>
      add(CreateGroupEvent.updateGroupDescText(groupDesc: groupDesc));
  void saveGroupName() => add(const CreateGroupEvent.saveGroupName());
  void saveGroupDesc() => add(const CreateGroupEvent.saveDesc());
  void goBack() => add(const CreateGroupEvent.goBack());

  GroupData? groupData;

  CreateGroupBloc(
    this._iUserStorage,
    this._iGroupRepository,
  ) : super(CreateGroupState.initial()) {
    on<CreateGroupEvent>((event, emit) async {
      await event.map(
        updateGroupNameText: (event) {
          final validatedGroupName =
              validateGroupName(groupName: event.groupName.trim());

          emit(
            state.copyWith(failureOrGroupNameOption: some(validatedGroupName)),
          );
        },
        updateGroupDescText: (event) {},
        saveGroupName: (event) async {
          emit(state.copyWith(
            progressing: true,
            groupNameFailureOrUnitOption: none(),
            storageFailureOrUnitOption: none(),
          ));

          final groupName = state.failureOrGroupNameOption.fold(
            () => null,
            (failureOrGroupName) => failureOrGroupName.fold(
                (failure) => null, (groupName) => groupName),
          );

          if (groupName != null) {
            final failureOrUser = await _iUserStorage.get();

            final newState = await failureOrUser.fold(
              (f) async {
                return state.copyWith(
                  storageFailureOrUnitOption: some(left(f)),
                );
              },
              (user) async {
                groupData = GroupData.toCreateGroup(
                  groupName: groupName,
                  groupOwner: user,
                );

                late Either<GroupRepositoryFailure, Unit> failureOrUnit;

                if (groupData == null) {
                  failureOrUnit = await _iGroupRepository.create(
                    groupData: groupData!,
                  );
                } else {
                  if (groupData!.groupName != groupName) {
                    // Todo: update group name
                    // failureOrUnit = await _iGroupRepository.update(
                    //   groupData: groupData!,
                    // );
                  } else {
                    failureOrUnit = right(unit);
                  }
                }

                return failureOrUnit.fold(
                  (f) {
                    return state.copyWith(
                      groupNameFailureOrUnitOption: some(left(f)),
                      storageFailureOrUnitOption: some(right(unit)),
                    );
                  },
                  (_) {
                    return state.copyWith(
                      groupNameFailureOrUnitOption: some(right(unit)),
                      storageFailureOrUnitOption: some(right(unit)),
                      step: 1,
                    );
                  },
                );
              },
            );
            emit(newState);
          } else {
            emit(state.copyWith(showErrors: true));
          }
        },
        saveDesc: (event) {},
        goBack: (_) {
          assert(
            state.step > 0,
            'Cannot go back from step 0. This event must not be called from step 0.',
          );

          emit(state.copyWith(step: state.step > 0 ? state.step - 1 : 0));
        },
      );
    });
  }
}
