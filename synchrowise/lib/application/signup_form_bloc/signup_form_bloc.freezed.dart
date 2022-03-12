// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signup_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignupFormEventTearOff {
  const _$SignupFormEventTearOff();

  _SignupWithEmailAndPasswordFormEvent signupWithEmailAndPassword(
      {required String email, required String password}) {
    return _SignupWithEmailAndPasswordFormEvent(
      email: email,
      password: password,
    );
  }

  _SignupWithGoogleFormEvent signupWithGoogle() {
    return const _SignupWithGoogleFormEvent();
  }

  _SignupUpdateEmailTextFormEvent updateEmailText({required String email}) {
    return _SignupUpdateEmailTextFormEvent(
      email: email,
    );
  }

  _SignupUpdatePasswordTextFormEvent updatePasswordText(
      {required String password}) {
    return _SignupUpdatePasswordTextFormEvent(
      password: password,
    );
  }
}

/// @nodoc
const $SignupFormEvent = _$SignupFormEventTearOff();

/// @nodoc
mixin _$SignupFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signupWithEmailAndPassword,
    required TResult Function() signupWithGoogle,
    required TResult Function(String email) updateEmailText,
    required TResult Function(String password) updatePasswordText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? signupWithEmailAndPassword,
    TResult Function()? signupWithGoogle,
    TResult Function(String email)? updateEmailText,
    TResult Function(String password)? updatePasswordText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signupWithEmailAndPassword,
    TResult Function()? signupWithGoogle,
    TResult Function(String email)? updateEmailText,
    TResult Function(String password)? updatePasswordText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupWithEmailAndPasswordFormEvent value)
        signupWithEmailAndPassword,
    required TResult Function(_SignupWithGoogleFormEvent value)
        signupWithGoogle,
    required TResult Function(_SignupUpdateEmailTextFormEvent value)
        updateEmailText,
    required TResult Function(_SignupUpdatePasswordTextFormEvent value)
        updatePasswordText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignupWithEmailAndPasswordFormEvent value)?
        signupWithEmailAndPassword,
    TResult Function(_SignupWithGoogleFormEvent value)? signupWithGoogle,
    TResult Function(_SignupUpdateEmailTextFormEvent value)? updateEmailText,
    TResult Function(_SignupUpdatePasswordTextFormEvent value)?
        updatePasswordText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupWithEmailAndPasswordFormEvent value)?
        signupWithEmailAndPassword,
    TResult Function(_SignupWithGoogleFormEvent value)? signupWithGoogle,
    TResult Function(_SignupUpdateEmailTextFormEvent value)? updateEmailText,
    TResult Function(_SignupUpdatePasswordTextFormEvent value)?
        updatePasswordText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupFormEventCopyWith<$Res> {
  factory $SignupFormEventCopyWith(
          SignupFormEvent value, $Res Function(SignupFormEvent) then) =
      _$SignupFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignupFormEventCopyWithImpl<$Res>
    implements $SignupFormEventCopyWith<$Res> {
  _$SignupFormEventCopyWithImpl(this._value, this._then);

  final SignupFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignupFormEvent) _then;
}

