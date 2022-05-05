// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_repository_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupRepositoryFailureTearOff {
  const _$GroupRepositoryFailureTearOff();

  _ConnectionFailure connection() {
    return const _ConnectionFailure();
  }

  _ServerFailure server(int statusCode, String? message) {
    return _ServerFailure(
      statusCode,
      message,
    );
  }

  _UnknownFailure unknown(String? message) {
    return _UnknownFailure(
      message,
    );
  }

  _NotFoundFailure notFound() {
    return const _NotFoundFailure();
  }
}

/// @nodoc
const $GroupRepositoryFailure = _$GroupRepositoryFailureTearOff();

/// @nodoc
mixin _$GroupRepositoryFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connection,
    required TResult Function(int statusCode, String? message) server,
    required TResult Function(String? message) unknown,
    required TResult Function() notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(int statusCode, String? message)? server,
    TResult Function(String? message)? unknown,
    TResult Function()? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(int statusCode, String? message)? server,
    TResult Function(String? message)? unknown,
    TResult Function()? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionFailure value) connection,
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_UnknownFailure value) unknown,
    required TResult Function(_NotFoundFailure value) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_ServerFailure value)? server,
    TResult Function(_UnknownFailure value)? unknown,
    TResult Function(_NotFoundFailure value)? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_ServerFailure value)? server,
    TResult Function(_UnknownFailure value)? unknown,
    TResult Function(_NotFoundFailure value)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupRepositoryFailureCopyWith<$Res> {
  factory $GroupRepositoryFailureCopyWith(GroupRepositoryFailure value,
          $Res Function(GroupRepositoryFailure) then) =
      _$GroupRepositoryFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupRepositoryFailureCopyWithImpl<$Res>
    implements $GroupRepositoryFailureCopyWith<$Res> {
  _$GroupRepositoryFailureCopyWithImpl(this._value, this._then);

  final GroupRepositoryFailure _value;
  // ignore: unused_field
  final $Res Function(GroupRepositoryFailure) _then;
}

/// @nodoc
abstract class _$ConnectionFailureCopyWith<$Res> {
  factory _$ConnectionFailureCopyWith(
          _ConnectionFailure value, $Res Function(_ConnectionFailure) then) =
      __$ConnectionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConnectionFailureCopyWithImpl<$Res>
    extends _$GroupRepositoryFailureCopyWithImpl<$Res>
    implements _$ConnectionFailureCopyWith<$Res> {
  __$ConnectionFailureCopyWithImpl(
      _ConnectionFailure _value, $Res Function(_ConnectionFailure) _then)
      : super(_value, (v) => _then(v as _ConnectionFailure));

  @override
  _ConnectionFailure get _value => super._value as _ConnectionFailure;
}

/// @nodoc

@Implements<ConnectionSynchrowiseFailure>()
class _$_ConnectionFailure implements _ConnectionFailure {
  const _$_ConnectionFailure();

  @override
  String toString() {
    return 'GroupRepositoryFailure.connection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ConnectionFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connection,
    required TResult Function(int statusCode, String? message) server,
    required TResult Function(String? message) unknown,
    required TResult Function() notFound,
  }) {
    return connection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(int statusCode, String? message)? server,
    TResult Function(String? message)? unknown,
    TResult Function()? notFound,
  }) {
    return connection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(int statusCode, String? message)? server,
    TResult Function(String? message)? unknown,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionFailure value) connection,
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_UnknownFailure value) unknown,
    required TResult Function(_NotFoundFailure value) notFound,
  }) {
    return connection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_ServerFailure value)? server,
    TResult Function(_UnknownFailure value)? unknown,
    TResult Function(_NotFoundFailure value)? notFound,
  }) {
    return connection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_ServerFailure value)? server,
    TResult Function(_UnknownFailure value)? unknown,
    TResult Function(_NotFoundFailure value)? notFound,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection(this);
    }
    return orElse();
  }
}

abstract class _ConnectionFailure
    implements GroupRepositoryFailure, ConnectionSynchrowiseFailure {
  const factory _ConnectionFailure() = _$_ConnectionFailure;
}

/// @nodoc
abstract class _$ServerFailureCopyWith<$Res> {
  factory _$ServerFailureCopyWith(
          _ServerFailure value, $Res Function(_ServerFailure) then) =
      __$ServerFailureCopyWithImpl<$Res>;
  $Res call({int statusCode, String? message});
}

