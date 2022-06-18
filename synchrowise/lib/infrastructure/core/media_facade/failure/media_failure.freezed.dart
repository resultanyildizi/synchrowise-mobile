// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'media_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MediaFailureTearOff {
  const _$MediaFailureTearOff();

  _PickFailure pickFailure(String? message) {
    return _PickFailure(
      message,
    );
  }

  _SizeFailure sizeFailure(double mediaSize) {
    return _SizeFailure(
      mediaSize,
    );
  }
}

/// @nodoc
const $MediaFailure = _$MediaFailureTearOff();

/// @nodoc
mixin _$MediaFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) pickFailure,
    required TResult Function(double mediaSize) sizeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? pickFailure,
    TResult Function(double mediaSize)? sizeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? pickFailure,
    TResult Function(double mediaSize)? sizeFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickFailure value) pickFailure,
    required TResult Function(_SizeFailure value) sizeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PickFailure value)? pickFailure,
    TResult Function(_SizeFailure value)? sizeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickFailure value)? pickFailure,
    TResult Function(_SizeFailure value)? sizeFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaFailureCopyWith<$Res> {
  factory $MediaFailureCopyWith(
          MediaFailure value, $Res Function(MediaFailure) then) =
      _$MediaFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$MediaFailureCopyWithImpl<$Res> implements $MediaFailureCopyWith<$Res> {
  _$MediaFailureCopyWithImpl(this._value, this._then);

  final MediaFailure _value;
  // ignore: unused_field
  final $Res Function(MediaFailure) _then;
}

/// @nodoc
abstract class _$PickFailureCopyWith<$Res> {
  factory _$PickFailureCopyWith(
          _PickFailure value, $Res Function(_PickFailure) then) =
      __$PickFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$PickFailureCopyWithImpl<$Res> extends _$MediaFailureCopyWithImpl<$Res>
    implements _$PickFailureCopyWith<$Res> {
  __$PickFailureCopyWithImpl(
      _PickFailure _value, $Res Function(_PickFailure) _then)
      : super(_value, (v) => _then(v as _PickFailure));

  @override
  _PickFailure get _value => super._value as _PickFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_PickFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PickFailure implements _PickFailure {
  const _$_PickFailure(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'MediaFailure.pickFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PickFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$PickFailureCopyWith<_PickFailure> get copyWith =>
      __$PickFailureCopyWithImpl<_PickFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) pickFailure,
    required TResult Function(double mediaSize) sizeFailure,
  }) {
    return pickFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? pickFailure,
    TResult Function(double mediaSize)? sizeFailure,
  }) {
    return pickFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? pickFailure,
    TResult Function(double mediaSize)? sizeFailure,
    required TResult orElse(),
  }) {
    if (pickFailure != null) {
      return pickFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickFailure value) pickFailure,
    required TResult Function(_SizeFailure value) sizeFailure,
  }) {
    return pickFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PickFailure value)? pickFailure,
    TResult Function(_SizeFailure value)? sizeFailure,
  }) {
    return pickFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickFailure value)? pickFailure,
    TResult Function(_SizeFailure value)? sizeFailure,
    required TResult orElse(),
  }) {
    if (pickFailure != null) {
      return pickFailure(this);
    }
    return orElse();
  }
}

abstract class _PickFailure implements MediaFailure {
  const factory _PickFailure(String? message) = _$_PickFailure;

  String? get message;
  @JsonKey(ignore: true)
  _$PickFailureCopyWith<_PickFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SizeFailureCopyWith<$Res> {
  factory _$SizeFailureCopyWith(
          _SizeFailure value, $Res Function(_SizeFailure) then) =
      __$SizeFailureCopyWithImpl<$Res>;
  $Res call({double mediaSize});
}

/// @nodoc
class __$SizeFailureCopyWithImpl<$Res> extends _$MediaFailureCopyWithImpl<$Res>
    implements _$SizeFailureCopyWith<$Res> {
  __$SizeFailureCopyWithImpl(
      _SizeFailure _value, $Res Function(_SizeFailure) _then)
      : super(_value, (v) => _then(v as _SizeFailure));

  @override
  _SizeFailure get _value => super._value as _SizeFailure;

  @override
  $Res call({
    Object? mediaSize = freezed,
  }) {
    return _then(_SizeFailure(
      mediaSize == freezed
          ? _value.mediaSize
          : mediaSize // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SizeFailure implements _SizeFailure {
  const _$_SizeFailure(this.mediaSize);

  @override
  final double mediaSize;

  @override
  String toString() {
    return 'MediaFailure.sizeFailure(mediaSize: $mediaSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SizeFailure &&
            const DeepCollectionEquality().equals(other.mediaSize, mediaSize));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(mediaSize));

  @JsonKey(ignore: true)
  @override
  _$SizeFailureCopyWith<_SizeFailure> get copyWith =>
      __$SizeFailureCopyWithImpl<_SizeFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) pickFailure,
    required TResult Function(double mediaSize) sizeFailure,
  }) {
    return sizeFailure(mediaSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? pickFailure,
    TResult Function(double mediaSize)? sizeFailure,
  }) {
    return sizeFailure?.call(mediaSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? pickFailure,
    TResult Function(double mediaSize)? sizeFailure,
    required TResult orElse(),
  }) {
    if (sizeFailure != null) {
      return sizeFailure(mediaSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickFailure value) pickFailure,
    required TResult Function(_SizeFailure value) sizeFailure,
  }) {
    return sizeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PickFailure value)? pickFailure,
    TResult Function(_SizeFailure value)? sizeFailure,
  }) {
    return sizeFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickFailure value)? pickFailure,
    TResult Function(_SizeFailure value)? sizeFailure,
    required TResult orElse(),
  }) {
    if (sizeFailure != null) {
      return sizeFailure(this);
    }
    return orElse();
  }
}

abstract class _SizeFailure implements MediaFailure {
  const factory _SizeFailure(double mediaSize) = _$_SizeFailure;

  double get mediaSize;
  @JsonKey(ignore: true)
  _$SizeFailureCopyWith<_SizeFailure> get copyWith =>
      throw _privateConstructorUsedError;
}