import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/splash/i_splash_facade.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  ///* Dependencies
  ISplashFacade _iSplashFacade;

  SplashBloc(this._iSplashFacade) : super(const SplashState.initial()) {
    on<SplashEvent>(
      (event, emit) {
        event.map(check: (_) {});
      },
    );
  }
}
