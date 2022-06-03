import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_event.dart';
part 'language_state.dart';
part 'language_bloc.freezed.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  void setLanguageCode(String languageCode) {
    add(LanguageEvent.setLanguageCode(languageCode: languageCode));
  }

  LanguageBloc() : super(LanguageState.initial()) {
    on<LanguageEvent>((event, emit) {
      event.map(
        setLanguageCode: (event) async {
          ///* Updates the language code in the user's storage

          final state = await _setLanguageCodeEventToState(event);
          emit(state);
        },
      );
    });
  }

  FutureOr<LanguageState> _setLanguageCodeEventToState(
    _SetLanguageCodeEvent setLanguageCodeEvent,
  ) async {
    final langCode = setLanguageCodeEvent.languageCode;
    return state.copyWith(languageCodeOption: some(langCode));
  }
}
