import 'dart:developer';

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
import 'package:synchrowise/infrastructure/socket_facade/i_socket_facade.dart';

part 'join_group_bloc.freezed.dart';
part 'join_group_event.dart';
part 'join_group_state.dart';

class JoinGroupBloc extends Bloc<JoinGroupEvent, JoinGroupState> {
  ///* Dependencies
  final IGroupRepository _iGroupRepository;
  final ISynchrowiseUserStorage _iUserStorage;
  final ISocketFacade _iSocketFacade;

  void updateGroupKeyText({required String groupKey}) =>
      add(JoinGroupEvent.updateGroupKeyText(groupKey: groupKey));

  void submit() => add(const JoinGroupEvent.submit());

  JoinGroupBloc(
    this._iGroupRepository,
    this._iUserStorage,
    this._iSocketFacade,
  ) : super(JoinGroupState.initial()) {
    on<JoinGroupEvent>(
      (event, emit) async {
        await event.map(
          updateGroupKeyText: (event) {
            //* Updates and validates the group key text
            emit(state.copyWith(
              failureOrGroupKeyOption: some(
                validateGroupKey(groupKey: event.groupKey.trim()),
              ),
            ));
          },
          submit: (event) async {
            //* Joins the user to the group for entered group key
            final groupKey = state.failureOrGroupKeyOption.fold(
              () => null,
              (a) => a.fold(
                (f) => null,
                (key) => key.trim(),
              ),
            );

            if (groupKey != null) {
              emit(state.copyWith(isSubmitting: true));

              final failureOrUser = await _iUserStorage.get();

              final newState = await failureOrUser.fold(
                (f) async {
                  return state.copyWith(
                    failureOrGroupKeyOption: none(),
                  );
                },
                (user) async {
                  final failureOrGroupData =
                      await _iGroupRepository.getByGroupKey(
                    groupKey: groupKey,
                  );

                  return await failureOrGroupData.fold(
                    (f) async {
                      return state.copyWith(
                        joinFailureOrGroupDataOption: some(left(f)),
                        storageFailureOrUnitOption: some(right(unit)),
                        isSubmitting: false,
                      );
                    },
                    (groupData) async {
                      final failureOrGroupData =
                          await _iGroupRepository.addMember(
                        groupData: groupData,
                        synchrowiseUserId: user.synchrowiseId,
                      );

                      return failureOrGroupData.fold(
                        (f) async {
                          return state.copyWith(
                            storageFailureOrUnitOption: some(right(unit)),
                            joinFailureOrGroupDataOption: some(left(f)),
                          );
                        },
                        (groupData) async {
                          _iSocketFacade
                              .sendJoinGroupMessage(groupData.groupId);
                          return state.copyWith(
                            joinFailureOrGroupDataOption:
                                some(right(groupData)),
                            storageFailureOrUnitOption: some(right(unit)),
                          );
                        },
                      );
                    },
                  );
                },
              );

              emit(newState.copyWith(showErrors: true, isSubmitting: false));
            } else {
              emit(state.copyWith(showErrors: true));
            }
          },
        );
      },
    );
  }
}
