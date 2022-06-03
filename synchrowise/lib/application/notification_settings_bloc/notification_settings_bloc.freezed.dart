// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationSettingsEventTearOff {
  const _$NotificationSettingsEventTearOff();

  _UpdateGroupNotificationEvent updateGroupNotification() {
    return const _UpdateGroupNotificationEvent();
  }

  _UpdateMessageNotificationEvent updateMessageNotification() {
    return const _UpdateMessageNotificationEvent();
  }
}

/// @nodoc
const $NotificationSettingsEvent = _$NotificationSettingsEventTearOff();

/// @nodoc
mixin _$NotificationSettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updateGroupNotification,
    required TResult Function() updateMessageNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? updateGroupNotification,
    TResult Function()? updateMessageNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateGroupNotification,
    TResult Function()? updateMessageNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateGroupNotificationEvent value)
        updateGroupNotification,
    required TResult Function(_UpdateMessageNotificationEvent value)
        updateMessageNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateGroupNotificationEvent value)?
        updateGroupNotification,
    TResult Function(_UpdateMessageNotificationEvent value)?
        updateMessageNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateGroupNotificationEvent value)?
        updateGroupNotification,
    TResult Function(_UpdateMessageNotificationEvent value)?
        updateMessageNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSettingsEventCopyWith<$Res> {
  factory $NotificationSettingsEventCopyWith(NotificationSettingsEvent value,
          $Res Function(NotificationSettingsEvent) then) =
      _$NotificationSettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationSettingsEventCopyWithImpl<$Res>
    implements $NotificationSettingsEventCopyWith<$Res> {
  _$NotificationSettingsEventCopyWithImpl(this._value, this._then);

  final NotificationSettingsEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationSettingsEvent) _then;
}

/// @nodoc
abstract class _$UpdateGroupNotificationEventCopyWith<$Res> {
  factory _$UpdateGroupNotificationEventCopyWith(
          _UpdateGroupNotificationEvent value,
          $Res Function(_UpdateGroupNotificationEvent) then) =
      __$UpdateGroupNotificationEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateGroupNotificationEventCopyWithImpl<$Res>
    extends _$NotificationSettingsEventCopyWithImpl<$Res>
    implements _$UpdateGroupNotificationEventCopyWith<$Res> {
  __$UpdateGroupNotificationEventCopyWithImpl(
      _UpdateGroupNotificationEvent _value,
      $Res Function(_UpdateGroupNotificationEvent) _then)
      : super(_value, (v) => _then(v as _UpdateGroupNotificationEvent));

  @override
  _UpdateGroupNotificationEvent get _value =>
      super._value as _UpdateGroupNotificationEvent;
}

/// @nodoc

class _$_UpdateGroupNotificationEvent implements _UpdateGroupNotificationEvent {
  const _$_UpdateGroupNotificationEvent();

  @override
  String toString() {
    return 'NotificationSettingsEvent.updateGroupNotification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateGroupNotificationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updateGroupNotification,
    required TResult Function() updateMessageNotification,
  }) {
    return updateGroupNotification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? updateGroupNotification,
    TResult Function()? updateMessageNotification,
  }) {
    return updateGroupNotification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateGroupNotification,
    TResult Function()? updateMessageNotification,
    required TResult orElse(),
  }) {
    if (updateGroupNotification != null) {
      return updateGroupNotification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateGroupNotificationEvent value)
        updateGroupNotification,
    required TResult Function(_UpdateMessageNotificationEvent value)
        updateMessageNotification,
  }) {
    return updateGroupNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateGroupNotificationEvent value)?
        updateGroupNotification,
    TResult Function(_UpdateMessageNotificationEvent value)?
        updateMessageNotification,
  }) {
    return updateGroupNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateGroupNotificationEvent value)?
        updateGroupNotification,
    TResult Function(_UpdateMessageNotificationEvent value)?
        updateMessageNotification,
    required TResult orElse(),
  }) {
    if (updateGroupNotification != null) {
      return updateGroupNotification(this);
    }
    return orElse();
  }
}

abstract class _UpdateGroupNotificationEvent
    implements NotificationSettingsEvent {
  const factory _UpdateGroupNotificationEvent() =
      _$_UpdateGroupNotificationEvent;
}

/// @nodoc
abstract class _$UpdateMessageNotificationEventCopyWith<$Res> {
  factory _$UpdateMessageNotificationEventCopyWith(
          _UpdateMessageNotificationEvent value,
          $Res Function(_UpdateMessageNotificationEvent) then) =
      __$UpdateMessageNotificationEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateMessageNotificationEventCopyWithImpl<$Res>
    extends _$NotificationSettingsEventCopyWithImpl<$Res>
    implements _$UpdateMessageNotificationEventCopyWith<$Res> {
  __$UpdateMessageNotificationEventCopyWithImpl(
      _UpdateMessageNotificationEvent _value,
      $Res Function(_UpdateMessageNotificationEvent) _then)
      : super(_value, (v) => _then(v as _UpdateMessageNotificationEvent));

  @override
  _UpdateMessageNotificationEvent get _value =>
      super._value as _UpdateMessageNotificationEvent;
}

/// @nodoc

class _$_UpdateMessageNotificationEvent
    implements _UpdateMessageNotificationEvent {
  const _$_UpdateMessageNotificationEvent();

  @override
  String toString() {
    return 'NotificationSettingsEvent.updateMessageNotification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateMessageNotificationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updateGroupNotification,
    required TResult Function() updateMessageNotification,
  }) {
    return updateMessageNotification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? updateGroupNotification,
    TResult Function()? updateMessageNotification,
  }) {
    return updateMessageNotification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateGroupNotification,
    TResult Function()? updateMessageNotification,
    required TResult orElse(),
  }) {
    if (updateMessageNotification != null) {
      return updateMessageNotification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateGroupNotificationEvent value)
        updateGroupNotification,
    required TResult Function(_UpdateMessageNotificationEvent value)
        updateMessageNotification,
  }) {
    return updateMessageNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateGroupNotificationEvent value)?
        updateGroupNotification,
    TResult Function(_UpdateMessageNotificationEvent value)?
        updateMessageNotification,
  }) {
    return updateMessageNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateGroupNotificationEvent value)?
        updateGroupNotification,
    TResult Function(_UpdateMessageNotificationEvent value)?
        updateMessageNotification,
    required TResult orElse(),
  }) {
    if (updateMessageNotification != null) {
      return updateMessageNotification(this);
    }
    return orElse();
  }
}

