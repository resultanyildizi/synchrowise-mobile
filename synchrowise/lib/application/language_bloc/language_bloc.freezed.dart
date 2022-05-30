// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'language_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LanguageEventTearOff {
  const _$LanguageEventTearOff();

  _SetLanguageCodeEvent setLanguageCode({required String languageCode}) {
    return _SetLanguageCodeEvent(
      languageCode: languageCode,
    );
  }
}

/// @nodoc
const $LanguageEvent = _$LanguageEventTearOff();

/// @nodoc
mixin _$LanguageEvent {
  String get languageCode => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String languageCode) setLanguageCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String languageCode)? setLanguageCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String languageCode)? setLanguageCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLanguageCodeEvent value) setLanguageCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetLanguageCodeEvent value)? setLanguageCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLanguageCodeEvent value)? setLanguageCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanguageEventCopyWith<LanguageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageEventCopyWith<$Res> {
  factory $LanguageEventCopyWith(
          LanguageEvent value, $Res Function(LanguageEvent) then) =
      _$LanguageEventCopyWithImpl<$Res>;
  $Res call({String languageCode});
}

/// @nodoc
class _$LanguageEventCopyWithImpl<$Res>
    implements $LanguageEventCopyWith<$Res> {
  _$LanguageEventCopyWithImpl(this._value, this._then);

  final LanguageEvent _value;
  // ignore: unused_field
  final $Res Function(LanguageEvent) _then;

  @override
  $Res call({
    Object? languageCode = freezed,
  }) {
    return _then(_value.copyWith(
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SetLanguageCodeEventCopyWith<$Res>
    implements $LanguageEventCopyWith<$Res> {
  factory _$SetLanguageCodeEventCopyWith(_SetLanguageCodeEvent value,
          $Res Function(_SetLanguageCodeEvent) then) =
      __$SetLanguageCodeEventCopyWithImpl<$Res>;
  @override
  $Res call({String languageCode});
}

/// @nodoc
class __$SetLanguageCodeEventCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res>
    implements _$SetLanguageCodeEventCopyWith<$Res> {
  __$SetLanguageCodeEventCopyWithImpl(
      _SetLanguageCodeEvent _value, $Res Function(_SetLanguageCodeEvent) _then)
      : super(_value, (v) => _then(v as _SetLanguageCodeEvent));

  @override
  _SetLanguageCodeEvent get _value => super._value as _SetLanguageCodeEvent;

  @override
  $Res call({
    Object? languageCode = freezed,
  }) {
    return _then(_SetLanguageCodeEvent(
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetLanguageCodeEvent implements _SetLanguageCodeEvent {
  const _$_SetLanguageCodeEvent({required this.languageCode});

  @override
  final String languageCode;

  @override
  String toString() {
    return 'LanguageEvent.setLanguageCode(languageCode: $languageCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetLanguageCodeEvent &&
            const DeepCollectionEquality()
                .equals(other.languageCode, languageCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(languageCode));

  @JsonKey(ignore: true)
  @override
  _$SetLanguageCodeEventCopyWith<_SetLanguageCodeEvent> get copyWith =>
      __$SetLanguageCodeEventCopyWithImpl<_SetLanguageCodeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String languageCode) setLanguageCode,
  }) {
    return setLanguageCode(languageCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String languageCode)? setLanguageCode,
  }) {
    return setLanguageCode?.call(languageCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String languageCode)? setLanguageCode,
    required TResult orElse(),
  }) {
    if (setLanguageCode != null) {
      return setLanguageCode(languageCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLanguageCodeEvent value) setLanguageCode,
  }) {
    return setLanguageCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetLanguageCodeEvent value)? setLanguageCode,
  }) {
    return setLanguageCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLanguageCodeEvent value)? setLanguageCode,
    required TResult orElse(),
  }) {
    if (setLanguageCode != null) {
      return setLanguageCode(this);
    }
    return orElse();
  }
}

abstract class _SetLanguageCodeEvent implements LanguageEvent {
  const factory _SetLanguageCodeEvent({required String languageCode}) =
      _$_SetLanguageCodeEvent;

  @override
  String get languageCode;
  @override
  @JsonKey(ignore: true)
  _$SetLanguageCodeEventCopyWith<_SetLanguageCodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LanguageStateTearOff {
  const _$LanguageStateTearOff();

  _LanguageState call({required Option<String> languageCodeOption}) {
    return _LanguageState(
      languageCodeOption: languageCodeOption,
    );
  }
}

/// @nodoc
const $LanguageState = _$LanguageStateTearOff();

/// @nodoc
mixin _$LanguageState {
  Option<String> get languageCodeOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanguageStateCopyWith<LanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageStateCopyWith<$Res> {
  factory $LanguageStateCopyWith(
          LanguageState value, $Res Function(LanguageState) then) =
      _$LanguageStateCopyWithImpl<$Res>;
  $Res call({Option<String> languageCodeOption});
}

/// @nodoc
class _$LanguageStateCopyWithImpl<$Res>
    implements $LanguageStateCopyWith<$Res> {
  _$LanguageStateCopyWithImpl(this._value, this._then);

  final LanguageState _value;
  // ignore: unused_field
  final $Res Function(LanguageState) _then;

  @override
  $Res call({
    Object? languageCodeOption = freezed,
  }) {
    return _then(_value.copyWith(
      languageCodeOption: languageCodeOption == freezed
          ? _value.languageCodeOption
          : languageCodeOption // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc
abstract class _$LanguageStateCopyWith<$Res>
    implements $LanguageStateCopyWith<$Res> {
  factory _$LanguageStateCopyWith(
          _LanguageState value, $Res Function(_LanguageState) then) =
      __$LanguageStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<String> languageCodeOption});
}

/// @nodoc
class __$LanguageStateCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res>
    implements _$LanguageStateCopyWith<$Res> {
  __$LanguageStateCopyWithImpl(
      _LanguageState _value, $Res Function(_LanguageState) _then)
      : super(_value, (v) => _then(v as _LanguageState));

  @override
  _LanguageState get _value => super._value as _LanguageState;

  @override
  $Res call({
    Object? languageCodeOption = freezed,
  }) {
    return _then(_LanguageState(
      languageCodeOption: languageCodeOption == freezed
          ? _value.languageCodeOption
          : languageCodeOption // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_LanguageState implements _LanguageState {
  const _$_LanguageState({required this.languageCodeOption});

  @override
  final Option<String> languageCodeOption;

  @override
  String toString() {
    return 'LanguageState(languageCodeOption: $languageCodeOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LanguageState &&
            const DeepCollectionEquality()
                .equals(other.languageCodeOption, languageCodeOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(languageCodeOption));

  @JsonKey(ignore: true)
  @override
  _$LanguageStateCopyWith<_LanguageState> get copyWith =>
      __$LanguageStateCopyWithImpl<_LanguageState>(this, _$identity);
}

abstract class _LanguageState implements LanguageState {
  const factory _LanguageState({required Option<String> languageCodeOption}) =
      _$_LanguageState;

  @override
  Option<String> get languageCodeOption;
  @override
  @JsonKey(ignore: true)
  _$LanguageStateCopyWith<_LanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}
