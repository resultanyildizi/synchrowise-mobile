// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'messaging_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessagingEventTearOff {
  const _$MessagingEventTearOff();

  _StartEvent start() {
    return const _StartEvent();
  }
}

/// @nodoc
const $MessagingEvent = _$MessagingEventTearOff();

/// @nodoc
mixin _$MessagingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartEvent value) start,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartEvent value)? start,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartEvent value)? start,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagingEventCopyWith<$Res> {
  factory $MessagingEventCopyWith(
          MessagingEvent value, $Res Function(MessagingEvent) then) =
      _$MessagingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessagingEventCopyWithImpl<$Res>
    implements $MessagingEventCopyWith<$Res> {
  _$MessagingEventCopyWithImpl(this._value, this._then);

  final MessagingEvent _value;
  // ignore: unused_field
  final $Res Function(MessagingEvent) _then;
}

/// @nodoc
abstract class _$StartEventCopyWith<$Res> {
  factory _$StartEventCopyWith(
          _StartEvent value, $Res Function(_StartEvent) then) =
      __$StartEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartEventCopyWithImpl<$Res> extends _$MessagingEventCopyWithImpl<$Res>
    implements _$StartEventCopyWith<$Res> {
  __$StartEventCopyWithImpl(
      _StartEvent _value, $Res Function(_StartEvent) _then)
      : super(_value, (v) => _then(v as _StartEvent));

  @override
  _StartEvent get _value => super._value as _StartEvent;
}

/// @nodoc

class _$_StartEvent implements _StartEvent {
  const _$_StartEvent();

  @override
  String toString() {
    return 'MessagingEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _StartEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartEvent value) start,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartEvent value)? start,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartEvent value)? start,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _StartEvent implements MessagingEvent {
  const factory _StartEvent() = _$_StartEvent;
}

/// @nodoc
class _$MessagingStateTearOff {
  const _$MessagingStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _OnMessage onMessage({required SynchrowiseMessage message}) {
    return _OnMessage(
      message: message,
    );
  }

  _OnMessageOpenedApp onMessageOpenedApp(
      {required SynchrowiseMessage message}) {
    return _OnMessageOpenedApp(
      message: message,
    );
  }
}

/// @nodoc
const $MessagingState = _$MessagingStateTearOff();

/// @nodoc
mixin _$MessagingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SynchrowiseMessage message) onMessage,
    required TResult Function(SynchrowiseMessage message) onMessageOpenedApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SynchrowiseMessage message)? onMessage,
    TResult Function(SynchrowiseMessage message)? onMessageOpenedApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SynchrowiseMessage message)? onMessage,
    TResult Function(SynchrowiseMessage message)? onMessageOpenedApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnMessage value) onMessage,
    required TResult Function(_OnMessageOpenedApp value) onMessageOpenedApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnMessage value)? onMessage,
    TResult Function(_OnMessageOpenedApp value)? onMessageOpenedApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnMessage value)? onMessage,
    TResult Function(_OnMessageOpenedApp value)? onMessageOpenedApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagingStateCopyWith<$Res> {
  factory $MessagingStateCopyWith(
          MessagingState value, $Res Function(MessagingState) then) =
      _$MessagingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessagingStateCopyWithImpl<$Res>
    implements $MessagingStateCopyWith<$Res> {
  _$MessagingStateCopyWithImpl(this._value, this._then);

  final MessagingState _value;
  // ignore: unused_field
  final $Res Function(MessagingState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$MessagingStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MessagingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SynchrowiseMessage message) onMessage,
    required TResult Function(SynchrowiseMessage message) onMessageOpenedApp,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SynchrowiseMessage message)? onMessage,
    TResult Function(SynchrowiseMessage message)? onMessageOpenedApp,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SynchrowiseMessage message)? onMessage,
    TResult Function(SynchrowiseMessage message)? onMessageOpenedApp,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnMessage value) onMessage,
    required TResult Function(_OnMessageOpenedApp value) onMessageOpenedApp,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnMessage value)? onMessage,
    TResult Function(_OnMessageOpenedApp value)? onMessageOpenedApp,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnMessage value)? onMessage,
    TResult Function(_OnMessageOpenedApp value)? onMessageOpenedApp,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MessagingState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$OnMessageCopyWith<$Res> {
  factory _$OnMessageCopyWith(
          _OnMessage value, $Res Function(_OnMessage) then) =
      __$OnMessageCopyWithImpl<$Res>;
  $Res call({SynchrowiseMessage message});
}

/// @nodoc
class __$OnMessageCopyWithImpl<$Res> extends _$MessagingStateCopyWithImpl<$Res>
    implements _$OnMessageCopyWith<$Res> {
  __$OnMessageCopyWithImpl(_OnMessage _value, $Res Function(_OnMessage) _then)
      : super(_value, (v) => _then(v as _OnMessage));

  @override
  _OnMessage get _value => super._value as _OnMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_OnMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as SynchrowiseMessage,
    ));
  }
}

