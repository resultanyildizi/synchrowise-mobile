part of 'language_bloc.dart';

@freezed
class LanguageEvent with _$LanguageEvent {
  const factory LanguageEvent.setLanguageCode({
    required String languageCode,
  }) = _SetLanguageCodeEvent;
}
