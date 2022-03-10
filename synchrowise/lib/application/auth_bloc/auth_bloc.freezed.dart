// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  _AuthCheckEvent check() {
    return const _AuthCheckEvent();
  }

  _AuthSignoutEvent signout() {
    return const _AuthSignoutEvent();
  }

  _AuthSigninWithGoogle signinWithGoogle() {
    return const _AuthSigninWithGoogle();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() check,
    required TResult Function() signout,
    required TResult Function() signinWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? check,
    TResult Function()? signout,
    TResult Function()? signinWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? check,
    TResult Function()? signout,
    TResult Function()? signinWithGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckEvent value) check,
    required TResult Function(_AuthSignoutEvent value) signout,
    required TResult Function(_AuthSigninWithGoogle value) signinWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthCheckEvent value)? check,
    TResult Function(_AuthSignoutEvent value)? signout,
    TResult Function(_AuthSigninWithGoogle value)? signinWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckEvent value)? check,
    TResult Function(_AuthSignoutEvent value)? signout,
    TResult Function(_AuthSigninWithGoogle value)? signinWithGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$AuthCheckEventCopyWith<$Res> {
  factory _$AuthCheckEventCopyWith(
          _AuthCheckEvent value, $Res Function(_AuthCheckEvent) then) =
      __$AuthCheckEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthCheckEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthCheckEventCopyWith<$Res> {
  __$AuthCheckEventCopyWithImpl(
      _AuthCheckEvent _value, $Res Function(_AuthCheckEvent) _then)
      : super(_value, (v) => _then(v as _AuthCheckEvent));

  @override
  _AuthCheckEvent get _value => super._value as _AuthCheckEvent;
}

/// @nodoc

class _$_AuthCheckEvent implements _AuthCheckEvent {
  const _$_AuthCheckEvent();

  @override
  String toString() {
    return 'AuthEvent.check()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthCheckEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() check,
    required TResult Function() signout,
    required TResult Function() signinWithGoogle,
  }) {
    return check();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? check,
    TResult Function()? signout,
    TResult Function()? signinWithGoogle,
  }) {
    return check?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? check,
    TResult Function()? signout,
    TResult Function()? signinWithGoogle,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckEvent value) check,
    required TResult Function(_AuthSignoutEvent value) signout,
    required TResult Function(_AuthSigninWithGoogle value) signinWithGoogle,
  }) {
    return check(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthCheckEvent value)? check,
    TResult Function(_AuthSignoutEvent value)? signout,
    TResult Function(_AuthSigninWithGoogle value)? signinWithGoogle,
  }) {
    return check?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckEvent value)? check,
    TResult Function(_AuthSignoutEvent value)? signout,
    TResult Function(_AuthSigninWithGoogle value)? signinWithGoogle,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(this);
    }
    return orElse();
  }
}

abstract class _AuthCheckEvent implements AuthEvent {
  const factory _AuthCheckEvent() = _$_AuthCheckEvent;
}

/// @nodoc
abstract class _$AuthSignoutEventCopyWith<$Res> {
  factory _$AuthSignoutEventCopyWith(
          _AuthSignoutEvent value, $Res Function(_AuthSignoutEvent) then) =
      __$AuthSignoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthSignoutEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthSignoutEventCopyWith<$Res> {
  __$AuthSignoutEventCopyWithImpl(
      _AuthSignoutEvent _value, $Res Function(_AuthSignoutEvent) _then)
      : super(_value, (v) => _then(v as _AuthSignoutEvent));

  @override
  _AuthSignoutEvent get _value => super._value as _AuthSignoutEvent;
}

/// @nodoc

class _$_AuthSignoutEvent implements _AuthSignoutEvent {
  const _$_AuthSignoutEvent();