/// @nodoc
abstract class _$SignupWithEmailAndPasswordFormEventCopyWith<$Res> {
  factory _$SignupWithEmailAndPasswordFormEventCopyWith(
          _SignupWithEmailAndPasswordFormEvent value,
          $Res Function(_SignupWithEmailAndPasswordFormEvent) then) =
      __$SignupWithEmailAndPasswordFormEventCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$SignupWithEmailAndPasswordFormEventCopyWithImpl<$Res>
    extends _$SignupFormEventCopyWithImpl<$Res>
    implements _$SignupWithEmailAndPasswordFormEventCopyWith<$Res> {
  __$SignupWithEmailAndPasswordFormEventCopyWithImpl(
      _SignupWithEmailAndPasswordFormEvent _value,
      $Res Function(_SignupWithEmailAndPasswordFormEvent) _then)
      : super(_value, (v) => _then(v as _SignupWithEmailAndPasswordFormEvent));

  @override
  _SignupWithEmailAndPasswordFormEvent get _value =>
      super._value as _SignupWithEmailAndPasswordFormEvent;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_SignupWithEmailAndPasswordFormEvent(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignupWithEmailAndPasswordFormEvent
    implements _SignupWithEmailAndPasswordFormEvent {
  const _$_SignupWithEmailAndPasswordFormEvent(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignupFormEvent.signupWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignupWithEmailAndPasswordFormEvent &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$SignupWithEmailAndPasswordFormEventCopyWith<
          _SignupWithEmailAndPasswordFormEvent>
      get copyWith => __$SignupWithEmailAndPasswordFormEventCopyWithImpl<
          _SignupWithEmailAndPasswordFormEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signupWithEmailAndPassword,
    required TResult Function() signupWithGoogle,
    required TResult Function(String email) updateEmailText,
    required TResult Function(String password) updatePasswordText,
  }) {
    return signupWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? signupWithEmailAndPassword,
    TResult Function()? signupWithGoogle,
    TResult Function(String email)? updateEmailText,
    TResult Function(String password)? updatePasswordText,
  }) {
    return signupWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signupWithEmailAndPassword,
    TResult Function()? signupWithGoogle,
    TResult Function(String email)? updateEmailText,
    TResult Function(String password)? updatePasswordText,
    required TResult orElse(),
  }) {
    if (signupWithEmailAndPassword != null) {
      return signupWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupWithEmailAndPasswordFormEvent value)
        signupWithEmailAndPassword,
    required TResult Function(_SignupWithGoogleFormEvent value)
        signupWithGoogle,
    required TResult Function(_SignupUpdateEmailTextFormEvent value)
        updateEmailText,
    required TResult Function(_SignupUpdatePasswordTextFormEvent value)
        updatePasswordText,
  }) {
    return signupWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignupWithEmailAndPasswordFormEvent value)?
        signupWithEmailAndPassword,
    TResult Function(_SignupWithGoogleFormEvent value)? signupWithGoogle,
    TResult Function(_SignupUpdateEmailTextFormEvent value)? updateEmailText,
    TResult Function(_SignupUpdatePasswordTextFormEvent value)?
        updatePasswordText,
  }) {
    return signupWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupWithEmailAndPasswordFormEvent value)?
        signupWithEmailAndPassword,
    TResult Function(_SignupWithGoogleFormEvent value)? signupWithGoogle,
    TResult Function(_SignupUpdateEmailTextFormEvent value)? updateEmailText,
    TResult Function(_SignupUpdatePasswordTextFormEvent value)?
        updatePasswordText,
    required TResult orElse(),
  }) {
    if (signupWithEmailAndPassword != null) {
      return signupWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _SignupWithEmailAndPasswordFormEvent implements SignupFormEvent {
  const factory _SignupWithEmailAndPasswordFormEvent(
      {required String email,
      required String password}) = _$_SignupWithEmailAndPasswordFormEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$SignupWithEmailAndPasswordFormEventCopyWith<
          _SignupWithEmailAndPasswordFormEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignupWithGoogleFormEventCopyWith<$Res> {
  factory _$SignupWithGoogleFormEventCopyWith(_SignupWithGoogleFormEvent value,
          $Res Function(_SignupWithGoogleFormEvent) then) =
      __$SignupWithGoogleFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignupWithGoogleFormEventCopyWithImpl<$Res>
    extends _$SignupFormEventCopyWithImpl<$Res>
    implements _$SignupWithGoogleFormEventCopyWith<$Res> {
  __$SignupWithGoogleFormEventCopyWithImpl(_SignupWithGoogleFormEvent _value,
      $Res Function(_SignupWithGoogleFormEvent) _then)
      : super(_value, (v) => _then(v as _SignupWithGoogleFormEvent));

  @override
  _SignupWithGoogleFormEvent get _value =>
      super._value as _SignupWithGoogleFormEvent;
}

/// @nodoc

class _$_SignupWithGoogleFormEvent implements _SignupWithGoogleFormEvent {
  const _$_SignupWithGoogleFormEvent();

  @override
  String toString() {
    return 'SignupFormEvent.signupWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignupWithGoogleFormEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signupWithEmailAndPassword,
    required TResult Function() signupWithGoogle,
    required TResult Function(String email) updateEmailText,
    required TResult Function(String password) updatePasswordText,
  }) {
    return signupWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? signupWithEmailAndPassword,
    TResult Function()? signupWithGoogle,
    TResult Function(String email)? updateEmailText,
    TResult Function(String password)? updatePasswordText,
  }) {
    return signupWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signupWithEmailAndPassword,
    TResult Function()? signupWithGoogle,
    TResult Function(String email)? updateEmailText,
    TResult Function(String password)? updatePasswordText,
    required TResult orElse(),
  }) {
    if (signupWithGoogle != null) {
      return signupWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupWithEmailAndPasswordFormEvent value)
        signupWithEmailAndPassword,
    required TResult Function(_SignupWithGoogleFormEvent value)
        signupWithGoogle,
    required TResult Function(_SignupUpdateEmailTextFormEvent value)
        updateEmailText,
    required TResult Function(_SignupUpdatePasswordTextFormEvent value)
        updatePasswordText,
  }) {
    return signupWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignupWithEmailAndPasswordFormEvent value)?
        signupWithEmailAndPassword,
    TResult Function(_SignupWithGoogleFormEvent value)? signupWithGoogle,
    TResult Function(_SignupUpdateEmailTextFormEvent value)? updateEmailText,
    TResult Function(_SignupUpdatePasswordTextFormEvent value)?
        updatePasswordText,
  }) {
    return signupWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupWithEmailAndPasswordFormEvent value)?
        signupWithEmailAndPassword,
    TResult Function(_SignupWithGoogleFormEvent value)? signupWithGoogle,
    TResult Function(_SignupUpdateEmailTextFormEvent value)? updateEmailText,
    TResult Function(_SignupUpdatePasswordTextFormEvent value)?
        updatePasswordText,
    required TResult orElse(),
  }) {
    if (signupWithGoogle != null) {
      return signupWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignupWithGoogleFormEvent implements SignupFormEvent {
  const factory _SignupWithGoogleFormEvent() = _$_SignupWithGoogleFormEvent;
}

/// @nodoc
abstract class _$SignupUpdateEmailTextFormEventCopyWith<$Res> {
  factory _$SignupUpdateEmailTextFormEventCopyWith(
          _SignupUpdateEmailTextFormEvent value,
          $Res Function(_SignupUpdateEmailTextFormEvent) then) =
      __$SignupUpdateEmailTextFormEventCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$SignupUpdateEmailTextFormEventCopyWithImpl<$Res>
    extends _$SignupFormEventCopyWithImpl<$Res>
    implements _$SignupUpdateEmailTextFormEventCopyWith<$Res> {
  __$SignupUpdateEmailTextFormEventCopyWithImpl(
      _SignupUpdateEmailTextFormEvent _value,
      $Res Function(_SignupUpdateEmailTextFormEvent) _then)
      : super(_value, (v) => _then(v as _SignupUpdateEmailTextFormEvent));

  @override
  _SignupUpdateEmailTextFormEvent get _value =>
      super._value as _SignupUpdateEmailTextFormEvent;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_SignupUpdateEmailTextFormEvent(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignupUpdateEmailTextFormEvent
    implements _SignupUpdateEmailTextFormEvent {
  const _$_SignupUpdateEmailTextFormEvent({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'SignupFormEvent.updateEmailText(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignupUpdateEmailTextFormEvent &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$SignupUpdateEmailTextFormEventCopyWith<_SignupUpdateEmailTextFormEvent>
      get copyWith => __$SignupUpdateEmailTextFormEventCopyWithImpl<
          _SignupUpdateEmailTextFormEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signupWithEmailAndPassword,
    required TResult Function() signupWithGoogle,
    required TResult Function(String email) updateEmailText,
    required TResult Function(String password) updatePasswordText,
  }) {
    return updateEmailText(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? signupWithEmailAndPassword,
    TResult Function()? signupWithGoogle,
    TResult Function(String email)? updateEmailText,
    TResult Function(String password)? updatePasswordText,
  }) {
    return updateEmailText?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signupWithEmailAndPassword,
    TResult Function()? signupWithGoogle,
    TResult Function(String email)? updateEmailText,
    TResult Function(String password)? updatePasswordText,
    required TResult orElse(),
  }) {
    if (updateEmailText != null) {
      return updateEmailText(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupWithEmailAndPasswordFormEvent value)
        signupWithEmailAndPassword,
    required TResult Function(_SignupWithGoogleFormEvent value)
        signupWithGoogle,
    required TResult Function(_SignupUpdateEmailTextFormEvent value)
        updateEmailText,
    required TResult Function(_SignupUpdatePasswordTextFormEvent value)
        updatePasswordText,
  }) {
    return updateEmailText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignupWithEmailAndPasswordFormEvent value)?
        signupWithEmailAndPassword,
    TResult Function(_SignupWithGoogleFormEvent value)? signupWithGoogle,
    TResult Function(_SignupUpdateEmailTextFormEvent value)? updateEmailText,
    TResult Function(_SignupUpdatePasswordTextFormEvent value)?
        updatePasswordText,
  }) {
    return updateEmailText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupWithEmailAndPasswordFormEvent value)?
        signupWithEmailAndPassword,
    TResult Function(_SignupWithGoogleFormEvent value)? signupWithGoogle,
    TResult Function(_SignupUpdateEmailTextFormEvent value)? updateEmailText,
    TResult Function(_SignupUpdatePasswordTextFormEvent value)?
        updatePasswordText,
    required TResult orElse(),
  }) {
    if (updateEmailText != null) {
      return updateEmailText(this);
    }
    return orElse();
  }
}

