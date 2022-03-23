// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  _MinLengthFailure minLength(int length) {
    return _MinLengthFailure(
      length,
    );
  }

  _MaxLengthFailure maxLength(int length) {
    return _MaxLengthFailure(
      length,
    );
  }

  _InvalidUsernameFailure invalidUsername() {
    return const _InvalidUsernameFailure();
  }

  _InvalidEmailFailure invalidEmail() {
    return const _InvalidEmailFailure();
  }

  _PasswordsNotSameFailure passwordsNotSame(String password) {
    return _PasswordsNotSameFailure(
      password,
    );
  }

  _EmptyPasswordsFailure emptyPassword() {
    return const _EmptyPasswordsFailure();
  }

  _WeakPasswordFailure weakPassword() {
    return const _WeakPasswordFailure();
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int length) minLength,
    required TResult Function(int length) maxLength,
    required TResult Function() invalidUsername,
    required TResult Function() invalidEmail,
    required TResult Function(String password) passwordsNotSame,
    required TResult Function() emptyPassword,
    required TResult Function() weakPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int length)? minLength,
    TResult Function(int length)? maxLength,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function(String password)? passwordsNotSame,
    TResult Function()? emptyPassword,
    TResult Function()? weakPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? minLength,
    TResult Function(int length)? maxLength,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function(String password)? passwordsNotSame,
    TResult Function()? emptyPassword,
    TResult Function()? weakPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MinLengthFailure value) minLength,
    required TResult Function(_MaxLengthFailure value) maxLength,
    required TResult Function(_InvalidUsernameFailure value) invalidUsername,
    required TResult Function(_InvalidEmailFailure value) invalidEmail,
    required TResult Function(_PasswordsNotSameFailure value) passwordsNotSame,
    required TResult Function(_EmptyPasswordsFailure value) emptyPassword,
    required TResult Function(_WeakPasswordFailure value) weakPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_InvalidUsernameFailure value)? invalidUsername,
    TResult Function(_InvalidEmailFailure value)? invalidEmail,
    TResult Function(_PasswordsNotSameFailure value)? passwordsNotSame,
    TResult Function(_EmptyPasswordsFailure value)? emptyPassword,
    TResult Function(_WeakPasswordFailure value)? weakPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_InvalidUsernameFailure value)? invalidUsername,
    TResult Function(_InvalidEmailFailure value)? invalidEmail,
    TResult Function(_PasswordsNotSameFailure value)? passwordsNotSame,
    TResult Function(_EmptyPasswordsFailure value)? emptyPassword,
    TResult Function(_WeakPasswordFailure value)? weakPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<$Res> {
  factory $ValueFailureCopyWith(
          ValueFailure value, $Res Function(ValueFailure) then) =
      _$ValueFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<$Res> implements $ValueFailureCopyWith<$Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure _value;
  // ignore: unused_field
  final $Res Function(ValueFailure) _then;
}

/// @nodoc
abstract class _$MinLengthFailureCopyWith<$Res> {
  factory _$MinLengthFailureCopyWith(
          _MinLengthFailure value, $Res Function(_MinLengthFailure) then) =
      __$MinLengthFailureCopyWithImpl<$Res>;
  $Res call({int length});
}

