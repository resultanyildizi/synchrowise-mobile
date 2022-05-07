// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'avatar_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AvatarRepositoryFailureTearOff {
  const _$AvatarRepositoryFailureTearOff();

  _ServerFailure server(int statusCode, String message) {
    return _ServerFailure(
      statusCode,
      message,
    );
  }

  _SizeFailure size() {
    return const _SizeFailure();
  }

  _FormatFailure format() {
    return const _FormatFailure();
  }
}

/// @nodoc
const $AvatarRepositoryFailure = _$AvatarRepositoryFailureTearOff();

/// @nodoc
mixin _$AvatarRepositoryFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, String message) server,
    required TResult Function() size,
    required TResult Function() format,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode, String message)? server,
    TResult Function()? size,
    TResult Function()? format,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, String message)? server,
    TResult Function()? size,
    TResult Function()? format,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_SizeFailure value) size,
    required TResult Function(_FormatFailure value) format,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_SizeFailure value)? size,
    TResult Function(_FormatFailure value)? format,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_SizeFailure value)? size,
    TResult Function(_FormatFailure value)? format,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarRepositoryFailureCopyWith<$Res> {
  factory $AvatarRepositoryFailureCopyWith(AvatarRepositoryFailure value,
          $Res Function(AvatarRepositoryFailure) then) =
      _$AvatarRepositoryFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AvatarRepositoryFailureCopyWithImpl<$Res>
    implements $AvatarRepositoryFailureCopyWith<$Res> {
  _$AvatarRepositoryFailureCopyWithImpl(this._value, this._then);

  final AvatarRepositoryFailure _value;
  // ignore: unused_field
  final $Res Function(AvatarRepositoryFailure) _then;
}

/// @nodoc
abstract class _$ServerFailureCopyWith<$Res> {
  factory _$ServerFailureCopyWith(
          _ServerFailure value, $Res Function(_ServerFailure) then) =
      __$ServerFailureCopyWithImpl<$Res>;
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$ServerFailureCopyWithImpl<$Res>
    extends _$AvatarRepositoryFailureCopyWithImpl<$Res>
    implements _$ServerFailureCopyWith<$Res> {
  __$ServerFailureCopyWithImpl(
      _ServerFailure _value, $Res Function(_ServerFailure) _then)
      : super(_value, (v) => _then(v as _ServerFailure));

  @override
  _ServerFailure get _value => super._value as _ServerFailure;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_ServerFailure(
      statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ServerSynchrowiseFailure>()
class _$_ServerFailure implements _ServerFailure {
  const _$_ServerFailure(this.statusCode, this.message);

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'AvatarRepositoryFailure.server(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServerFailure &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ServerFailureCopyWith<_ServerFailure> get copyWith =>
      __$ServerFailureCopyWithImpl<_ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, String message) server,
    required TResult Function() size,
    required TResult Function() format,
  }) {
    return server(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode, String message)? server,
    TResult Function()? size,
    TResult Function()? format,
  }) {
    return server?.call(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, String message)? server,
    TResult Function()? size,
    TResult Function()? format,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(statusCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_SizeFailure value) size,
    required TResult Function(_FormatFailure value) format,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_SizeFailure value)? size,
    TResult Function(_FormatFailure value)? format,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_SizeFailure value)? size,
    TResult Function(_FormatFailure value)? format,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure
    implements AvatarRepositoryFailure, ServerSynchrowiseFailure {
  const factory _ServerFailure(int statusCode, String message) =
      _$_ServerFailure;

  int get statusCode;
  String get message;
  @JsonKey(ignore: true)
  _$ServerFailureCopyWith<_ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SizeFailureCopyWith<$Res> {
  factory _$SizeFailureCopyWith(
          _SizeFailure value, $Res Function(_SizeFailure) then) =
      __$SizeFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$SizeFailureCopyWithImpl<$Res>
    extends _$AvatarRepositoryFailureCopyWithImpl<$Res>
    implements _$SizeFailureCopyWith<$Res> {
  __$SizeFailureCopyWithImpl(
      _SizeFailure _value, $Res Function(_SizeFailure) _then)
      : super(_value, (v) => _then(v as _SizeFailure));

  @override
  _SizeFailure get _value => super._value as _SizeFailure;
}

/// @nodoc

class _$_SizeFailure implements _SizeFailure {
  const _$_SizeFailure();

  @override
  String toString() {
    return 'AvatarRepositoryFailure.size()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SizeFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, String message) server,
    required TResult Function() size,
    required TResult Function() format,
  }) {
    return size();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode, String message)? server,
    TResult Function()? size,
    TResult Function()? format,
  }) {
    return size?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, String message)? server,
    TResult Function()? size,
    TResult Function()? format,
    required TResult orElse(),
  }) {
    if (size != null) {
      return size();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_SizeFailure value) size,
    required TResult Function(_FormatFailure value) format,
  }) {
    return size(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_SizeFailure value)? size,
    TResult Function(_FormatFailure value)? format,
  }) {
    return size?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_SizeFailure value)? size,
    TResult Function(_FormatFailure value)? format,
    required TResult orElse(),
  }) {
    if (size != null) {
      return size(this);
    }
    return orElse();
  }
}

abstract class _SizeFailure implements AvatarRepositoryFailure {
  const factory _SizeFailure() = _$_SizeFailure;
}

/// @nodoc
abstract class _$FormatFailureCopyWith<$Res> {
  factory _$FormatFailureCopyWith(
          _FormatFailure value, $Res Function(_FormatFailure) then) =
      __$FormatFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FormatFailureCopyWithImpl<$Res>
    extends _$AvatarRepositoryFailureCopyWithImpl<$Res>
    implements _$FormatFailureCopyWith<$Res> {
  __$FormatFailureCopyWithImpl(
      _FormatFailure _value, $Res Function(_FormatFailure) _then)
      : super(_value, (v) => _then(v as _FormatFailure));

  @override
  _FormatFailure get _value => super._value as _FormatFailure;
}

/// @nodoc

class _$_FormatFailure implements _FormatFailure {
  const _$_FormatFailure();

  @override
  String toString() {
    return 'AvatarRepositoryFailure.format()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FormatFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, String message) server,
    required TResult Function() size,
    required TResult Function() format,
  }) {
    return format();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode, String message)? server,
    TResult Function()? size,
    TResult Function()? format,
  }) {
    return format?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, String message)? server,
    TResult Function()? size,
    TResult Function()? format,
    required TResult orElse(),
  }) {
    if (format != null) {
      return format();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_SizeFailure value) size,
    required TResult Function(_FormatFailure value) format,
  }) {
    return format(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_SizeFailure value)? size,
    TResult Function(_FormatFailure value)? format,
  }) {
    return format?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_SizeFailure value)? size,
    TResult Function(_FormatFailure value)? format,
    required TResult orElse(),
  }) {
    if (format != null) {
      return format(this);
    }
    return orElse();
  }
}

abstract class _FormatFailure implements AvatarRepositoryFailure {
  const factory _FormatFailure() = _$_FormatFailure;
}