abstract class _SignupUpdateEmailTextFormEvent implements SignupFormEvent {
  const factory _SignupUpdateEmailTextFormEvent({required String email}) =
      _$_SignupUpdateEmailTextFormEvent;

  String get email;
  @JsonKey(ignore: true)
  _$SignupUpdateEmailTextFormEventCopyWith<_SignupUpdateEmailTextFormEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignupUpdatePasswordTextFormEventCopyWith<$Res> {
  factory _$SignupUpdatePasswordTextFormEventCopyWith(
          _SignupUpdatePasswordTextFormEvent value,
          $Res Function(_SignupUpdatePasswordTextFormEvent) then) =
      __$SignupUpdatePasswordTextFormEventCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$SignupUpdatePasswordTextFormEventCopyWithImpl<$Res>
    extends _$SignupFormEventCopyWithImpl<$Res>
    implements _$SignupUpdatePasswordTextFormEventCopyWith<$Res> {
  __$SignupUpdatePasswordTextFormEventCopyWithImpl(
      _SignupUpdatePasswordTextFormEvent _value,
      $Res Function(_SignupUpdatePasswordTextFormEvent) _then)
      : super(_value, (v) => _then(v as _SignupUpdatePasswordTextFormEvent));

  @override
  _SignupUpdatePasswordTextFormEvent get _value =>
      super._value as _SignupUpdatePasswordTextFormEvent;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_SignupUpdatePasswordTextFormEvent(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignupUpdatePasswordTextFormEvent
    implements _SignupUpdatePasswordTextFormEvent {
  const _$_SignupUpdatePasswordTextFormEvent({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'SignupFormEvent.updatePasswordText(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignupUpdatePasswordTextFormEvent &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$SignupUpdatePasswordTextFormEventCopyWith<
          _SignupUpdatePasswordTextFormEvent>
      get copyWith => __$SignupUpdatePasswordTextFormEventCopyWithImpl<
          _SignupUpdatePasswordTextFormEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signupWithEmailAndPassword,
    required TResult Function() signupWithGoogle,
    required TResult Function(String email) updateEmailText,
    required TResult Function(String password) updatePasswordText,
  }) {
    return updatePasswordText(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? signupWithEmailAndPassword,
    TResult Function()? signupWithGoogle,
    TResult Function(String email)? updateEmailText,
    TResult Function(String password)? updatePasswordText,
  }) {
    return updatePasswordText?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signupWithEmailAndPassword,
    TResult Function()? signupWithGoogle,
    TResult Function(String email)? updateEmailText,
    TResult Function(String password)? updatePasswordText,
    required TResult orElse(),
  }) {
    if (updatePasswordText != null) {
      return updatePasswordText(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupWithEmailAndPasswordFormEvent value)
        signupWithEmailAndPassword,
    required TResult Function(_SignupWithGoogleFormEvent value)
        signupWithGoogle,
    required TResult Function(_SignupUpdateEmailTextFormEvent value)
        updateEmailText,
    required TResult Function(_SignupUpdatePasswordTextFormEvent value)
        updatePasswordText,
  }) {
    return updatePasswordText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignupWithEmailAndPasswordFormEvent value)?
        signupWithEmailAndPassword,
    TResult Function(_SignupWithGoogleFormEvent value)? signupWithGoogle,
    TResult Function(_SignupUpdateEmailTextFormEvent value)? updateEmailText,
    TResult Function(_SignupUpdatePasswordTextFormEvent value)?
        updatePasswordText,
  }) {
    return updatePasswordText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupWithEmailAndPasswordFormEvent value)?
        signupWithEmailAndPassword,
    TResult Function(_SignupWithGoogleFormEvent value)? signupWithGoogle,
    TResult Function(_SignupUpdateEmailTextFormEvent value)? updateEmailText,
    TResult Function(_SignupUpdatePasswordTextFormEvent value)?
        updatePasswordText,
    required TResult orElse(),
  }) {
    if (updatePasswordText != null) {
      return updatePasswordText(this);
    }
    return orElse();
  }
}