/// @nodoc
class __$MinLengthFailureCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res>
    implements _$MinLengthFailureCopyWith<$Res> {
  __$MinLengthFailureCopyWithImpl(
      _MinLengthFailure _value, $Res Function(_MinLengthFailure) _then)
      : super(_value, (v) => _then(v as _MinLengthFailure));

  @override
  _MinLengthFailure get _value => super._value as _MinLengthFailure;

  @override
  $Res call({
    Object? length = freezed,
  }) {
    return _then(_MinLengthFailure(
      length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MinLengthFailure implements _MinLengthFailure {
  const _$_MinLengthFailure(this.length);

  @override
  final int length;

  @override
  String toString() {
    return 'ValueFailure.minLength(length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MinLengthFailure &&
            const DeepCollectionEquality().equals(other.length, length));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(length));

  @JsonKey(ignore: true)
  @override
  _$MinLengthFailureCopyWith<_MinLengthFailure> get copyWith =>
      __$MinLengthFailureCopyWithImpl<_MinLengthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int length) minLength,
    required TResult Function(int length) maxLength,
    required TResult Function() invalidUsername,
    required TResult Function() invalidEmail,
    required TResult Function(String password) passwordsNotSame,
    required TResult Function() emptyPassword,
    required TResult Function() weakPassword,
  }) {
    return minLength(length);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int length)? minLength,
    TResult Function(int length)? maxLength,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function(String password)? passwordsNotSame,
    TResult Function()? emptyPassword,
    TResult Function()? weakPassword,
  }) {
    return minLength?.call(length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? minLength,
    TResult Function(int length)? maxLength,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function(String password)? passwordsNotSame,
    TResult Function()? emptyPassword,
    TResult Function()? weakPassword,
    required TResult orElse(),
  }) {
    if (minLength != null) {
      return minLength(length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MinLengthFailure value) minLength,
    required TResult Function(_MaxLengthFailure value) maxLength,
    required TResult Function(_InvalidUsernameFailure value) invalidUsername,
    required TResult Function(_InvalidEmailFailure value) invalidEmail,
    required TResult Function(_PasswordsNotSameFailure value) passwordsNotSame,
    required TResult Function(_EmptyPasswordsFailure value) emptyPassword,
    required TResult Function(_WeakPasswordFailure value) weakPassword,
  }) {
    return minLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_InvalidUsernameFailure value)? invalidUsername,
    TResult Function(_InvalidEmailFailure value)? invalidEmail,
    TResult Function(_PasswordsNotSameFailure value)? passwordsNotSame,
    TResult Function(_EmptyPasswordsFailure value)? emptyPassword,
    TResult Function(_WeakPasswordFailure value)? weakPassword,
  }) {
    return minLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_InvalidUsernameFailure value)? invalidUsername,
    TResult Function(_InvalidEmailFailure value)? invalidEmail,
    TResult Function(_PasswordsNotSameFailure value)? passwordsNotSame,
    TResult Function(_EmptyPasswordsFailure value)? emptyPassword,
    TResult Function(_WeakPasswordFailure value)? weakPassword,
    required TResult orElse(),
  }) {
    if (minLength != null) {
      return minLength(this);
    }
    return orElse();
  }
}

abstract class _MinLengthFailure implements ValueFailure {
  const factory _MinLengthFailure(int length) = _$_MinLengthFailure;

  int get length;
  @JsonKey(ignore: true)
  _$MinLengthFailureCopyWith<_MinLengthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MaxLengthFailureCopyWith<$Res> {
  factory _$MaxLengthFailureCopyWith(
          _MaxLengthFailure value, $Res Function(_MaxLengthFailure) then) =
      __$MaxLengthFailureCopyWithImpl<$Res>;
  $Res call({int length});
}

/// @nodoc
class __$MaxLengthFailureCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res>
    implements _$MaxLengthFailureCopyWith<$Res> {
  __$MaxLengthFailureCopyWithImpl(
      _MaxLengthFailure _value, $Res Function(_MaxLengthFailure) _then)
      : super(_value, (v) => _then(v as _MaxLengthFailure));

  @override
  _MaxLengthFailure get _value => super._value as _MaxLengthFailure;

  @override
  $Res call({
    Object? length = freezed,
  }) {
    return _then(_MaxLengthFailure(
      length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MaxLengthFailure implements _MaxLengthFailure {
  const _$_MaxLengthFailure(this.length);

  @override
  final int length;

  @override
  String toString() {
    return 'ValueFailure.maxLength(length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MaxLengthFailure &&
            const DeepCollectionEquality().equals(other.length, length));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(length));

  @JsonKey(ignore: true)
  @override
  _$MaxLengthFailureCopyWith<_MaxLengthFailure> get copyWith =>
      __$MaxLengthFailureCopyWithImpl<_MaxLengthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int length) minLength,
    required TResult Function(int length) maxLength,
    required TResult Function() invalidUsername,
    required TResult Function() invalidEmail,
    required TResult Function(String password) passwordsNotSame,
    required TResult Function() emptyPassword,
    required TResult Function() weakPassword,
  }) {
    return maxLength(length);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int length)? minLength,
    TResult Function(int length)? maxLength,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function(String password)? passwordsNotSame,
    TResult Function()? emptyPassword,
    TResult Function()? weakPassword,
  }) {
    return maxLength?.call(length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? minLength,
    TResult Function(int length)? maxLength,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function(String password)? passwordsNotSame,
    TResult Function()? emptyPassword,
    TResult Function()? weakPassword,
    required TResult orElse(),
  }) {
    if (maxLength != null) {
      return maxLength(length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MinLengthFailure value) minLength,
    required TResult Function(_MaxLengthFailure value) maxLength,
    required TResult Function(_InvalidUsernameFailure value) invalidUsername,
    required TResult Function(_InvalidEmailFailure value) invalidEmail,
    required TResult Function(_PasswordsNotSameFailure value) passwordsNotSame,
    required TResult Function(_EmptyPasswordsFailure value) emptyPassword,
    required TResult Function(_WeakPasswordFailure value) weakPassword,
  }) {
    return maxLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_InvalidUsernameFailure value)? invalidUsername,
    TResult Function(_InvalidEmailFailure value)? invalidEmail,
    TResult Function(_PasswordsNotSameFailure value)? passwordsNotSame,
    TResult Function(_EmptyPasswordsFailure value)? emptyPassword,
    TResult Function(_WeakPasswordFailure value)? weakPassword,
  }) {
    return maxLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_InvalidUsernameFailure value)? invalidUsername,
    TResult Function(_InvalidEmailFailure value)? invalidEmail,
    TResult Function(_PasswordsNotSameFailure value)? passwordsNotSame,
    TResult Function(_EmptyPasswordsFailure value)? emptyPassword,
    TResult Function(_WeakPasswordFailure value)? weakPassword,
    required TResult orElse(),
  }) {
    if (maxLength != null) {
      return maxLength(this);
    }
    return orElse();
  }
}

