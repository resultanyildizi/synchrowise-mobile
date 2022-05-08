import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navbar_event.dart';
part 'bottom_navbar_state.dart';
part 'bottom_navbar_bloc.freezed.dart';

class BottomNavbarBloc extends Bloc<BottomNavbarEvent, BottomNavbarState> {
  BottomNavbarBloc() : super(BottomNavbarState.home()) {
    on<BottomNavbarEvent>((event, emit) {
      event.map(openTab: (event) {
        switch (event.index) {
          case 0:
            emit(BottomNavbarState.profile());
            break;
          case 1:
            emit(BottomNavbarState.home());
            break;
          case 2:
            emit(BottomNavbarState.settings());
            break;
        }
      });
    });
  }
}
