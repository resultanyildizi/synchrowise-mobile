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

  _NotSamePasswordsFailure passwordsAreNotSame() {
    return const _NotSamePasswordsFailure();
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
    required TResult Function() passwordsAreNotSame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int length)? minLength,
    TResult Function(int length)? maxLength,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function()? passwordsAreNotSame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? minLength,
    TResult Function(int length)? maxLength,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function()? passwordsAreNotSame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MinLengthFailure value) minLength,
    required TResult Function(_MaxLengthFailure value) maxLength,
    required TResult Function(_InvalidUsernameFailure value) invalidUsername,
    required TResult Function(_InvalidEmailFailure value) invalidEmail,
    required TResult Function(_NotSamePasswordsFailure value)
        passwordsAreNotSame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_InvalidUsernameFailure value)? invalidUsername,
    TResult Function(_InvalidEmailFailure value)? invalidEmail,
    TResult Function(_NotSamePasswordsFailure value)? passwordsAreNotSame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_InvalidUsernameFailure value)? invalidUsername,
    TResult Function(_InvalidEmailFailure value)? invalidEmail,
    TResult Function(_NotSamePasswordsFailure value)? passwordsAreNotSame,
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
    required TResult Function() passwordsAreNotSame,
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
    TResult Function()? passwordsAreNotSame,
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
    TResult Function()? passwordsAreNotSame,
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
    required TResult Function(_NotSamePasswordsFailure value)
        passwordsAreNotSame,
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
    TResult Function(_NotSamePasswordsFailure value)? passwordsAreNotSame,
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
    TResult Function(_NotSamePasswordsFailure value)? passwordsAreNotSame,
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
    required TResult Function() passwordsAreNotSame,
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
    TResult Function()? passwordsAreNotSame,
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
    TResult Function()? passwordsAreNotSame,
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
    required TResult Function(_NotSamePasswordsFailure value)
        passwordsAreNotSame,
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
    TResult Function(_NotSamePasswordsFailure value)? passwordsAreNotSame,
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
    TResult Function(_NotSamePasswordsFailure value)? passwordsAreNotSame,
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
    required TResult Function() passwordsAreNotSame,
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
    TResult Function()? passwordsAreNotSame,
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
    TResult Function()? passwordsAreNotSame,
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
    required TResult Function(_NotSamePasswordsFailure value)
        passwordsAreNotSame,
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
    TResult Function(_NotSamePasswordsFailure value)? passwordsAreNotSame,
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
    TResult Function(_NotSamePasswordsFailure value)? passwordsAreNotSame,
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
    required TResult Function() passwordsAreNotSame,
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
    TResult Function()? passwordsAreNotSame,
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
    TResult Function()? passwordsAreNotSame,
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
    required TResult Function(_NotSamePasswordsFailure value)
        passwordsAreNotSame,
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
    TResult Function(_NotSamePasswordsFailure value)? passwordsAreNotSame,
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
    TResult Function(_NotSamePasswordsFailure value)? passwordsAreNotSame,
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
abstract class _$NotSamePasswordsFailureCopyWith<$Res> {
  factory _$NotSamePasswordsFailureCopyWith(_NotSamePasswordsFailure value,
          $Res Function(_NotSamePasswordsFailure) then) =
      __$NotSamePasswordsFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotSamePasswordsFailureCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res>
    implements _$NotSamePasswordsFailureCopyWith<$Res> {
  __$NotSamePasswordsFailureCopyWithImpl(_NotSamePasswordsFailure _value,
      $Res Function(_NotSamePasswordsFailure) _then)
      : super(_value, (v) => _then(v as _NotSamePasswordsFailure));

  @override
  _NotSamePasswordsFailure get _value =>
      super._value as _NotSamePasswordsFailure;
}

/// @nodoc

class _$_NotSamePasswordsFailure implements _NotSamePasswordsFailure {
  const _$_NotSamePasswordsFailure();

  @override
  String toString() {
    return 'ValueFailure.passwordsAreNotSame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NotSamePasswordsFailure);
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
    required TResult Function() passwordsAreNotSame,
  }) {
    return passwordsAreNotSame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int length)? minLength,
    TResult Function(int length)? maxLength,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function()? passwordsAreNotSame,
  }) {
    return passwordsAreNotSame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? minLength,
    TResult Function(int length)? maxLength,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function()? passwordsAreNotSame,
    required TResult orElse(),
  }) {
    if (passwordsAreNotSame != null) {
      return passwordsAreNotSame();
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
    required TResult Function(_NotSamePasswordsFailure value)
        passwordsAreNotSame,
  }) {
    return passwordsAreNotSame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_InvalidUsernameFailure value)? invalidUsername,
    TResult Function(_InvalidEmailFailure value)? invalidEmail,
    TResult Function(_NotSamePasswordsFailure value)? passwordsAreNotSame,
  }) {
    return passwordsAreNotSame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_InvalidUsernameFailure value)? invalidUsername,
    TResult Function(_InvalidEmailFailure value)? invalidEmail,
    TResult Function(_NotSamePasswordsFailure value)? passwordsAreNotSame,
    required TResult orElse(),
  }) {
    if (passwordsAreNotSame != null) {
      return passwordsAreNotSame(this);
    }
    return orElse();
  }
}

abstract class _NotSamePasswordsFailure implements ValueFailure {
  const factory _NotSamePasswordsFailure() = _$_NotSamePasswordsFailure;
}