abstract class _MaxLengthFailure implements ValueFailure {
  const factory _MaxLengthFailure(int length) = _$_MaxLengthFailure;

  int get length;
  @JsonKey(ignore: true)
  _$MaxLengthFailureCopyWith<_MaxLengthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidUsernameFailureCopyWith<$Res> {
  factory _$InvalidUsernameFailureCopyWith(_InvalidUsernameFailure value,
          $Res Function(_InvalidUsernameFailure) then) =
      __$InvalidUsernameFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$InvalidUsernameFailureCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res>
    implements _$InvalidUsernameFailureCopyWith<$Res> {
  __$InvalidUsernameFailureCopyWithImpl(_InvalidUsernameFailure _value,
      $Res Function(_InvalidUsernameFailure) _then)
      : super(_value, (v) => _then(v as _InvalidUsernameFailure));

  @override
  _InvalidUsernameFailure get _value => super._value as _InvalidUsernameFailure;
}

/// @nodoc

class _$_InvalidUsernameFailure implements _InvalidUsernameFailure {
  const _$_InvalidUsernameFailure();

  @override
  String toString() {
    return 'ValueFailure.invalidUsername()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InvalidUsernameFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int length) minLength,
    required TResult Function(int length) maxLength,
    required TResult Function() invalidUsername,
    required TResult Function() invalidEmail,
    required TResult Function(String password) passwordsNotSame,
    required TResult Function() emptyPassword,
    required TResult Function() weakPassword,
  }) {
    return invalidUsername();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int length)? minLength,
    TResult Function(int length)? maxLength,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function(String password)? passwordsNotSame,
    TResult Function()? emptyPassword,
    TResult Function()? weakPassword,
  }) {
    return invalidUsername?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? minLength,
    TResult Function(int length)? maxLength,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function(String password)? passwordsNotSame,
    TResult Function()? emptyPassword,
    TResult Function()? weakPassword,
    required TResult orElse(),
  }) {
    if (invalidUsername != null) {
      return invalidUsername();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MinLengthFailure value) minLength,
    required TResult Function(_MaxLengthFailure value) maxLength,
    required TResult Function(_InvalidUsernameFailure value) invalidUsername,
    required TResult Function(_InvalidEmailFailure value) invalidEmail,
    required TResult Function(_PasswordsNotSameFailure value) passwordsNotSame,
    required TResult Function(_EmptyPasswordsFailure value) emptyPassword,
    required TResult Function(_WeakPasswordFailure value) weakPassword,
  }) {
    return invalidUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_InvalidUsernameFailure value)? invalidUsername,
    TResult Function(_InvalidEmailFailure value)? invalidEmail,
    TResult Function(_PasswordsNotSameFailure value)? passwordsNotSame,
    TResult Function(_EmptyPasswordsFailure value)? emptyPassword,
    TResult Function(_WeakPasswordFailure value)? weakPassword,
  }) {
    return invalidUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_InvalidUsernameFailure value)? invalidUsername,
    TResult Function(_InvalidEmailFailure value)? invalidEmail,
    TResult Function(_PasswordsNotSameFailure value)? passwordsNotSame,
    TResult Function(_EmptyPasswordsFailure value)? emptyPassword,
    TResult Function(_WeakPasswordFailure value)? weakPassword,
    required TResult orElse(),
  }) {
    if (invalidUsername != null) {
      return invalidUsername(this);
    }
    return orElse();
  }
}