abstract class _SignupUpdatePasswordTextFormEvent implements SignupFormEvent {
  const factory _SignupUpdatePasswordTextFormEvent({required String password}) =
      _$_SignupUpdatePasswordTextFormEvent;

  String get password;
  @JsonKey(ignore: true)
  _$SignupUpdatePasswordTextFormEventCopyWith<
          _SignupUpdatePasswordTextFormEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignupFormStateTearOff {
  const _$SignupFormStateTearOff();

  _SignupFormInitialState initial() {
    return const _SignupFormInitialState();
  }

  _SignupFormFailureOrUnitState failureOrUnit(
      {required Either<AuthFailure, Unit> failureOrUnit}) {
    return _SignupFormFailureOrUnitState(
      failureOrUnit: failureOrUnit,
    );
  }

  _SignupFormFailureOrUserState failureOrUser(
      {required Either<AuthFailure, UserCredential> failureOrUser}) {
    return _SignupFormFailureOrUserState(
      failureOrUser: failureOrUser,
    );
  }

  _SignupFormFailureOrEmailState email(
      {required Either<ValueFailure, String> failureOrEmail}) {
    return _SignupFormFailureOrEmailState(
      failureOrEmail: failureOrEmail,
    );
  }

  _SignupFormFailureOrPasswordState password(
      {required Either<ValueFailure, String> failureOrPassword}) {
    return _SignupFormFailureOrPasswordState(
      failureOrPassword: failureOrPassword,
    );
  }
}

/// @nodoc
const $SignupFormState = _$SignupFormStateTearOff();

/// @nodoc
mixin _$SignupFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Either<AuthFailure, Unit> failureOrUnit)
        failureOrUnit,
    required TResult Function(Either<AuthFailure, UserCredential> failureOrUser)
        failureOrUser,
    required TResult Function(Either<ValueFailure, String> failureOrEmail)
        email,
    required TResult Function(Either<ValueFailure, String> failureOrPassword)
        password,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<AuthFailure, Unit> failureOrUnit)? failureOrUnit,
    TResult Function(Either<AuthFailure, UserCredential> failureOrUser)?
        failureOrUser,
    TResult Function(Either<ValueFailure, String> failureOrEmail)? email,
    TResult Function(Either<ValueFailure, String> failureOrPassword)? password,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<AuthFailure, Unit> failureOrUnit)? failureOrUnit,
    TResult Function(Either<AuthFailure, UserCredential> failureOrUser)?
        failureOrUser,
    TResult Function(Either<ValueFailure, String> failureOrEmail)? email,
    TResult Function(Either<ValueFailure, String> failureOrPassword)? password,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupFormInitialState value) initial,
    required TResult Function(_SignupFormFailureOrUnitState value)
        failureOrUnit,
    required TResult Function(_SignupFormFailureOrUserState value)
        failureOrUser,
    required TResult Function(_SignupFormFailureOrEmailState value) email,
    required TResult Function(_SignupFormFailureOrPasswordState value) password,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignupFormInitialState value)? initial,
    TResult Function(_SignupFormFailureOrUnitState value)? failureOrUnit,
    TResult Function(_SignupFormFailureOrUserState value)? failureOrUser,
    TResult Function(_SignupFormFailureOrEmailState value)? email,
    TResult Function(_SignupFormFailureOrPasswordState value)? password,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupFormInitialState value)? initial,
    TResult Function(_SignupFormFailureOrUnitState value)? failureOrUnit,
    TResult Function(_SignupFormFailureOrUserState value)? failureOrUser,
    TResult Function(_SignupFormFailureOrEmailState value)? email,
    TResult Function(_SignupFormFailureOrPasswordState value)? password,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupFormStateCopyWith<$Res> {
  factory $SignupFormStateCopyWith(
          SignupFormState value, $Res Function(SignupFormState) then) =
      _$SignupFormStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignupFormStateCopyWithImpl<$Res>
    implements $SignupFormStateCopyWith<$Res> {
  _$SignupFormStateCopyWithImpl(this._value, this._then);

  final SignupFormState _value;
  // ignore: unused_field
  final $Res Function(SignupFormState) _then;
}

/// @nodoc
abstract class _$SignupFormInitialStateCopyWith<$Res> {
  factory _$SignupFormInitialStateCopyWith(_SignupFormInitialState value,
          $Res Function(_SignupFormInitialState) then) =
      __$SignupFormInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignupFormInitialStateCopyWithImpl<$Res>
    extends _$SignupFormStateCopyWithImpl<$Res>
    implements _$SignupFormInitialStateCopyWith<$Res> {
  __$SignupFormInitialStateCopyWithImpl(_SignupFormInitialState _value,
      $Res Function(_SignupFormInitialState) _then)
      : super(_value, (v) => _then(v as _SignupFormInitialState));

  @override
  _SignupFormInitialState get _value => super._value as _SignupFormInitialState;
}

/// @nodoc

class _$_SignupFormInitialState implements _SignupFormInitialState {
  const _$_SignupFormInitialState();

  @override
  String toString() {
    return 'SignupFormState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignupFormInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Either<AuthFailure, Unit> failureOrUnit)
        failureOrUnit,
    required TResult Function(Either<AuthFailure, UserCredential> failureOrUser)
        failureOrUser,
    required TResult Function(Either<ValueFailure, String> failureOrEmail)
        email,
    required TResult Function(Either<ValueFailure, String> failureOrPassword)
        password,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<AuthFailure, Unit> failureOrUnit)? failureOrUnit,
    TResult Function(Either<AuthFailure, UserCredential> failureOrUser)?
        failureOrUser,
    TResult Function(Either<ValueFailure, String> failureOrEmail)? email,
    TResult Function(Either<ValueFailure, String> failureOrPassword)? password,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<AuthFailure, Unit> failureOrUnit)? failureOrUnit,
    TResult Function(Either<AuthFailure, UserCredential> failureOrUser)?
        failureOrUser,
    TResult Function(Either<ValueFailure, String> failureOrEmail)? email,
    TResult Function(Either<ValueFailure, String> failureOrPassword)? password,
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
    required TResult Function(_SignupFormInitialState value) initial,
    required TResult Function(_SignupFormFailureOrUnitState value)
        failureOrUnit,
    required TResult Function(_SignupFormFailureOrUserState value)
        failureOrUser,
    required TResult Function(_SignupFormFailureOrEmailState value) email,
    required TResult Function(_SignupFormFailureOrPasswordState value) password,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignupFormInitialState value)? initial,
    TResult Function(_SignupFormFailureOrUnitState value)? failureOrUnit,
    TResult Function(_SignupFormFailureOrUserState value)? failureOrUser,
    TResult Function(_SignupFormFailureOrEmailState value)? email,
    TResult Function(_SignupFormFailureOrPasswordState value)? password,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupFormInitialState value)? initial,
    TResult Function(_SignupFormFailureOrUnitState value)? failureOrUnit,
    TResult Function(_SignupFormFailureOrUserState value)? failureOrUser,
    TResult Function(_SignupFormFailureOrEmailState value)? email,
    TResult Function(_SignupFormFailureOrPasswordState value)? password,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SignupFormInitialState implements SignupFormState {
  const factory _SignupFormInitialState() = _$_SignupFormInitialState;
}

