// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_repository_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationRepositoryFailureTearOff {
  const _$NotificationRepositoryFailureTearOff();

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
}

/// @nodoc
const $NotificationRepositoryFailure = _$NotificationRepositoryFailureTearOff();

/// @nodoc
mixin _$NotificationRepositoryFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connection,
    required TResult Function(int statusCode, String? message) server,
    required TResult Function(String? message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(int statusCode, String? message)? server,
    TResult Function(String? message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(int statusCode, String? message)? server,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionFailure value) connection,
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_UnknownFailure value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_ServerFailure value)? server,
    TResult Function(_UnknownFailure value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_ServerFailure value)? server,
    TResult Function(_UnknownFailure value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationRepositoryFailureCopyWith<$Res> {
  factory $NotificationRepositoryFailureCopyWith(
          NotificationRepositoryFailure value,
          $Res Function(NotificationRepositoryFailure) then) =
      _$NotificationRepositoryFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationRepositoryFailureCopyWithImpl<$Res>
    implements $NotificationRepositoryFailureCopyWith<$Res> {
  _$NotificationRepositoryFailureCopyWithImpl(this._value, this._then);

  final NotificationRepositoryFailure _value;
  // ignore: unused_field
  final $Res Function(NotificationRepositoryFailure) _then;
}

/// @nodoc
abstract class _$ConnectionFailureCopyWith<$Res> {
  factory _$ConnectionFailureCopyWith(
          _ConnectionFailure value, $Res Function(_ConnectionFailure) then) =
      __$ConnectionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConnectionFailureCopyWithImpl<$Res>
    extends _$NotificationRepositoryFailureCopyWithImpl<$Res>
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
    return 'NotificationRepositoryFailure.connection()';
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
  }) {
    return connection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(int statusCode, String? message)? server,
    TResult Function(String? message)? unknown,
  }) {
    return connection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(int statusCode, String? message)? server,
    TResult Function(String? message)? unknown,
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
  }) {
    return connection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_ServerFailure value)? server,
    TResult Function(_UnknownFailure value)? unknown,
  }) {
    return connection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_ServerFailure value)? server,
    TResult Function(_UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection(this);
    }
    return orElse();
  }
}

abstract class _ConnectionFailure
    implements NotificationRepositoryFailure, ConnectionSynchrowiseFailure {
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
    extends _$NotificationRepositoryFailureCopyWithImpl<$Res>
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
    return 'NotificationRepositoryFailure.server(statusCode: $statusCode, message: $message)';
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
  }) {
    return server(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(int statusCode, String? message)? server,
    TResult Function(String? message)? unknown,
  }) {
    return server?.call(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(int statusCode, String? message)? server,
    TResult Function(String? message)? unknown,
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
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_ServerFailure value)? server,
    TResult Function(_UnknownFailure value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_ServerFailure value)? server,
    TResult Function(_UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure
    implements NotificationRepositoryFailure, ServerSynchrowiseFailure {
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
    extends _$NotificationRepositoryFailureCopyWithImpl<$Res>
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
    return 'NotificationRepositoryFailure.unknown(message: $message)';
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
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(int statusCode, String? message)? server,
    TResult Function(String? message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(int statusCode, String? message)? server,
    TResult Function(String? message)? unknown,
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
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_ServerFailure value)? server,
    TResult Function(_UnknownFailure value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_ServerFailure value)? server,
    TResult Function(_UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _UnknownFailure
    implements NotificationRepositoryFailure, UnknownSynchrowiseFailure {
  const factory _UnknownFailure(String? message) = _$_UnknownFailure;

  String? get message;
  @JsonKey(ignore: true)
  _$UnknownFailureCopyWith<_UnknownFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
