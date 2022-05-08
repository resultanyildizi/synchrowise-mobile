// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  _SignOutEvent signOut() {
    return const _SignOutEvent();
  }

  _DeleteEvent delete() {
    return const _DeleteEvent();
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_DeleteEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_DeleteEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_DeleteEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$SignOutEventCopyWith<$Res> {
  factory _$SignOutEventCopyWith(
          _SignOutEvent value, $Res Function(_SignOutEvent) then) =
      __$SignOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignOutEventCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$SignOutEventCopyWith<$Res> {
  __$SignOutEventCopyWithImpl(
      _SignOutEvent _value, $Res Function(_SignOutEvent) _then)
      : super(_value, (v) => _then(v as _SignOutEvent));

  @override
  _SignOutEvent get _value => super._value as _SignOutEvent;
}

/// @nodoc

class _$_SignOutEvent implements _SignOutEvent {
  const _$_SignOutEvent();

  @override
  String toString() {
    return 'ProfileEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() delete,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? delete,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_DeleteEvent value) delete,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_DeleteEvent value)? delete,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_DeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOutEvent implements ProfileEvent {
  const factory _SignOutEvent() = _$_SignOutEvent;
}

/// @nodoc
abstract class _$DeleteEventCopyWith<$Res> {
  factory _$DeleteEventCopyWith(
          _DeleteEvent value, $Res Function(_DeleteEvent) then) =
      __$DeleteEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteEventCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$DeleteEventCopyWith<$Res> {
  __$DeleteEventCopyWithImpl(
      _DeleteEvent _value, $Res Function(_DeleteEvent) _then)
      : super(_value, (v) => _then(v as _DeleteEvent));

  @override
  _DeleteEvent get _value => super._value as _DeleteEvent;
}

/// @nodoc

class _$_DeleteEvent implements _DeleteEvent {
  const _$_DeleteEvent();

  @override
  String toString() {
    return 'ProfileEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DeleteEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? delete,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_DeleteEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_DeleteEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_DeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DeleteEvent implements ProfileEvent {
  const factory _DeleteEvent() = _$_DeleteEvent;
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  _ProfileState call(
      {required Option<Either<SynchrowiseFailure, Unit>> failureOrUnitOption}) {
    return _ProfileState(
      failureOrUnitOption: failureOrUnitOption,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  Option<Either<SynchrowiseFailure, Unit>> get failureOrUnitOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call({Option<Either<SynchrowiseFailure, Unit>> failureOrUnitOption});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? failureOrUnitOption = freezed,
  }) {
    return _then(_value.copyWith(
      failureOrUnitOption: failureOrUnitOption == freezed
          ? _value.failureOrUnitOption
          : failureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SynchrowiseFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) then) =
      __$ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<Either<SynchrowiseFailure, Unit>> failureOrUnitOption});
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(
      _ProfileState _value, $Res Function(_ProfileState) _then)
      : super(_value, (v) => _then(v as _ProfileState));

  @override
  _ProfileState get _value => super._value as _ProfileState;

  @override
  $Res call({
    Object? failureOrUnitOption = freezed,
  }) {
    return _then(_ProfileState(
      failureOrUnitOption: failureOrUnitOption == freezed
          ? _value.failureOrUnitOption
          : failureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SynchrowiseFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState({required this.failureOrUnitOption});

  @override
  final Option<Either<SynchrowiseFailure, Unit>> failureOrUnitOption;

  @override
  String toString() {
    return 'ProfileState(failureOrUnitOption: $failureOrUnitOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileState &&
            const DeepCollectionEquality()
                .equals(other.failureOrUnitOption, failureOrUnitOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrUnitOption));

  @JsonKey(ignore: true)
  @override
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required Option<Either<SynchrowiseFailure, Unit>>
          failureOrUnitOption}) = _$_ProfileState;

  @override
  Option<Either<SynchrowiseFailure, Unit>> get failureOrUnitOption;
  @override
  @JsonKey(ignore: true)
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