abstract class _InvalidUsernameFailure implements ValueFailure {
  const factory _InvalidUsernameFailure() = _$_InvalidUsernameFailure;
}

/// @nodoc
abstract class _$InvalidEmailFailureCopyWith<$Res> {
  factory _$InvalidEmailFailureCopyWith(_InvalidEmailFailure value,
          $Res Function(_InvalidEmailFailure) then) =
      __$InvalidEmailFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$InvalidEmailFailureCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res>
    implements _$InvalidEmailFailureCopyWith<$Res> {
  __$InvalidEmailFailureCopyWithImpl(
      _InvalidEmailFailure _value, $Res Function(_InvalidEmailFailure) _then)
      : super(_value, (v) => _then(v as _InvalidEmailFailure));

  @override
  _InvalidEmailFailure get _value => super._value as _InvalidEmailFailure;
}

/// @nodoc

class _$_InvalidEmailFailure implements _InvalidEmailFailure {
  const _$_InvalidEmailFailure();

  @override
  String toString() {
    return 'ValueFailure.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InvalidEmailFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int length) minLength,
    required TResult Function(int length) maxLength,
    required TResult Function() invalidUsername,
    required TResult Function() invalidEmail,
    required TResult Function(String password) passwordsNotSame,
    required TResult Function() emptyPassword,
    required TResult Function() weakPassword,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int length)? minLength,
    TResult Function(int length)? maxLength,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function(String password)? passwordsNotSame,
    TResult Function()? emptyPassword,
    TResult Function()? weakPassword,
  }) {
    return invalidEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? minLength,
    TResult Function(int length)? maxLength,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function(String password)? passwordsNotSame,
    TResult Function()? emptyPassword,
    TResult Function()? weakPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MinLengthFailure value) minLength,
    required TResult Function(_MaxLengthFailure value) maxLength,
    required TResult Function(_InvalidUsernameFailure value) invalidUsername,
    required TResult Function(_InvalidEmailFailure value) invalidEmail,
    required TResult Function(_PasswordsNotSameFailure value) passwordsNotSame,
    required TResult Function(_EmptyPasswordsFailure value) emptyPassword,
    required TResult Function(_WeakPasswordFailure value) weakPassword,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_InvalidUsernameFailure value)? invalidUsername,
    TResult Function(_InvalidEmailFailure value)? invalidEmail,
    TResult Function(_PasswordsNotSameFailure value)? passwordsNotSame,
    TResult Function(_EmptyPasswordsFailure value)? emptyPassword,
    TResult Function(_WeakPasswordFailure value)? weakPassword,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_InvalidUsernameFailure value)? invalidUsername,
    TResult Function(_InvalidEmailFailure value)? invalidEmail,
    TResult Function(_PasswordsNotSameFailure value)? passwordsNotSame,
    TResult Function(_EmptyPasswordsFailure value)? emptyPassword,
    TResult Function(_WeakPasswordFailure value)? weakPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmailFailure implements ValueFailure {
  const factory _InvalidEmailFailure() = _$_InvalidEmailFailure;
}