/// @nodoc

class _$_OnMessage implements _OnMessage {
  const _$_OnMessage({required this.message});

  @override
  final SynchrowiseMessage message;

  @override
  String toString() {
    return 'MessagingState.onMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$OnMessageCopyWith<_OnMessage> get copyWith =>
      __$OnMessageCopyWithImpl<_OnMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SynchrowiseMessage message) onMessage,
    required TResult Function(SynchrowiseMessage message) onMessageOpenedApp,
  }) {
    return onMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SynchrowiseMessage message)? onMessage,
    TResult Function(SynchrowiseMessage message)? onMessageOpenedApp,
  }) {
    return onMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SynchrowiseMessage message)? onMessage,
    TResult Function(SynchrowiseMessage message)? onMessageOpenedApp,
    required TResult orElse(),
  }) {
    if (onMessage != null) {
      return onMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnMessage value) onMessage,
    required TResult Function(_OnMessageOpenedApp value) onMessageOpenedApp,
  }) {
    return onMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnMessage value)? onMessage,
    TResult Function(_OnMessageOpenedApp value)? onMessageOpenedApp,
  }) {
    return onMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnMessage value)? onMessage,
    TResult Function(_OnMessageOpenedApp value)? onMessageOpenedApp,
    required TResult orElse(),
  }) {
    if (onMessage != null) {
      return onMessage(this);
    }
    return orElse();
  }
}

abstract class _OnMessage implements MessagingState {
  const factory _OnMessage({required SynchrowiseMessage message}) =
      _$_OnMessage;

  SynchrowiseMessage get message;
  @JsonKey(ignore: true)
  _$OnMessageCopyWith<_OnMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnMessageOpenedAppCopyWith<$Res> {
  factory _$OnMessageOpenedAppCopyWith(
          _OnMessageOpenedApp value, $Res Function(_OnMessageOpenedApp) then) =
      __$OnMessageOpenedAppCopyWithImpl<$Res>;
  $Res call({SynchrowiseMessage message});
}

/// @nodoc
class __$OnMessageOpenedAppCopyWithImpl<$Res>
    extends _$MessagingStateCopyWithImpl<$Res>
    implements _$OnMessageOpenedAppCopyWith<$Res> {
  __$OnMessageOpenedAppCopyWithImpl(
      _OnMessageOpenedApp _value, $Res Function(_OnMessageOpenedApp) _then)
      : super(_value, (v) => _then(v as _OnMessageOpenedApp));

  @override
  _OnMessageOpenedApp get _value => super._value as _OnMessageOpenedApp;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_OnMessageOpenedApp(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as SynchrowiseMessage,
    ));
  }
}

/// @nodoc

class _$_OnMessageOpenedApp implements _OnMessageOpenedApp {
  const _$_OnMessageOpenedApp({required this.message});

  @override
  final SynchrowiseMessage message;

  @override
  String toString() {
    return 'MessagingState.onMessageOpenedApp(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnMessageOpenedApp &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$OnMessageOpenedAppCopyWith<_OnMessageOpenedApp> get copyWith =>
      __$OnMessageOpenedAppCopyWithImpl<_OnMessageOpenedApp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SynchrowiseMessage message) onMessage,
    required TResult Function(SynchrowiseMessage message) onMessageOpenedApp,
  }) {
    return onMessageOpenedApp(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SynchrowiseMessage message)? onMessage,
    TResult Function(SynchrowiseMessage message)? onMessageOpenedApp,
  }) {
    return onMessageOpenedApp?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SynchrowiseMessage message)? onMessage,
    TResult Function(SynchrowiseMessage message)? onMessageOpenedApp,
    required TResult orElse(),
  }) {
    if (onMessageOpenedApp != null) {
      return onMessageOpenedApp(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnMessage value) onMessage,
    required TResult Function(_OnMessageOpenedApp value) onMessageOpenedApp,
  }) {
    return onMessageOpenedApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnMessage value)? onMessage,
    TResult Function(_OnMessageOpenedApp value)? onMessageOpenedApp,
  }) {
    return onMessageOpenedApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnMessage value)? onMessage,
    TResult Function(_OnMessageOpenedApp value)? onMessageOpenedApp,
    required TResult orElse(),
  }) {
    if (onMessageOpenedApp != null) {
      return onMessageOpenedApp(this);
    }
    return orElse();
  }
}

abstract class _OnMessageOpenedApp implements MessagingState {
  const factory _OnMessageOpenedApp({required SynchrowiseMessage message}) =
      _$_OnMessageOpenedApp;

  SynchrowiseMessage get message;
  @JsonKey(ignore: true)
  _$OnMessageOpenedAppCopyWith<_OnMessageOpenedApp> get copyWith =>
      throw _privateConstructorUsedError;
}
