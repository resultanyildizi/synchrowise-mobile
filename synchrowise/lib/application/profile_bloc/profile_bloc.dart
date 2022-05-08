import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/auth/auth_facade/i_auth_facade.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_repository/i_synchrowise_user_repository.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/i_synchrowise_user_storage.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IAuthFacade _iAuthFacade;
  final ISynchrowiseUserStorage _iUserStore;
  final ISynchrowiseUserRepository _iUserRepo;

  ProfileBloc(this._iAuthFacade, this._iUserStore, this._iUserRepo)
      : super(ProfileState.initial()) {
    on<ProfileEvent>((event, emit) {
      event.map(
        signOut: (_) async {
          final signOutFailureOrUnit = await _iAuthFacade.signOut();

          final newState = await signOutFailureOrUnit.fold(
            (f) async => state.copyWith(
                failureOrUnitOption: some(left(UnknownSynchrowiseFailure()))),
            (_) async {
              await _iUserStore.delete();

              return state.copyWith(failureOrUnitOption: some(right(unit)));
            },
          );

          emit(newState);
        },
        delete: (_) async {
          final failureOrUser = await _iUserStore.get();

          final newState = await failureOrUser.fold(
            (_) async => state.copyWith(
                failureOrUnitOption: some(left(UnknownSynchrowiseFailure()))),
            (user) async {
              final failureOrUnits = <Either<SynchrowiseFailure, Unit>>[];

              failureOrUnits.add(
                await _iUserRepo.delete(synchrowiseUser: user),
              );

              failureOrUnits.add(await _iAuthFacade.deleteAccount());

              failureOrUnits.add(await _iUserStore.delete());

              final result = failureOrUnits.every((fou) => fou.isRight());

              if (result) {
                return state.copyWith(
                    failureOrUnitOption:
                        some(left(UnknownSynchrowiseFailure())));
              } else {
                return state.copyWith(failureOrUnitOption: some(right(unit)));
              }
            },
          );

          emit(newState);
        },
      );
    });
  }
}