/// @nodoc
abstract class _$SignupFormFailureOrUnitStateCopyWith<$Res> {
  factory _$SignupFormFailureOrUnitStateCopyWith(
          _SignupFormFailureOrUnitState value,
          $Res Function(_SignupFormFailureOrUnitState) then) =
      __$SignupFormFailureOrUnitStateCopyWithImpl<$Res>;
  $Res call({Either<AuthFailure, Unit> failureOrUnit});
}

/// @nodoc
class __$SignupFormFailureOrUnitStateCopyWithImpl<$Res>
    extends _$SignupFormStateCopyWithImpl<$Res>
    implements _$SignupFormFailureOrUnitStateCopyWith<$Res> {
  __$SignupFormFailureOrUnitStateCopyWithImpl(
      _SignupFormFailureOrUnitState _value,
      $Res Function(_SignupFormFailureOrUnitState) _then)
      : super(_value, (v) => _then(v as _SignupFormFailureOrUnitState));

  @override
  _SignupFormFailureOrUnitState get _value =>
      super._value as _SignupFormFailureOrUnitState;

  @override
  $Res call({
    Object? failureOrUnit = freezed,
  }) {
    return _then(_SignupFormFailureOrUnitState(
      failureOrUnit: failureOrUnit == freezed
          ? _value.failureOrUnit
          : failureOrUnit // ignore: cast_nullable_to_non_nullable
              as Either<AuthFailure, Unit>,
    ));
  }
}

/// @nodoc

class _$_SignupFormFailureOrUnitState implements _SignupFormFailureOrUnitState {
  const _$_SignupFormFailureOrUnitState({required this.failureOrUnit});

  @override
  final Either<AuthFailure, Unit> failureOrUnit;

  @override
  String toString() {
    return 'SignupFormState.failureOrUnit(failureOrUnit: $failureOrUnit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignupFormFailureOrUnitState &&
            const DeepCollectionEquality()
                .equals(other.failureOrUnit, failureOrUnit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrUnit));

