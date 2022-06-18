import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/application/core/input_validator.dart';
import 'package:synchrowise/domain/auth/user_summary.dart';
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
  void submitGroup() => add(const CreateGroupEvent.submitGroup());
  void saveUsername() => add(const CreateGroupEvent.saveGroupKey());
  void goBack() => add(const CreateGroupEvent.goBack());

  CreateGroupBloc(
    this._iUserStorage,
    this._iGroupRepository,
  ) : super(CreateGroupState.initial()) {
    on<CreateGroupEvent>((event, emit) async {
      await event.map(
        updateGroupNameText: (event) {
          final validatedGroupKey =
              validateGroupKey(groupKey: event.groupName.trim());

          emit(
            state.copyWith(failureOrGroupKeyOption: some(validatedGroupKey)),
          );
        },
        updateGroupDescText: (event) {
          final validatedGroupDesc =
              validateGroupDesc(groupDesc: event.groupDesc.trim());

          emit(
            state.copyWith(failureOrGroupDescOption: some(validatedGroupDesc)),
          );
        },
        saveGroupKey: (event) async {
          final newState = state.failureOrGroupKeyOption.fold(
            () => state.copyWith(showErrors: true),
            (a) => a.fold(
              (f) => state.copyWith(showErrors: true),
              (_) => state.copyWith(showErrors: false, step: 1),
            ),
          );

          emit(newState);
        },
        submitGroup: (event) async {
          emit(state.copyWith(
            progressing: true,
            submitFailureOrUnitOption: none(),
            storageFailureOrUnitOption: none(),
          ));

          final groupName = state.failureOrGroupKeyOption.fold(
            () => null,
            (failureOrGroupName) => failureOrGroupName.fold(
                (failure) => null, (groupName) => groupName),
          );

          final groupDesc = state.failureOrGroupDescOption.fold(
            () => null,
            (failureOrGroupDesc) => failureOrGroupDesc.fold(
                (failure) => null, (groupDesc) => groupDesc),
          );

          if (groupName != null && groupDesc != null) {
            final failureOrUser = await _iUserStorage.get();

            final newState = await failureOrUser.fold(
              (f) async {
                return state.copyWith(
                  storageFailureOrUnitOption: some(left(f)),
                );
              },
              (user) async {
                late Either<GroupRepositoryFailure, Unit> failureOrUnit;

                final groupData = GroupData.toCreateGroup(
                  groupName: groupName,
                  groupDesc: groupDesc,
                  groupOwner: UserSummary.fromSynchrowiseUser(user),
                );

                failureOrUnit =
                    await _iGroupRepository.create(groupData: groupData);

                return failureOrUnit.fold(
                  (f) {
                    return state.copyWith(
                      submitFailureOrUnitOption: some(left(f)),
                      storageFailureOrUnitOption: some(right(unit)),
                    );
                  },
                  (_) {
                    return state.copyWith(
                      submitFailureOrUnitOption: some(right(unit)),
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