/// @nodoc
abstract class _$PasswordsNotSameFailureCopyWith<$Res> {
  factory _$PasswordsNotSameFailureCopyWith(_PasswordsNotSameFailure value,
          $Res Function(_PasswordsNotSameFailure) then) =
      __$PasswordsNotSameFailureCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$PasswordsNotSameFailureCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res>
    implements _$PasswordsNotSameFailureCopyWith<$Res> {
  __$PasswordsNotSameFailureCopyWithImpl(_PasswordsNotSameFailure _value,
      $Res Function(_PasswordsNotSameFailure) _then)
      : super(_value, (v) => _then(v as _PasswordsNotSameFailure));

  @override
  _PasswordsNotSameFailure get _value =>
      super._value as _PasswordsNotSameFailure;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_PasswordsNotSameFailure(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordsNotSameFailure implements _PasswordsNotSameFailure {
  const _$_PasswordsNotSameFailure(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'ValueFailure.passwordsNotSame(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordsNotSameFailure &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$PasswordsNotSameFailureCopyWith<_PasswordsNotSameFailure> get copyWith =>
      __$PasswordsNotSameFailureCopyWithImpl<_PasswordsNotSameFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int length) minLength,
    required TResult Function(int length) maxLength,
    required TResult Function() invalidUsername,
    required TResult Function() invalidEmail,
    required TResult Function(String password) passwordsNotSame,
    required TResult Function() emptyPassword,
    required TResult Function() weakPassword,
  }) {
    return passwordsNotSame(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int length)? minLength,
    TResult Function(int length)? maxLength,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function(String password)? passwordsNotSame,
    TResult Function()? emptyPassword,
    TResult Function()? weakPassword,
  }) {
    return passwordsNotSame?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? minLength,
    TResult Function(int length)? maxLength,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function(String password)? passwordsNotSame,
    TResult Function()? emptyPassword,
    TResult Function()? weakPassword,
    required TResult orElse(),
  }) {
    if (passwordsNotSame != null) {
      return passwordsNotSame(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MinLengthFailure value) minLength,
    required TResult Function(_MaxLengthFailure value) maxLength,
    required TResult Function(_InvalidUsernameFailure value) invalidUsername,
    required TResult Function(_InvalidEmailFailure value) invalidEmail,
    required TResult Function(_PasswordsNotSameFailure value) passwordsNotSame,
    required TResult Function(_EmptyPasswordsFailure value) emptyPassword,
    required TResult Function(_WeakPasswordFailure value) weakPassword,
  }) {
    return passwordsNotSame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_InvalidUsernameFailure value)? invalidUsername,
    TResult Function(_InvalidEmailFailure value)? invalidEmail,
    TResult Function(_PasswordsNotSameFailure value)? passwordsNotSame,
    TResult Function(_EmptyPasswordsFailure value)? emptyPassword,
    TResult Function(_WeakPasswordFailure value)? weakPassword,
  }) {
    return passwordsNotSame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_InvalidUsernameFailure value)? invalidUsername,
    TResult Function(_InvalidEmailFailure value)? invalidEmail,
    TResult Function(_PasswordsNotSameFailure value)? passwordsNotSame,
    TResult Function(_EmptyPasswordsFailure value)? emptyPassword,
    TResult Function(_WeakPasswordFailure value)? weakPassword,
    required TResult orElse(),
  }) {
    if (passwordsNotSame != null) {
      return passwordsNotSame(this);
    }
    return orElse();
  }
}

abstract class _PasswordsNotSameFailure implements ValueFailure {
  const factory _PasswordsNotSameFailure(String password) =
      _$_PasswordsNotSameFailure;

  String get password;
  @JsonKey(ignore: true)
  _$PasswordsNotSameFailureCopyWith<_PasswordsNotSameFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmptyPasswordsFailureCopyWith<$Res> {
  factory _$EmptyPasswordsFailureCopyWith(_EmptyPasswordsFailure value,
          $Res Function(_EmptyPasswordsFailure) then) =
      __$EmptyPasswordsFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyPasswordsFailureCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res>
    implements _$EmptyPasswordsFailureCopyWith<$Res> {
  __$EmptyPasswordsFailureCopyWithImpl(_EmptyPasswordsFailure _value,
      $Res Function(_EmptyPasswordsFailure) _then)
      : super(_value, (v) => _then(v as _EmptyPasswordsFailure));

  @override
  _EmptyPasswordsFailure get _value => super._value as _EmptyPasswordsFailure;
}

/// @nodoc

class _$_EmptyPasswordsFailure implements _EmptyPasswordsFailure {
  const _$_EmptyPasswordsFailure();

  @override
  String toString() {
    return 'ValueFailure.emptyPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EmptyPasswordsFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int length) minLength,
    required TResult Function(int length) maxLength,
    required TResult Function() invalidUsername,
    required TResult Function() invalidEmail,
    required TResult Function(String password) passwordsNotSame,
    required TResult Function() emptyPassword,
    required TResult Function() weakPassword,
  }) {
    return emptyPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int length)? minLength,
    TResult Function(int length)? maxLength,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function(String password)? passwordsNotSame,
    TResult Function()? emptyPassword,
    TResult Function()? weakPassword,
  }) {
    return emptyPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? minLength,
    TResult Function(int length)? maxLength,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function(String password)? passwordsNotSame,
    TResult Function()? emptyPassword,
    TResult Function()? weakPassword,
    required TResult orElse(),
  }) {
    if (emptyPassword != null) {
      return emptyPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MinLengthFailure value) minLength,
    required TResult Function(_MaxLengthFailure value) maxLength,
    required TResult Function(_InvalidUsernameFailure value) invalidUsername,
    required TResult Function(_InvalidEmailFailure value) invalidEmail,
    required TResult Function(_PasswordsNotSameFailure value) passwordsNotSame,
    required TResult Function(_EmptyPasswordsFailure value) emptyPassword,
    required TResult Function(_WeakPasswordFailure value) weakPassword,
  }) {
    return emptyPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_InvalidUsernameFailure value)? invalidUsername,
    TResult Function(_InvalidEmailFailure value)? invalidEmail,
    TResult Function(_PasswordsNotSameFailure value)? passwordsNotSame,
    TResult Function(_EmptyPasswordsFailure value)? emptyPassword,
    TResult Function(_WeakPasswordFailure value)? weakPassword,
  }) {
    return emptyPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_InvalidUsernameFailure value)? invalidUsername,
    TResult Function(_InvalidEmailFailure value)? invalidEmail,
    TResult Function(_PasswordsNotSameFailure value)? passwordsNotSame,
    TResult Function(_EmptyPasswordsFailure value)? emptyPassword,
    TResult Function(_WeakPasswordFailure value)? weakPassword,
    required TResult orElse(),
  }) {
    if (emptyPassword != null) {
      return emptyPassword(this);
    }
    return orElse();
  }
}