  @JsonKey(ignore: true)
  @override
  _$SignupFormFailureOrUnitStateCopyWith<_SignupFormFailureOrUnitState>
      get copyWith => __$SignupFormFailureOrUnitStateCopyWithImpl<
          _SignupFormFailureOrUnitState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Either<AuthFailure, Unit> failureOrUnit)
        failureOrUnit,
    required TResult Function(Either<AuthFailure, UserCredential> failureOrUser)
        failureOrUser,
    required TResult Function(Either<ValueFailure, String> failureOrEmail)
        email,
    required TResult Function(Either<ValueFailure, String> failureOrPassword)
        password,
  }) {
    return failureOrUnit(this.failureOrUnit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<AuthFailure, Unit> failureOrUnit)? failureOrUnit,
    TResult Function(Either<AuthFailure, UserCredential> failureOrUser)?
        failureOrUser,
    TResult Function(Either<ValueFailure, String> failureOrEmail)? email,
    TResult Function(Either<ValueFailure, String> failureOrPassword)? password,
  }) {
    return failureOrUnit?.call(this.failureOrUnit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<AuthFailure, Unit> failureOrUnit)? failureOrUnit,
    TResult Function(Either<AuthFailure, UserCredential> failureOrUser)?
        failureOrUser,
    TResult Function(Either<ValueFailure, String> failureOrEmail)? email,
    TResult Function(Either<ValueFailure, String> failureOrPassword)? password,
    required TResult orElse(),
  }) {
    if (failureOrUnit != null) {
      return failureOrUnit(this.failureOrUnit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupFormInitialState value) initial,
    required TResult Function(_SignupFormFailureOrUnitState value)
        failureOrUnit,
    required TResult Function(_SignupFormFailureOrUserState value)
        failureOrUser,
    required TResult Function(_SignupFormFailureOrEmailState value) email,
    required TResult Function(_SignupFormFailureOrPasswordState value) password,
  }) {
    return failureOrUnit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignupFormInitialState value)? initial,
    TResult Function(_SignupFormFailureOrUnitState value)? failureOrUnit,
    TResult Function(_SignupFormFailureOrUserState value)? failureOrUser,
    TResult Function(_SignupFormFailureOrEmailState value)? email,
    TResult Function(_SignupFormFailureOrPasswordState value)? password,
  }) {
    return failureOrUnit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupFormInitialState value)? initial,
    TResult Function(_SignupFormFailureOrUnitState value)? failureOrUnit,
    TResult Function(_SignupFormFailureOrUserState value)? failureOrUser,
    TResult Function(_SignupFormFailureOrEmailState value)? email,
    TResult Function(_SignupFormFailureOrPasswordState value)? password,
    required TResult orElse(),
  }) {
    if (failureOrUnit != null) {
      return failureOrUnit(this);
    }
    return orElse();
  }
}

abstract class _SignupFormFailureOrUnitState implements SignupFormState {
  const factory _SignupFormFailureOrUnitState(
          {required Either<AuthFailure, Unit> failureOrUnit}) =
      _$_SignupFormFailureOrUnitState;

  Either<AuthFailure, Unit> get failureOrUnit;
  @JsonKey(ignore: true)
  _$SignupFormFailureOrUnitStateCopyWith<_SignupFormFailureOrUnitState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignupFormFailureOrUserStateCopyWith<$Res> {
  factory _$SignupFormFailureOrUserStateCopyWith(
          _SignupFormFailureOrUserState value,
          $Res Function(_SignupFormFailureOrUserState) then) =
      __$SignupFormFailureOrUserStateCopyWithImpl<$Res>;
  $Res call({Either<AuthFailure, UserCredential> failureOrUser});
}

/// @nodoc
class __$SignupFormFailureOrUserStateCopyWithImpl<$Res>
    extends _$SignupFormStateCopyWithImpl<$Res>
    implements _$SignupFormFailureOrUserStateCopyWith<$Res> {
  __$SignupFormFailureOrUserStateCopyWithImpl(
      _SignupFormFailureOrUserState _value,
      $Res Function(_SignupFormFailureOrUserState) _then)
      : super(_value, (v) => _then(v as _SignupFormFailureOrUserState));

  @override
  _SignupFormFailureOrUserState get _value =>
      super._value as _SignupFormFailureOrUserState;

  @override
  $Res call({
    Object? failureOrUser = freezed,
  }) {
    return _then(_SignupFormFailureOrUserState(
      failureOrUser: failureOrUser == freezed
          ? _value.failureOrUser
          : failureOrUser // ignore: cast_nullable_to_non_nullable
              as Either<AuthFailure, UserCredential>,
    ));
  }
}

/// @nodoc

class _$_SignupFormFailureOrUserState implements _SignupFormFailureOrUserState {
  const _$_SignupFormFailureOrUserState({required this.failureOrUser});

  @override
  final Either<AuthFailure, UserCredential> failureOrUser;

  @override
  String toString() {
    return 'SignupFormState.failureOrUser(failureOrUser: $failureOrUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignupFormFailureOrUserState &&
            const DeepCollectionEquality()
                .equals(other.failureOrUser, failureOrUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrUser));

  @JsonKey(ignore: true)
  @override
  _$SignupFormFailureOrUserStateCopyWith<_SignupFormFailureOrUserState>
      get copyWith => __$SignupFormFailureOrUserStateCopyWithImpl<
          _SignupFormFailureOrUserState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Either<AuthFailure, Unit> failureOrUnit)
        failureOrUnit,
    required TResult Function(Either<AuthFailure, UserCredential> failureOrUser)
        failureOrUser,
    required TResult Function(Either<ValueFailure, String> failureOrEmail)
        email,
    required TResult Function(Either<ValueFailure, String> failureOrPassword)
        password,
  }) {
    return failureOrUser(this.failureOrUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<AuthFailure, Unit> failureOrUnit)? failureOrUnit,
    TResult Function(Either<AuthFailure, UserCredential> failureOrUser)?
        failureOrUser,
    TResult Function(Either<ValueFailure, String> failureOrEmail)? email,
    TResult Function(Either<ValueFailure, String> failureOrPassword)? password,
  }) {
    return failureOrUser?.call(this.failureOrUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<AuthFailure, Unit> failureOrUnit)? failureOrUnit,
    TResult Function(Either<AuthFailure, UserCredential> failureOrUser)?
        failureOrUser,
    TResult Function(Either<ValueFailure, String> failureOrEmail)? email,
    TResult Function(Either<ValueFailure, String> failureOrPassword)? password,
    required TResult orElse(),
  }) {
    if (failureOrUser != null) {
      return failureOrUser(this.failureOrUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupFormInitialState value) initial,
    required TResult Function(_SignupFormFailureOrUnitState value)
        failureOrUnit,
    required TResult Function(_SignupFormFailureOrUserState value)
        failureOrUser,
    required TResult Function(_SignupFormFailureOrEmailState value) email,
    required TResult Function(_SignupFormFailureOrPasswordState value) password,
  }) {
    return failureOrUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignupFormInitialState value)? initial,
    TResult Function(_SignupFormFailureOrUnitState value)? failureOrUnit,
    TResult Function(_SignupFormFailureOrUserState value)? failureOrUser,
    TResult Function(_SignupFormFailureOrEmailState value)? email,
    TResult Function(_SignupFormFailureOrPasswordState value)? password,
  }) {
    return failureOrUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupFormInitialState value)? initial,
    TResult Function(_SignupFormFailureOrUnitState value)? failureOrUnit,
    TResult Function(_SignupFormFailureOrUserState value)? failureOrUser,
    TResult Function(_SignupFormFailureOrEmailState value)? email,
    TResult Function(_SignupFormFailureOrPasswordState value)? password,
    required TResult orElse(),
  }) {
    if (failureOrUser != null) {
      return failureOrUser(this);
    }
    return orElse();
  }
}