  @override
  String toString() {
    return 'AuthEvent.signout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthSignoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() check,
    required TResult Function() signout,
    required TResult Function() signinWithGoogle,
  }) {
    return signout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? check,
    TResult Function()? signout,
    TResult Function()? signinWithGoogle,
  }) {
    return signout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? check,
    TResult Function()? signout,
    TResult Function()? signinWithGoogle,
    required TResult orElse(),
  }) {
    if (signout != null) {
      return signout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckEvent value) check,
    required TResult Function(_AuthSignoutEvent value) signout,
    required TResult Function(_AuthSigninWithGoogle value) signinWithGoogle,
  }) {
    return signout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthCheckEvent value)? check,
    TResult Function(_AuthSignoutEvent value)? signout,
    TResult Function(_AuthSigninWithGoogle value)? signinWithGoogle,
  }) {
    return signout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckEvent value)? check,
    TResult Function(_AuthSignoutEvent value)? signout,
    TResult Function(_AuthSigninWithGoogle value)? signinWithGoogle,
    required TResult orElse(),
  }) {
    if (signout != null) {
      return signout(this);
    }
    return orElse();
  }
}

abstract class _AuthSignoutEvent implements AuthEvent {
  const factory _AuthSignoutEvent() = _$_AuthSignoutEvent;
}

/// @nodoc
abstract class _$AuthSigninWithGoogleCopyWith<$Res> {
  factory _$AuthSigninWithGoogleCopyWith(_AuthSigninWithGoogle value,
          $Res Function(_AuthSigninWithGoogle) then) =
      __$AuthSigninWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthSigninWithGoogleCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthSigninWithGoogleCopyWith<$Res> {
  __$AuthSigninWithGoogleCopyWithImpl(
      _AuthSigninWithGoogle _value, $Res Function(_AuthSigninWithGoogle) _then)
      : super(_value, (v) => _then(v as _AuthSigninWithGoogle));

  @override
  _AuthSigninWithGoogle get _value => super._value as _AuthSigninWithGoogle;
}

/// @nodoc

class _$_AuthSigninWithGoogle implements _AuthSigninWithGoogle {
  const _$_AuthSigninWithGoogle();

