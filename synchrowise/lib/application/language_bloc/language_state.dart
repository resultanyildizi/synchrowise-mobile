part of 'language_bloc.dart';

@freezed
abstract class LanguageState with _$LanguageState {
  const factory LanguageState({
    required Option<String> languageCodeOption,
  }) = _LanguageState;

  factory LanguageState.initial() => LanguageState(languageCodeOption: none());
}