abstract class _SignupFormFailureOrUserState implements SignupFormState {
  const factory _SignupFormFailureOrUserState(
          {required Either<AuthFailure, UserCredential> failureOrUser}) =
      _$_SignupFormFailureOrUserState;

  Either<AuthFailure, UserCredential> get failureOrUser;
  @JsonKey(ignore: true)
  _$SignupFormFailureOrUserStateCopyWith<_SignupFormFailureOrUserState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignupFormFailureOrEmailStateCopyWith<$Res> {
  factory _$SignupFormFailureOrEmailStateCopyWith(
          _SignupFormFailureOrEmailState value,
          $Res Function(_SignupFormFailureOrEmailState) then) =
      __$SignupFormFailureOrEmailStateCopyWithImpl<$Res>;
  $Res call({Either<ValueFailure, String> failureOrEmail});
}

/// @nodoc
class __$SignupFormFailureOrEmailStateCopyWithImpl<$Res>
    extends _$SignupFormStateCopyWithImpl<$Res>
    implements _$SignupFormFailureOrEmailStateCopyWith<$Res> {
  __$SignupFormFailureOrEmailStateCopyWithImpl(
      _SignupFormFailureOrEmailState _value,
      $Res Function(_SignupFormFailureOrEmailState) _then)
      : super(_value, (v) => _then(v as _SignupFormFailureOrEmailState));

  @override
  _SignupFormFailureOrEmailState get _value =>
      super._value as _SignupFormFailureOrEmailState;

  @override
  $Res call({
    Object? failureOrEmail = freezed,
  }) {
    return _then(_SignupFormFailureOrEmailState(
      failureOrEmail: failureOrEmail == freezed
          ? _value.failureOrEmail
          : failureOrEmail // ignore: cast_nullable_to_non_nullable
              as Either<ValueFailure, String>,
    ));
  }
}

/// @nodoc

class _$_SignupFormFailureOrEmailState
    implements _SignupFormFailureOrEmailState {
  const _$_SignupFormFailureOrEmailState({required this.failureOrEmail});

  @override
  final Either<ValueFailure, String> failureOrEmail;

  @override
  String toString() {
    return 'SignupFormState.email(failureOrEmail: $failureOrEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignupFormFailureOrEmailState &&
            const DeepCollectionEquality()
                .equals(other.failureOrEmail, failureOrEmail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrEmail));

  @JsonKey(ignore: true)
  @override
  _$SignupFormFailureOrEmailStateCopyWith<_SignupFormFailureOrEmailState>
      get copyWith => __$SignupFormFailureOrEmailStateCopyWithImpl<
          _SignupFormFailureOrEmailState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Either<AuthFailure, Unit> failureOrUnit)
        failureOrUnit,
    required TResult Function(Either<AuthFailure, UserCredential> failureOrUser)
        failureOrUser,
    required TResult Function(Either<ValueFailure, String> failureOrEmail)
        email,
    required TResult Function(Either<ValueFailure, String> failureOrPassword)
        password,
  }) {
    return email(failureOrEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<AuthFailure, Unit> failureOrUnit)? failureOrUnit,
    TResult Function(Either<AuthFailure, UserCredential> failureOrUser)?
        failureOrUser,
    TResult Function(Either<ValueFailure, String> failureOrEmail)? email,
    TResult Function(Either<ValueFailure, String> failureOrPassword)? password,
  }) {
    return email?.call(failureOrEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<AuthFailure, Unit> failureOrUnit)? failureOrUnit,
    TResult Function(Either<AuthFailure, UserCredential> failureOrUser)?
        failureOrUser,
    TResult Function(Either<ValueFailure, String> failureOrEmail)? email,
    TResult Function(Either<ValueFailure, String> failureOrPassword)? password,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email(failureOrEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupFormInitialState value) initial,
    required TResult Function(_SignupFormFailureOrUnitState value)
        failureOrUnit,
    required TResult Function(_SignupFormFailureOrUserState value)
        failureOrUser,
    required TResult Function(_SignupFormFailureOrEmailState value) email,
    required TResult Function(_SignupFormFailureOrPasswordState value) password,
  }) {
    return email(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignupFormInitialState value)? initial,
    TResult Function(_SignupFormFailureOrUnitState value)? failureOrUnit,
    TResult Function(_SignupFormFailureOrUserState value)? failureOrUser,
    TResult Function(_SignupFormFailureOrEmailState value)? email,
    TResult Function(_SignupFormFailureOrPasswordState value)? password,
  }) {
    return email?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupFormInitialState value)? initial,
    TResult Function(_SignupFormFailureOrUnitState value)? failureOrUnit,
    TResult Function(_SignupFormFailureOrUserState value)? failureOrUser,
    TResult Function(_SignupFormFailureOrEmailState value)? email,
    TResult Function(_SignupFormFailureOrPasswordState value)? password,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email(this);
    }
    return orElse();
  }
}