abstract class _UpdateMessageNotificationEvent
    implements NotificationSettingsEvent {
  const factory _UpdateMessageNotificationEvent() =
      _$_UpdateMessageNotificationEvent;
}

/// @nodoc
class _$NotificationSettingsStateTearOff {
  const _$NotificationSettingsStateTearOff();

  _NotificationSettingsState call(
      {required Option<Either<NotificationRepositoryFailure, Unit>>
          failureOrUnitOption}) {
    return _NotificationSettingsState(
      failureOrUnitOption: failureOrUnitOption,
    );
  }
}

/// @nodoc
const $NotificationSettingsState = _$NotificationSettingsStateTearOff();

/// @nodoc
mixin _$NotificationSettingsState {
  Option<Either<NotificationRepositoryFailure, Unit>> get failureOrUnitOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationSettingsStateCopyWith<NotificationSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSettingsStateCopyWith<$Res> {
  factory $NotificationSettingsStateCopyWith(NotificationSettingsState value,
          $Res Function(NotificationSettingsState) then) =
      _$NotificationSettingsStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<NotificationRepositoryFailure, Unit>>
          failureOrUnitOption});
}

/// @nodoc
class _$NotificationSettingsStateCopyWithImpl<$Res>
    implements $NotificationSettingsStateCopyWith<$Res> {
  _$NotificationSettingsStateCopyWithImpl(this._value, this._then);

  final NotificationSettingsState _value;
  // ignore: unused_field
  final $Res Function(NotificationSettingsState) _then;

  @override
  $Res call({
    Object? failureOrUnitOption = freezed,
  }) {
    return _then(_value.copyWith(
      failureOrUnitOption: failureOrUnitOption == freezed
          ? _value.failureOrUnitOption
          : failureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NotificationRepositoryFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$NotificationSettingsStateCopyWith<$Res>
    implements $NotificationSettingsStateCopyWith<$Res> {
  factory _$NotificationSettingsStateCopyWith(_NotificationSettingsState value,
          $Res Function(_NotificationSettingsState) then) =
      __$NotificationSettingsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<NotificationRepositoryFailure, Unit>>
          failureOrUnitOption});
}

/// @nodoc
class __$NotificationSettingsStateCopyWithImpl<$Res>
    extends _$NotificationSettingsStateCopyWithImpl<$Res>
    implements _$NotificationSettingsStateCopyWith<$Res> {
  __$NotificationSettingsStateCopyWithImpl(_NotificationSettingsState _value,
      $Res Function(_NotificationSettingsState) _then)
      : super(_value, (v) => _then(v as _NotificationSettingsState));

  @override
  _NotificationSettingsState get _value =>
      super._value as _NotificationSettingsState;

  @override
  $Res call({
    Object? failureOrUnitOption = freezed,
  }) {
    return _then(_NotificationSettingsState(
      failureOrUnitOption: failureOrUnitOption == freezed
          ? _value.failureOrUnitOption
          : failureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NotificationRepositoryFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_NotificationSettingsState implements _NotificationSettingsState {
  const _$_NotificationSettingsState({required this.failureOrUnitOption});

  @override
  final Option<Either<NotificationRepositoryFailure, Unit>> failureOrUnitOption;

  @override
  String toString() {
    return 'NotificationSettingsState(failureOrUnitOption: $failureOrUnitOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationSettingsState &&
            const DeepCollectionEquality()
                .equals(other.failureOrUnitOption, failureOrUnitOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrUnitOption));

  @JsonKey(ignore: true)
  @override
  _$NotificationSettingsStateCopyWith<_NotificationSettingsState>
      get copyWith =>
          __$NotificationSettingsStateCopyWithImpl<_NotificationSettingsState>(
              this, _$identity);
}

abstract class _NotificationSettingsState implements NotificationSettingsState {
  const factory _NotificationSettingsState(
      {required Option<Either<NotificationRepositoryFailure, Unit>>
          failureOrUnitOption}) = _$_NotificationSettingsState;

  @override
  Option<Either<NotificationRepositoryFailure, Unit>> get failureOrUnitOption;
  @override
  @JsonKey(ignore: true)
  _$NotificationSettingsStateCopyWith<_NotificationSettingsState>
      get copyWith => throw _privateConstructorUsedError;
}
