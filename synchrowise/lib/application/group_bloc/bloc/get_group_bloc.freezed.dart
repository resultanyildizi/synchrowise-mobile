// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetGroupEventTearOff {
  const _$GetGroupEventTearOff();

  _GetGroupFetchEvent fetch() {
    return const _GetGroupFetchEvent();
  }
}

/// @nodoc
const $GetGroupEvent = _$GetGroupEventTearOff();

/// @nodoc
mixin _$GetGroupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroupFetchEvent value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetGroupFetchEvent value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupFetchEvent value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetGroupEventCopyWith<$Res> {
  factory $GetGroupEventCopyWith(
          GetGroupEvent value, $Res Function(GetGroupEvent) then) =
      _$GetGroupEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetGroupEventCopyWithImpl<$Res>
    implements $GetGroupEventCopyWith<$Res> {
  _$GetGroupEventCopyWithImpl(this._value, this._then);

  final GetGroupEvent _value;
  // ignore: unused_field
  final $Res Function(GetGroupEvent) _then;
}

/// @nodoc
abstract class _$GetGroupFetchEventCopyWith<$Res> {
  factory _$GetGroupFetchEventCopyWith(
          _GetGroupFetchEvent value, $Res Function(_GetGroupFetchEvent) then) =
      __$GetGroupFetchEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetGroupFetchEventCopyWithImpl<$Res>
    extends _$GetGroupEventCopyWithImpl<$Res>
    implements _$GetGroupFetchEventCopyWith<$Res> {
  __$GetGroupFetchEventCopyWithImpl(
      _GetGroupFetchEvent _value, $Res Function(_GetGroupFetchEvent) _then)
      : super(_value, (v) => _then(v as _GetGroupFetchEvent));

  @override
  _GetGroupFetchEvent get _value => super._value as _GetGroupFetchEvent;
}

/// @nodoc

class _$_GetGroupFetchEvent implements _GetGroupFetchEvent {
  const _$_GetGroupFetchEvent();

  @override
  String toString() {
    return 'GetGroupEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetGroupFetchEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroupFetchEvent value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetGroupFetchEvent value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupFetchEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _GetGroupFetchEvent implements GetGroupEvent {
  const factory _GetGroupFetchEvent() = _$_GetGroupFetchEvent;
}

/// @nodoc
class _$GetGroupStateTearOff {
  const _$GetGroupStateTearOff();

  _GetGroupInitialState initial() {
    return const _GetGroupInitialState();
  }

  _GetGroupLoadingState loading() {
    return const _GetGroupLoadingState();
  }

  _GetGroupLoadedState loaded({required GroupData groupData}) {
    return _GetGroupLoadedState(
      groupData: groupData,
    );
  }

  _GetGroupFailureState failure({required SynchrowiseFailure failure}) {
    return _GetGroupFailureState(
      failure: failure,
    );
  }
}

/// @nodoc
const $GetGroupState = _$GetGroupStateTearOff();

/// @nodoc
mixin _$GetGroupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GroupData groupData) loaded,
    required TResult Function(SynchrowiseFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GroupData groupData)? loaded,
    TResult Function(SynchrowiseFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GroupData groupData)? loaded,
    TResult Function(SynchrowiseFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroupInitialState value) initial,
    required TResult Function(_GetGroupLoadingState value) loading,
    required TResult Function(_GetGroupLoadedState value) loaded,
    required TResult Function(_GetGroupFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetGroupInitialState value)? initial,
    TResult Function(_GetGroupLoadingState value)? loading,
    TResult Function(_GetGroupLoadedState value)? loaded,
    TResult Function(_GetGroupFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupInitialState value)? initial,
    TResult Function(_GetGroupLoadingState value)? loading,
    TResult Function(_GetGroupLoadedState value)? loaded,
    TResult Function(_GetGroupFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetGroupStateCopyWith<$Res> {
  factory $GetGroupStateCopyWith(
          GetGroupState value, $Res Function(GetGroupState) then) =
      _$GetGroupStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetGroupStateCopyWithImpl<$Res>
    implements $GetGroupStateCopyWith<$Res> {
  _$GetGroupStateCopyWithImpl(this._value, this._then);

  final GetGroupState _value;
  // ignore: unused_field
  final $Res Function(GetGroupState) _then;
}

/// @nodoc
abstract class _$GetGroupInitialStateCopyWith<$Res> {
  factory _$GetGroupInitialStateCopyWith(_GetGroupInitialState value,
          $Res Function(_GetGroupInitialState) then) =
      __$GetGroupInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetGroupInitialStateCopyWithImpl<$Res>
    extends _$GetGroupStateCopyWithImpl<$Res>
    implements _$GetGroupInitialStateCopyWith<$Res> {
  __$GetGroupInitialStateCopyWithImpl(
      _GetGroupInitialState _value, $Res Function(_GetGroupInitialState) _then)
      : super(_value, (v) => _then(v as _GetGroupInitialState));

  @override
  _GetGroupInitialState get _value => super._value as _GetGroupInitialState;
}

/// @nodoc

class _$_GetGroupInitialState implements _GetGroupInitialState {
  const _$_GetGroupInitialState();

  @override
  String toString() {
    return 'GetGroupState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetGroupInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GroupData groupData) loaded,
    required TResult Function(SynchrowiseFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GroupData groupData)? loaded,
    TResult Function(SynchrowiseFailure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GroupData groupData)? loaded,
    TResult Function(SynchrowiseFailure failure)? failure,
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
    required TResult Function(_GetGroupInitialState value) initial,
    required TResult Function(_GetGroupLoadingState value) loading,
    required TResult Function(_GetGroupLoadedState value) loaded,
    required TResult Function(_GetGroupFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetGroupInitialState value)? initial,
    TResult Function(_GetGroupLoadingState value)? loading,
    TResult Function(_GetGroupLoadedState value)? loaded,
    TResult Function(_GetGroupFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupInitialState value)? initial,
    TResult Function(_GetGroupLoadingState value)? loading,
    TResult Function(_GetGroupLoadedState value)? loaded,
    TResult Function(_GetGroupFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetGroupInitialState implements GetGroupState {
  const factory _GetGroupInitialState() = _$_GetGroupInitialState;
}

/// @nodoc
abstract class _$GetGroupLoadingStateCopyWith<$Res> {
  factory _$GetGroupLoadingStateCopyWith(_GetGroupLoadingState value,
          $Res Function(_GetGroupLoadingState) then) =
      __$GetGroupLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetGroupLoadingStateCopyWithImpl<$Res>
    extends _$GetGroupStateCopyWithImpl<$Res>
    implements _$GetGroupLoadingStateCopyWith<$Res> {
  __$GetGroupLoadingStateCopyWithImpl(
      _GetGroupLoadingState _value, $Res Function(_GetGroupLoadingState) _then)
      : super(_value, (v) => _then(v as _GetGroupLoadingState));

  @override
  _GetGroupLoadingState get _value => super._value as _GetGroupLoadingState;
}

/// @nodoc

class _$_GetGroupLoadingState implements _GetGroupLoadingState {
  const _$_GetGroupLoadingState();

  @override
  String toString() {
    return 'GetGroupState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetGroupLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GroupData groupData) loaded,
    required TResult Function(SynchrowiseFailure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GroupData groupData)? loaded,
    TResult Function(SynchrowiseFailure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GroupData groupData)? loaded,
    TResult Function(SynchrowiseFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroupInitialState value) initial,
    required TResult Function(_GetGroupLoadingState value) loading,
    required TResult Function(_GetGroupLoadedState value) loaded,
    required TResult Function(_GetGroupFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetGroupInitialState value)? initial,
    TResult Function(_GetGroupLoadingState value)? loading,
    TResult Function(_GetGroupLoadedState value)? loaded,
    TResult Function(_GetGroupFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupInitialState value)? initial,
    TResult Function(_GetGroupLoadingState value)? loading,
    TResult Function(_GetGroupLoadedState value)? loaded,
    TResult Function(_GetGroupFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _GetGroupLoadingState implements GetGroupState {
  const factory _GetGroupLoadingState() = _$_GetGroupLoadingState;
}

/// @nodoc
abstract class _$GetGroupLoadedStateCopyWith<$Res> {
  factory _$GetGroupLoadedStateCopyWith(_GetGroupLoadedState value,
          $Res Function(_GetGroupLoadedState) then) =
      __$GetGroupLoadedStateCopyWithImpl<$Res>;
  $Res call({GroupData groupData});
}

/// @nodoc
class __$GetGroupLoadedStateCopyWithImpl<$Res>
    extends _$GetGroupStateCopyWithImpl<$Res>
    implements _$GetGroupLoadedStateCopyWith<$Res> {
  __$GetGroupLoadedStateCopyWithImpl(
      _GetGroupLoadedState _value, $Res Function(_GetGroupLoadedState) _then)
      : super(_value, (v) => _then(v as _GetGroupLoadedState));

  @override
  _GetGroupLoadedState get _value => super._value as _GetGroupLoadedState;

  @override
  $Res call({
    Object? groupData = freezed,
  }) {
    return _then(_GetGroupLoadedState(
      groupData: groupData == freezed
          ? _value.groupData
          : groupData // ignore: cast_nullable_to_non_nullable
              as GroupData,
    ));
  }
}

/// @nodoc

class _$_GetGroupLoadedState implements _GetGroupLoadedState {
  const _$_GetGroupLoadedState({required this.groupData});

  @override
  final GroupData groupData;

  @override
  String toString() {
    return 'GetGroupState.loaded(groupData: $groupData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetGroupLoadedState &&
            const DeepCollectionEquality().equals(other.groupData, groupData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupData));

  @JsonKey(ignore: true)
  @override
  _$GetGroupLoadedStateCopyWith<_GetGroupLoadedState> get copyWith =>
      __$GetGroupLoadedStateCopyWithImpl<_GetGroupLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GroupData groupData) loaded,
    required TResult Function(SynchrowiseFailure failure) failure,
  }) {
    return loaded(groupData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GroupData groupData)? loaded,
    TResult Function(SynchrowiseFailure failure)? failure,
  }) {
    return loaded?.call(groupData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GroupData groupData)? loaded,
    TResult Function(SynchrowiseFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(groupData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroupInitialState value) initial,
    required TResult Function(_GetGroupLoadingState value) loading,
    required TResult Function(_GetGroupLoadedState value) loaded,
    required TResult Function(_GetGroupFailureState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetGroupInitialState value)? initial,
    TResult Function(_GetGroupLoadingState value)? loading,
    TResult Function(_GetGroupLoadedState value)? loaded,
    TResult Function(_GetGroupFailureState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupInitialState value)? initial,
    TResult Function(_GetGroupLoadingState value)? loading,
    TResult Function(_GetGroupLoadedState value)? loaded,
    TResult Function(_GetGroupFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _GetGroupLoadedState implements GetGroupState {
  const factory _GetGroupLoadedState({required GroupData groupData}) =
      _$_GetGroupLoadedState;

  GroupData get groupData;
  @JsonKey(ignore: true)
  _$GetGroupLoadedStateCopyWith<_GetGroupLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetGroupFailureStateCopyWith<$Res> {
  factory _$GetGroupFailureStateCopyWith(_GetGroupFailureState value,
          $Res Function(_GetGroupFailureState) then) =
      __$GetGroupFailureStateCopyWithImpl<$Res>;
  $Res call({SynchrowiseFailure failure});
}

/// @nodoc
class __$GetGroupFailureStateCopyWithImpl<$Res>
    extends _$GetGroupStateCopyWithImpl<$Res>
    implements _$GetGroupFailureStateCopyWith<$Res> {
  __$GetGroupFailureStateCopyWithImpl(
      _GetGroupFailureState _value, $Res Function(_GetGroupFailureState) _then)
      : super(_value, (v) => _then(v as _GetGroupFailureState));

  @override
  _GetGroupFailureState get _value => super._value as _GetGroupFailureState;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_GetGroupFailureState(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as SynchrowiseFailure,
    ));
  }
}

/// @nodoc

class _$_GetGroupFailureState implements _GetGroupFailureState {
  const _$_GetGroupFailureState({required this.failure});

  @override
  final SynchrowiseFailure failure;

  @override
  String toString() {
    return 'GetGroupState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetGroupFailureState &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$GetGroupFailureStateCopyWith<_GetGroupFailureState> get copyWith =>
      __$GetGroupFailureStateCopyWithImpl<_GetGroupFailureState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GroupData groupData) loaded,
    required TResult Function(SynchrowiseFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GroupData groupData)? loaded,
    TResult Function(SynchrowiseFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GroupData groupData)? loaded,
    TResult Function(SynchrowiseFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroupInitialState value) initial,
    required TResult Function(_GetGroupLoadingState value) loading,
    required TResult Function(_GetGroupLoadedState value) loaded,
    required TResult Function(_GetGroupFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetGroupInitialState value)? initial,
    TResult Function(_GetGroupLoadingState value)? loading,
    TResult Function(_GetGroupLoadedState value)? loaded,
    TResult Function(_GetGroupFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupInitialState value)? initial,
    TResult Function(_GetGroupLoadingState value)? loading,
    TResult Function(_GetGroupLoadedState value)? loaded,
    TResult Function(_GetGroupFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _GetGroupFailureState implements GetGroupState {
  const factory _GetGroupFailureState({required SynchrowiseFailure failure}) =
      _$_GetGroupFailureState;

  SynchrowiseFailure get failure;
  @JsonKey(ignore: true)
  _$GetGroupFailureStateCopyWith<_GetGroupFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