abstract class _SignupFormFailureOrEmailState implements SignupFormState {
  const factory _SignupFormFailureOrEmailState(
          {required Either<ValueFailure, String> failureOrEmail}) =
      _$_SignupFormFailureOrEmailState;

  Either<ValueFailure, String> get failureOrEmail;
  @JsonKey(ignore: true)
  _$SignupFormFailureOrEmailStateCopyWith<_SignupFormFailureOrEmailState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignupFormFailureOrPasswordStateCopyWith<$Res> {
  factory _$SignupFormFailureOrPasswordStateCopyWith(
          _SignupFormFailureOrPasswordState value,
          $Res Function(_SignupFormFailureOrPasswordState) then) =
      __$SignupFormFailureOrPasswordStateCopyWithImpl<$Res>;
  $Res call({Either<ValueFailure, String> failureOrPassword});
}

/// @nodoc
class __$SignupFormFailureOrPasswordStateCopyWithImpl<$Res>
    extends _$SignupFormStateCopyWithImpl<$Res>
    implements _$SignupFormFailureOrPasswordStateCopyWith<$Res> {
  __$SignupFormFailureOrPasswordStateCopyWithImpl(
      _SignupFormFailureOrPasswordState _value,
      $Res Function(_SignupFormFailureOrPasswordState) _then)
      : super(_value, (v) => _then(v as _SignupFormFailureOrPasswordState));

  @override
  _SignupFormFailureOrPasswordState get _value =>
      super._value as _SignupFormFailureOrPasswordState;

  @override
  $Res call({
    Object? failureOrPassword = freezed,
  }) {
    return _then(_SignupFormFailureOrPasswordState(
      failureOrPassword: failureOrPassword == freezed
          ? _value.failureOrPassword
          : failureOrPassword // ignore: cast_nullable_to_non_nullable
              as Either<ValueFailure, String>,
    ));
  }
}

/// @nodoc

class _$_SignupFormFailureOrPasswordState
    implements _SignupFormFailureOrPasswordState {
  const _$_SignupFormFailureOrPasswordState({required this.failureOrPassword});

  @override
  final Either<ValueFailure, String> failureOrPassword;

  @override
  String toString() {
    return 'SignupFormState.password(failureOrPassword: $failureOrPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignupFormFailureOrPasswordState &&
            const DeepCollectionEquality()
                .equals(other.failureOrPassword, failureOrPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrPassword));

  @JsonKey(ignore: true)
  @override
  _$SignupFormFailureOrPasswordStateCopyWith<_SignupFormFailureOrPasswordState>
      get copyWith => __$SignupFormFailureOrPasswordStateCopyWithImpl<
          _SignupFormFailureOrPasswordState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Either<AuthFailure, Unit> failureOrUnit)
        failureOrUnit,
    required TResult Function(Either<AuthFailure, UserCredential> failureOrUser)
        failureOrUser,
    required TResult Function(Either<ValueFailure, String> failureOrEmail)
        email,
    required TResult Function(Either<ValueFailure, String> failureOrPassword)
        password,
  }) {
    return password(failureOrPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<AuthFailure, Unit> failureOrUnit)? failureOrUnit,
    TResult Function(Either<AuthFailure, UserCredential> failureOrUser)?
        failureOrUser,
    TResult Function(Either<ValueFailure, String> failureOrEmail)? email,
    TResult Function(Either<ValueFailure, String> failureOrPassword)? password,
  }) {
    return password?.call(failureOrPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<AuthFailure, Unit> failureOrUnit)? failureOrUnit,
    TResult Function(Either<AuthFailure, UserCredential> failureOrUser)?
        failureOrUser,
    TResult Function(Either<ValueFailure, String> failureOrEmail)? email,
    TResult Function(Either<ValueFailure, String> failureOrPassword)? password,
    required TResult orElse(),
  }) {
    if (password != null) {
      return password(failureOrPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupFormInitialState value) initial,
    required TResult Function(_SignupFormFailureOrUnitState value)
        failureOrUnit,
    required TResult Function(_SignupFormFailureOrUserState value)
        failureOrUser,
    required TResult Function(_SignupFormFailureOrEmailState value) email,
    required TResult Function(_SignupFormFailureOrPasswordState value) password,
  }) {
    return password(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignupFormInitialState value)? initial,
    TResult Function(_SignupFormFailureOrUnitState value)? failureOrUnit,
    TResult Function(_SignupFormFailureOrUserState value)? failureOrUser,
    TResult Function(_SignupFormFailureOrEmailState value)? email,
    TResult Function(_SignupFormFailureOrPasswordState value)? password,
  }) {
    return password?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupFormInitialState value)? initial,
    TResult Function(_SignupFormFailureOrUnitState value)? failureOrUnit,
    TResult Function(_SignupFormFailureOrUserState value)? failureOrUser,
    TResult Function(_SignupFormFailureOrEmailState value)? email,
    TResult Function(_SignupFormFailureOrPasswordState value)? password,
    required TResult orElse(),
  }) {
    if (password != null) {
      return password(this);
    }
    return orElse();
  }
}

abstract class _SignupFormFailureOrPasswordState implements SignupFormState {
  const factory _SignupFormFailureOrPasswordState(
          {required Either<ValueFailure, String> failureOrPassword}) =
      _$_SignupFormFailureOrPasswordState;

  Either<ValueFailure, String> get failureOrPassword;
  @JsonKey(ignore: true)
  _$SignupFormFailureOrPasswordStateCopyWith<_SignupFormFailureOrPasswordState>
      get copyWith => throw _privateConstructorUsedError;
}