abstract class _EmptyPasswordsFailure implements ValueFailure {
  const factory _EmptyPasswordsFailure() = _$_EmptyPasswordsFailure;
}

/// @nodoc
abstract class _$WeakPasswordFailureCopyWith<$Res> {
  factory _$WeakPasswordFailureCopyWith(_WeakPasswordFailure value,
          $Res Function(_WeakPasswordFailure) then) =
      __$WeakPasswordFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$WeakPasswordFailureCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res>
    implements _$WeakPasswordFailureCopyWith<$Res> {
  __$WeakPasswordFailureCopyWithImpl(
      _WeakPasswordFailure _value, $Res Function(_WeakPasswordFailure) _then)
      : super(_value, (v) => _then(v as _WeakPasswordFailure));

  @override
  _WeakPasswordFailure get _value => super._value as _WeakPasswordFailure;
}

/// @nodoc

class _$_WeakPasswordFailure implements _WeakPasswordFailure {
  const _$_WeakPasswordFailure();

  @override
  String toString() {
    return 'ValueFailure.weakPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WeakPasswordFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int length) minLength,
    required TResult Function(int length) maxLength,
    required TResult Function() invalidUsername,
    required TResult Function() invalidEmail,
    required TResult Function(String password) passwordsNotSame,
    required TResult Function() emptyPassword,
    required TResult Function() weakPassword,
  }) {
    return weakPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int length)? minLength,
    TResult Function(int length)? maxLength,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function(String password)? passwordsNotSame,
    TResult Function()? emptyPassword,
    TResult Function()? weakPassword,
  }) {
    return weakPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? minLength,
    TResult Function(int length)? maxLength,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function(String password)? passwordsNotSame,
    TResult Function()? emptyPassword,
    TResult Function()? weakPassword,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MinLengthFailure value) minLength,
    required TResult Function(_MaxLengthFailure value) maxLength,
    required TResult Function(_InvalidUsernameFailure value) invalidUsername,
    required TResult Function(_InvalidEmailFailure value) invalidEmail,
    required TResult Function(_PasswordsNotSameFailure value) passwordsNotSame,
    required TResult Function(_EmptyPasswordsFailure value) emptyPassword,
    required TResult Function(_WeakPasswordFailure value) weakPassword,
  }) {
    return weakPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_InvalidUsernameFailure value)? invalidUsername,
    TResult Function(_InvalidEmailFailure value)? invalidEmail,
    TResult Function(_PasswordsNotSameFailure value)? passwordsNotSame,
    TResult Function(_EmptyPasswordsFailure value)? emptyPassword,
    TResult Function(_WeakPasswordFailure value)? weakPassword,
  }) {
    return weakPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_InvalidUsernameFailure value)? invalidUsername,
    TResult Function(_InvalidEmailFailure value)? invalidEmail,
    TResult Function(_PasswordsNotSameFailure value)? passwordsNotSame,
    TResult Function(_EmptyPasswordsFailure value)? emptyPassword,
    TResult Function(_WeakPasswordFailure value)? weakPassword,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(this);
    }
    return orElse();
  }
}

abstract class _WeakPasswordFailure implements ValueFailure {
  const factory _WeakPasswordFailure() = _$_WeakPasswordFailure;
}