/// @nodoc
class __$ServerFailureCopyWithImpl<$Res>
    extends _$GroupRepositoryFailureCopyWithImpl<$Res>
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
              as String?,
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
  final String? message;

  @override
  String toString() {
    return 'GroupRepositoryFailure.server(statusCode: $statusCode, message: $message)';
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
    required TResult Function() connection,
    required TResult Function(int statusCode, String? message) server,
    required TResult Function(String? message) unknown,
    required TResult Function() notFound,
  }) {
    return server(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(int statusCode, String? message)? server,
    TResult Function(String? message)? unknown,
    TResult Function()? notFound,
  }) {
    return server?.call(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(int statusCode, String? message)? server,
    TResult Function(String? message)? unknown,
    TResult Function()? notFound,
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
    required TResult Function(_ConnectionFailure value) connection,
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_UnknownFailure value) unknown,
    required TResult Function(_NotFoundFailure value) notFound,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_ServerFailure value)? server,
    TResult Function(_UnknownFailure value)? unknown,
    TResult Function(_NotFoundFailure value)? notFound,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_ServerFailure value)? server,
    TResult Function(_UnknownFailure value)? unknown,
    TResult Function(_NotFoundFailure value)? notFound,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure
    implements GroupRepositoryFailure, ServerSynchrowiseFailure {
  const factory _ServerFailure(int statusCode, String? message) =
      _$_ServerFailure;

  int get statusCode;
  String? get message;
  @JsonKey(ignore: true)
  _$ServerFailureCopyWith<_ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnknownFailureCopyWith<$Res> {
  factory _$UnknownFailureCopyWith(
          _UnknownFailure value, $Res Function(_UnknownFailure) then) =
      __$UnknownFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$UnknownFailureCopyWithImpl<$Res>
    extends _$GroupRepositoryFailureCopyWithImpl<$Res>
    implements _$UnknownFailureCopyWith<$Res> {
  __$UnknownFailureCopyWithImpl(
      _UnknownFailure _value, $Res Function(_UnknownFailure) _then)
      : super(_value, (v) => _then(v as _UnknownFailure));

  @override
  _UnknownFailure get _value => super._value as _UnknownFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_UnknownFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@Implements<UnknownSynchrowiseFailure>()
class _$_UnknownFailure implements _UnknownFailure {
  const _$_UnknownFailure(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'GroupRepositoryFailure.unknown(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnknownFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$UnknownFailureCopyWith<_UnknownFailure> get copyWith =>
      __$UnknownFailureCopyWithImpl<_UnknownFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connection,
    required TResult Function(int statusCode, String? message) server,
    required TResult Function(String? message) unknown,
    required TResult Function() notFound,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(int statusCode, String? message)? server,
    TResult Function(String? message)? unknown,
    TResult Function()? notFound,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(int statusCode, String? message)? server,
    TResult Function(String? message)? unknown,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionFailure value) connection,
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_UnknownFailure value) unknown,
    required TResult Function(_NotFoundFailure value) notFound,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_ServerFailure value)? server,
    TResult Function(_UnknownFailure value)? unknown,
    TResult Function(_NotFoundFailure value)? notFound,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_ServerFailure value)? server,
    TResult Function(_UnknownFailure value)? unknown,
    TResult Function(_NotFoundFailure value)? notFound,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _UnknownFailure
    implements GroupRepositoryFailure, UnknownSynchrowiseFailure {
  const factory _UnknownFailure(String? message) = _$_UnknownFailure;

  String? get message;
  @JsonKey(ignore: true)
  _$UnknownFailureCopyWith<_UnknownFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NotFoundFailureCopyWith<$Res> {
  factory _$NotFoundFailureCopyWith(
          _NotFoundFailure value, $Res Function(_NotFoundFailure) then) =
      __$NotFoundFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotFoundFailureCopyWithImpl<$Res>
    extends _$GroupRepositoryFailureCopyWithImpl<$Res>
    implements _$NotFoundFailureCopyWith<$Res> {
  __$NotFoundFailureCopyWithImpl(
      _NotFoundFailure _value, $Res Function(_NotFoundFailure) _then)
      : super(_value, (v) => _then(v as _NotFoundFailure));

  @override
  _NotFoundFailure get _value => super._value as _NotFoundFailure;
}

/// @nodoc

class _$_NotFoundFailure implements _NotFoundFailure {
  const _$_NotFoundFailure();

  @override
  String toString() {
    return 'GroupRepositoryFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NotFoundFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connection,
    required TResult Function(int statusCode, String? message) server,
    required TResult Function(String? message) unknown,
    required TResult Function() notFound,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(int statusCode, String? message)? server,
    TResult Function(String? message)? unknown,
    TResult Function()? notFound,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(int statusCode, String? message)? server,
    TResult Function(String? message)? unknown,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionFailure value) connection,
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_UnknownFailure value) unknown,
    required TResult Function(_NotFoundFailure value) notFound,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_ServerFailure value)? server,
    TResult Function(_UnknownFailure value)? unknown,
    TResult Function(_NotFoundFailure value)? notFound,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_ServerFailure value)? server,
    TResult Function(_UnknownFailure value)? unknown,
    TResult Function(_NotFoundFailure value)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFoundFailure implements GroupRepositoryFailure {
  const factory _NotFoundFailure() = _$_NotFoundFailure;
}