  @override
  String toString() {
    return 'AuthEvent.signinWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthSigninWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() check,
    required TResult Function() signout,
    required TResult Function() signinWithGoogle,
  }) {
    return signinWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? check,
    TResult Function()? signout,
    TResult Function()? signinWithGoogle,
  }) {
    return signinWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? check,
    TResult Function()? signout,
    TResult Function()? signinWithGoogle,
    required TResult orElse(),
  }) {
    if (signinWithGoogle != null) {
      return signinWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckEvent value) check,
    required TResult Function(_AuthSignoutEvent value) signout,
    required TResult Function(_AuthSigninWithGoogle value) signinWithGoogle,
  }) {
    return signinWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthCheckEvent value)? check,
    TResult Function(_AuthSignoutEvent value)? signout,
    TResult Function(_AuthSigninWithGoogle value)? signinWithGoogle,
  }) {
    return signinWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckEvent value)? check,
    TResult Function(_AuthSignoutEvent value)? signout,
    TResult Function(_AuthSigninWithGoogle value)? signinWithGoogle,
    required TResult orElse(),
  }) {
    if (signinWithGoogle != null) {
      return signinWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _AuthSigninWithGoogle implements AuthEvent {
  const factory _AuthSigninWithGoogle() = _$_AuthSigninWithGoogle;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthInitialState initial() {
    return const _AuthInitialState();
  }

  _AuthUnauthorizedState unauthorized() {
    return const _AuthUnauthorizedState();
  }

  _AuthAuthorizedState authorized({required SynchrowiseUser user}) {
    return _AuthAuthorizedState(
      user: user,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function(SynchrowiseUser user) authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function(SynchrowiseUser user)? authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function(SynchrowiseUser user)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthUnauthorizedState value) unauthorized,
    required TResult Function(_AuthAuthorizedState value) authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthUnauthorizedState value)? unauthorized,
    TResult Function(_AuthAuthorizedState value)? authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthUnauthorizedState value)? unauthorized,
    TResult Function(_AuthAuthorizedState value)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$AuthInitialStateCopyWith<$Res> {
  factory _$AuthInitialStateCopyWith(
          _AuthInitialState value, $Res Function(_AuthInitialState) then) =
      __$AuthInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthInitialStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthInitialStateCopyWith<$Res> {
  __$AuthInitialStateCopyWithImpl(
      _AuthInitialState _value, $Res Function(_AuthInitialState) _then)
      : super(_value, (v) => _then(v as _AuthInitialState));

  @override
  _AuthInitialState get _value => super._value as _AuthInitialState;
}

/// @nodoc

class _$_AuthInitialState implements _AuthInitialState {
  const _$_AuthInitialState();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function(SynchrowiseUser user) authorized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function(SynchrowiseUser user)? authorized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function(SynchrowiseUser user)? authorized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthUnauthorizedState value) unauthorized,
    required TResult Function(_AuthAuthorizedState value) authorized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthUnauthorizedState value)? unauthorized,
    TResult Function(_AuthAuthorizedState value)? authorized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthUnauthorizedState value)? unauthorized,
    TResult Function(_AuthAuthorizedState value)? authorized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthInitialState implements AuthState {
  const factory _AuthInitialState() = _$_AuthInitialState;
}

/// @nodoc
abstract class _$AuthUnauthorizedStateCopyWith<$Res> {
  factory _$AuthUnauthorizedStateCopyWith(_AuthUnauthorizedState value,
          $Res Function(_AuthUnauthorizedState) then) =
      __$AuthUnauthorizedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthUnauthorizedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthUnauthorizedStateCopyWith<$Res> {
  __$AuthUnauthorizedStateCopyWithImpl(_AuthUnauthorizedState _value,
      $Res Function(_AuthUnauthorizedState) _then)
      : super(_value, (v) => _then(v as _AuthUnauthorizedState));

  @override
  _AuthUnauthorizedState get _value => super._value as _AuthUnauthorizedState;
}

/// @nodoc

class _$_AuthUnauthorizedState implements _AuthUnauthorizedState {
  const _$_AuthUnauthorizedState();

  @override
  String toString() {
    return 'AuthState.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthUnauthorizedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function(SynchrowiseUser user) authorized,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function(SynchrowiseUser user)? authorized,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function(SynchrowiseUser user)? authorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthUnauthorizedState value) unauthorized,
    required TResult Function(_AuthAuthorizedState value) authorized,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthUnauthorizedState value)? unauthorized,
    TResult Function(_AuthAuthorizedState value)? authorized,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthUnauthorizedState value)? unauthorized,
    TResult Function(_AuthAuthorizedState value)? authorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _AuthUnauthorizedState implements AuthState {
  const factory _AuthUnauthorizedState() = _$_AuthUnauthorizedState;
}

/// @nodoc
abstract class _$AuthAuthorizedStateCopyWith<$Res> {
  factory _$AuthAuthorizedStateCopyWith(_AuthAuthorizedState value,
          $Res Function(_AuthAuthorizedState) then) =
      __$AuthAuthorizedStateCopyWithImpl<$Res>;
  $Res call({SynchrowiseUser user});
}

/// @nodoc
class __$AuthAuthorizedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthAuthorizedStateCopyWith<$Res> {
  __$AuthAuthorizedStateCopyWithImpl(
      _AuthAuthorizedState _value, $Res Function(_AuthAuthorizedState) _then)
      : super(_value, (v) => _then(v as _AuthAuthorizedState));

  @override
  _AuthAuthorizedState get _value => super._value as _AuthAuthorizedState;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_AuthAuthorizedState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as SynchrowiseUser,
    ));
  }
}

/// @nodoc

class _$_AuthAuthorizedState implements _AuthAuthorizedState {
  const _$_AuthAuthorizedState({required this.user});

  @override
  final SynchrowiseUser user;

  @override
  String toString() {
    return 'AuthState.authorized(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthAuthorizedState &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$AuthAuthorizedStateCopyWith<_AuthAuthorizedState> get copyWith =>
      __$AuthAuthorizedStateCopyWithImpl<_AuthAuthorizedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function(SynchrowiseUser user) authorized,
  }) {
    return authorized(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function(SynchrowiseUser user)? authorized,
  }) {
    return authorized?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function(SynchrowiseUser user)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthUnauthorizedState value) unauthorized,
    required TResult Function(_AuthAuthorizedState value) authorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthUnauthorizedState value)? unauthorized,
    TResult Function(_AuthAuthorizedState value)? authorized,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthUnauthorizedState value)? unauthorized,
    TResult Function(_AuthAuthorizedState value)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _AuthAuthorizedState implements AuthState {
  const factory _AuthAuthorizedState({required SynchrowiseUser user}) =
      _$_AuthAuthorizedState;

  SynchrowiseUser get user;
  @JsonKey(ignore: true)
  _$AuthAuthorizedStateCopyWith<_AuthAuthorizedState> get copyWith =>
      throw _privateConstructorUsedError;
}
