// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_steps_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterStepsEventTearOff {
  const _$RegisterStepsEventTearOff();

  _RegisterStepsUpdateUsernameTextEvent updateUsernameText(
      {required String username}) {
    return _RegisterStepsUpdateUsernameTextEvent(
      username: username,
    );
  }

  _RegisterStepsUpdateAvatarImageEvent updateAvatarImage(
      {required AndroidUiSettings androidUiSettings,
      required IOSUiSettings iosUiSettings}) {
    return _RegisterStepsUpdateAvatarImageEvent(
      androidUiSettings: androidUiSettings,
      iosUiSettings: iosUiSettings,
    );
  }

  _RegisterStepsSaveUsernameEvent saveUsername() {
    return const _RegisterStepsSaveUsernameEvent();
  }

  _RegisterStepsRegisterFieldsEvent registerFields(
      {required SynchrowiseUser synchrowiseUser}) {
    return _RegisterStepsRegisterFieldsEvent(
      synchrowiseUser: synchrowiseUser,
    );
  }

  _RegisterStepsGoBackEvent goBack() {
    return const _RegisterStepsGoBackEvent();
  }

  _RegisterStepsGoNextEvent goNext() {
    return const _RegisterStepsGoNextEvent();
  }

  _RegisterStepsRemoveAvatarImageEvent removeAvatarImage() {
    return const _RegisterStepsRemoveAvatarImageEvent();
  }
}

/// @nodoc
const $RegisterStepsEvent = _$RegisterStepsEventTearOff();

/// @nodoc
mixin _$RegisterStepsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) updateUsernameText,
    required TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)
        updateAvatarImage,
    required TResult Function() saveUsername,
    required TResult Function(SynchrowiseUser synchrowiseUser) registerFields,
    required TResult Function() goBack,
    required TResult Function() goNext,
    required TResult Function() removeAvatarImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)?
        updateAvatarImage,
    TResult Function()? saveUsername,
    TResult Function(SynchrowiseUser synchrowiseUser)? registerFields,
    TResult Function()? goBack,
    TResult Function()? goNext,
    TResult Function()? removeAvatarImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)?
        updateAvatarImage,
    TResult Function()? saveUsername,
    TResult Function(SynchrowiseUser synchrowiseUser)? registerFields,
    TResult Function()? goBack,
    TResult Function()? goNext,
    TResult Function()? removeAvatarImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterStepsUpdateUsernameTextEvent value)
        updateUsernameText,
    required TResult Function(_RegisterStepsUpdateAvatarImageEvent value)
        updateAvatarImage,
    required TResult Function(_RegisterStepsSaveUsernameEvent value)
        saveUsername,
    required TResult Function(_RegisterStepsRegisterFieldsEvent value)
        registerFields,
    required TResult Function(_RegisterStepsGoBackEvent value) goBack,
    required TResult Function(_RegisterStepsGoNextEvent value) goNext,
    required TResult Function(_RegisterStepsRemoveAvatarImageEvent value)
        removeAvatarImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterStepsUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterStepsUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterStepsSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterStepsRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterStepsGoBackEvent value)? goBack,
    TResult Function(_RegisterStepsGoNextEvent value)? goNext,
    TResult Function(_RegisterStepsRemoveAvatarImageEvent value)?
        removeAvatarImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterStepsUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterStepsUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterStepsSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterStepsRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterStepsGoBackEvent value)? goBack,
    TResult Function(_RegisterStepsGoNextEvent value)? goNext,
    TResult Function(_RegisterStepsRemoveAvatarImageEvent value)?
        removeAvatarImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStepsEventCopyWith<$Res> {
  factory $RegisterStepsEventCopyWith(
          RegisterStepsEvent value, $Res Function(RegisterStepsEvent) then) =
      _$RegisterStepsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterStepsEventCopyWithImpl<$Res>
    implements $RegisterStepsEventCopyWith<$Res> {
  _$RegisterStepsEventCopyWithImpl(this._value, this._then);

  final RegisterStepsEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterStepsEvent) _then;
}

/// @nodoc
abstract class _$RegisterStepsUpdateUsernameTextEventCopyWith<$Res> {
  factory _$RegisterStepsUpdateUsernameTextEventCopyWith(
          _RegisterStepsUpdateUsernameTextEvent value,
          $Res Function(_RegisterStepsUpdateUsernameTextEvent) then) =
      __$RegisterStepsUpdateUsernameTextEventCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$RegisterStepsUpdateUsernameTextEventCopyWithImpl<$Res>
    extends _$RegisterStepsEventCopyWithImpl<$Res>
    implements _$RegisterStepsUpdateUsernameTextEventCopyWith<$Res> {
  __$RegisterStepsUpdateUsernameTextEventCopyWithImpl(
      _RegisterStepsUpdateUsernameTextEvent _value,
      $Res Function(_RegisterStepsUpdateUsernameTextEvent) _then)
      : super(_value, (v) => _then(v as _RegisterStepsUpdateUsernameTextEvent));

  @override
  _RegisterStepsUpdateUsernameTextEvent get _value =>
      super._value as _RegisterStepsUpdateUsernameTextEvent;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_RegisterStepsUpdateUsernameTextEvent(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterStepsUpdateUsernameTextEvent
    implements _RegisterStepsUpdateUsernameTextEvent {
  const _$_RegisterStepsUpdateUsernameTextEvent({required this.username});

  @override
  final String username;

  @override
  String toString() {
    return 'RegisterStepsEvent.updateUsernameText(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterStepsUpdateUsernameTextEvent &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$RegisterStepsUpdateUsernameTextEventCopyWith<
          _RegisterStepsUpdateUsernameTextEvent>
      get copyWith => __$RegisterStepsUpdateUsernameTextEventCopyWithImpl<
          _RegisterStepsUpdateUsernameTextEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) updateUsernameText,
    required TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)
        updateAvatarImage,
    required TResult Function() saveUsername,
    required TResult Function(SynchrowiseUser synchrowiseUser) registerFields,
    required TResult Function() goBack,
    required TResult Function() goNext,
    required TResult Function() removeAvatarImage,
  }) {
    return updateUsernameText(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)?
        updateAvatarImage,
    TResult Function()? saveUsername,
    TResult Function(SynchrowiseUser synchrowiseUser)? registerFields,
    TResult Function()? goBack,
    TResult Function()? goNext,
    TResult Function()? removeAvatarImage,
  }) {
    return updateUsernameText?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)?
        updateAvatarImage,
    TResult Function()? saveUsername,
    TResult Function(SynchrowiseUser synchrowiseUser)? registerFields,
    TResult Function()? goBack,
    TResult Function()? goNext,
    TResult Function()? removeAvatarImage,
    required TResult orElse(),
  }) {
    if (updateUsernameText != null) {
      return updateUsernameText(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterStepsUpdateUsernameTextEvent value)
        updateUsernameText,
    required TResult Function(_RegisterStepsUpdateAvatarImageEvent value)
        updateAvatarImage,
    required TResult Function(_RegisterStepsSaveUsernameEvent value)
        saveUsername,
    required TResult Function(_RegisterStepsRegisterFieldsEvent value)
        registerFields,
    required TResult Function(_RegisterStepsGoBackEvent value) goBack,
    required TResult Function(_RegisterStepsGoNextEvent value) goNext,
    required TResult Function(_RegisterStepsRemoveAvatarImageEvent value)
        removeAvatarImage,
  }) {
    return updateUsernameText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterStepsUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterStepsUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterStepsSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterStepsRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterStepsGoBackEvent value)? goBack,
    TResult Function(_RegisterStepsGoNextEvent value)? goNext,
    TResult Function(_RegisterStepsRemoveAvatarImageEvent value)?
        removeAvatarImage,
  }) {
    return updateUsernameText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterStepsUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterStepsUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterStepsSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterStepsRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterStepsGoBackEvent value)? goBack,
    TResult Function(_RegisterStepsGoNextEvent value)? goNext,
    TResult Function(_RegisterStepsRemoveAvatarImageEvent value)?
        removeAvatarImage,
    required TResult orElse(),
  }) {
    if (updateUsernameText != null) {
      return updateUsernameText(this);
    }
    return orElse();
  }
}

abstract class _RegisterStepsUpdateUsernameTextEvent
    implements RegisterStepsEvent {
  const factory _RegisterStepsUpdateUsernameTextEvent(
      {required String username}) = _$_RegisterStepsUpdateUsernameTextEvent;

  String get username;
  @JsonKey(ignore: true)
  _$RegisterStepsUpdateUsernameTextEventCopyWith<
          _RegisterStepsUpdateUsernameTextEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterStepsUpdateAvatarImageEventCopyWith<$Res> {
  factory _$RegisterStepsUpdateAvatarImageEventCopyWith(
          _RegisterStepsUpdateAvatarImageEvent value,
          $Res Function(_RegisterStepsUpdateAvatarImageEvent) then) =
      __$RegisterStepsUpdateAvatarImageEventCopyWithImpl<$Res>;
  $Res call({AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings});
}

/// @nodoc
class __$RegisterStepsUpdateAvatarImageEventCopyWithImpl<$Res>
    extends _$RegisterStepsEventCopyWithImpl<$Res>
    implements _$RegisterStepsUpdateAvatarImageEventCopyWith<$Res> {
  __$RegisterStepsUpdateAvatarImageEventCopyWithImpl(
      _RegisterStepsUpdateAvatarImageEvent _value,
      $Res Function(_RegisterStepsUpdateAvatarImageEvent) _then)
      : super(_value, (v) => _then(v as _RegisterStepsUpdateAvatarImageEvent));

  @override
  _RegisterStepsUpdateAvatarImageEvent get _value =>
      super._value as _RegisterStepsUpdateAvatarImageEvent;

  @override
  $Res call({
    Object? androidUiSettings = freezed,
    Object? iosUiSettings = freezed,
  }) {
    return _then(_RegisterStepsUpdateAvatarImageEvent(
      androidUiSettings: androidUiSettings == freezed
          ? _value.androidUiSettings
          : androidUiSettings // ignore: cast_nullable_to_non_nullable
              as AndroidUiSettings,
      iosUiSettings: iosUiSettings == freezed
          ? _value.iosUiSettings
          : iosUiSettings // ignore: cast_nullable_to_non_nullable
              as IOSUiSettings,
    ));
  }
}

/// @nodoc

class _$_RegisterStepsUpdateAvatarImageEvent
    implements _RegisterStepsUpdateAvatarImageEvent {
  const _$_RegisterStepsUpdateAvatarImageEvent(
      {required this.androidUiSettings, required this.iosUiSettings});

  @override
  final AndroidUiSettings androidUiSettings;
  @override
  final IOSUiSettings iosUiSettings;

  @override
  String toString() {
    return 'RegisterStepsEvent.updateAvatarImage(androidUiSettings: $androidUiSettings, iosUiSettings: $iosUiSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterStepsUpdateAvatarImageEvent &&
            const DeepCollectionEquality()
                .equals(other.androidUiSettings, androidUiSettings) &&
            const DeepCollectionEquality()
                .equals(other.iosUiSettings, iosUiSettings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(androidUiSettings),
      const DeepCollectionEquality().hash(iosUiSettings));

  @JsonKey(ignore: true)
  @override
  _$RegisterStepsUpdateAvatarImageEventCopyWith<
          _RegisterStepsUpdateAvatarImageEvent>
      get copyWith => __$RegisterStepsUpdateAvatarImageEventCopyWithImpl<
          _RegisterStepsUpdateAvatarImageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) updateUsernameText,
    required TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)
        updateAvatarImage,
    required TResult Function() saveUsername,
    required TResult Function(SynchrowiseUser synchrowiseUser) registerFields,
    required TResult Function() goBack,
    required TResult Function() goNext,
    required TResult Function() removeAvatarImage,
  }) {
    return updateAvatarImage(androidUiSettings, iosUiSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)?
        updateAvatarImage,
    TResult Function()? saveUsername,
    TResult Function(SynchrowiseUser synchrowiseUser)? registerFields,
    TResult Function()? goBack,
    TResult Function()? goNext,
    TResult Function()? removeAvatarImage,
  }) {
    return updateAvatarImage?.call(androidUiSettings, iosUiSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)?
        updateAvatarImage,
    TResult Function()? saveUsername,
    TResult Function(SynchrowiseUser synchrowiseUser)? registerFields,
    TResult Function()? goBack,
    TResult Function()? goNext,
    TResult Function()? removeAvatarImage,
    required TResult orElse(),
  }) {
    if (updateAvatarImage != null) {
      return updateAvatarImage(androidUiSettings, iosUiSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterStepsUpdateUsernameTextEvent value)
        updateUsernameText,
    required TResult Function(_RegisterStepsUpdateAvatarImageEvent value)
        updateAvatarImage,
    required TResult Function(_RegisterStepsSaveUsernameEvent value)
        saveUsername,
    required TResult Function(_RegisterStepsRegisterFieldsEvent value)
        registerFields,
    required TResult Function(_RegisterStepsGoBackEvent value) goBack,
    required TResult Function(_RegisterStepsGoNextEvent value) goNext,
    required TResult Function(_RegisterStepsRemoveAvatarImageEvent value)
        removeAvatarImage,
  }) {
    return updateAvatarImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterStepsUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterStepsUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterStepsSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterStepsRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterStepsGoBackEvent value)? goBack,
    TResult Function(_RegisterStepsGoNextEvent value)? goNext,
    TResult Function(_RegisterStepsRemoveAvatarImageEvent value)?
        removeAvatarImage,
  }) {
    return updateAvatarImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterStepsUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterStepsUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterStepsSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterStepsRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterStepsGoBackEvent value)? goBack,
    TResult Function(_RegisterStepsGoNextEvent value)? goNext,
    TResult Function(_RegisterStepsRemoveAvatarImageEvent value)?
        removeAvatarImage,
    required TResult orElse(),
  }) {
    if (updateAvatarImage != null) {
      return updateAvatarImage(this);
    }
    return orElse();
  }
}

abstract class _RegisterStepsUpdateAvatarImageEvent
    implements RegisterStepsEvent {
  const factory _RegisterStepsUpdateAvatarImageEvent(
          {required AndroidUiSettings androidUiSettings,
          required IOSUiSettings iosUiSettings}) =
      _$_RegisterStepsUpdateAvatarImageEvent;

  AndroidUiSettings get androidUiSettings;
  IOSUiSettings get iosUiSettings;
  @JsonKey(ignore: true)
  _$RegisterStepsUpdateAvatarImageEventCopyWith<
          _RegisterStepsUpdateAvatarImageEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterStepsSaveUsernameEventCopyWith<$Res> {
  factory _$RegisterStepsSaveUsernameEventCopyWith(
          _RegisterStepsSaveUsernameEvent value,
          $Res Function(_RegisterStepsSaveUsernameEvent) then) =
      __$RegisterStepsSaveUsernameEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterStepsSaveUsernameEventCopyWithImpl<$Res>
    extends _$RegisterStepsEventCopyWithImpl<$Res>
    implements _$RegisterStepsSaveUsernameEventCopyWith<$Res> {
  __$RegisterStepsSaveUsernameEventCopyWithImpl(
      _RegisterStepsSaveUsernameEvent _value,
      $Res Function(_RegisterStepsSaveUsernameEvent) _then)
      : super(_value, (v) => _then(v as _RegisterStepsSaveUsernameEvent));

  @override
  _RegisterStepsSaveUsernameEvent get _value =>
      super._value as _RegisterStepsSaveUsernameEvent;
}

/// @nodoc

class _$_RegisterStepsSaveUsernameEvent
    implements _RegisterStepsSaveUsernameEvent {
  const _$_RegisterStepsSaveUsernameEvent();

  @override
  String toString() {
    return 'RegisterStepsEvent.saveUsername()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterStepsSaveUsernameEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) updateUsernameText,
    required TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)
        updateAvatarImage,
    required TResult Function() saveUsername,
    required TResult Function(SynchrowiseUser synchrowiseUser) registerFields,
    required TResult Function() goBack,
    required TResult Function() goNext,
    required TResult Function() removeAvatarImage,
  }) {
    return saveUsername();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)?
        updateAvatarImage,
    TResult Function()? saveUsername,
    TResult Function(SynchrowiseUser synchrowiseUser)? registerFields,
    TResult Function()? goBack,
    TResult Function()? goNext,
    TResult Function()? removeAvatarImage,
  }) {
    return saveUsername?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)?
        updateAvatarImage,
    TResult Function()? saveUsername,
    TResult Function(SynchrowiseUser synchrowiseUser)? registerFields,
    TResult Function()? goBack,
    TResult Function()? goNext,
    TResult Function()? removeAvatarImage,
    required TResult orElse(),
  }) {
    if (saveUsername != null) {
      return saveUsername();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterStepsUpdateUsernameTextEvent value)
        updateUsernameText,
    required TResult Function(_RegisterStepsUpdateAvatarImageEvent value)
        updateAvatarImage,
    required TResult Function(_RegisterStepsSaveUsernameEvent value)
        saveUsername,
    required TResult Function(_RegisterStepsRegisterFieldsEvent value)
        registerFields,
    required TResult Function(_RegisterStepsGoBackEvent value) goBack,
    required TResult Function(_RegisterStepsGoNextEvent value) goNext,
    required TResult Function(_RegisterStepsRemoveAvatarImageEvent value)
        removeAvatarImage,
  }) {
    return saveUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterStepsUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterStepsUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterStepsSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterStepsRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterStepsGoBackEvent value)? goBack,
    TResult Function(_RegisterStepsGoNextEvent value)? goNext,
    TResult Function(_RegisterStepsRemoveAvatarImageEvent value)?
        removeAvatarImage,
  }) {
    return saveUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterStepsUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterStepsUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterStepsSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterStepsRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterStepsGoBackEvent value)? goBack,
    TResult Function(_RegisterStepsGoNextEvent value)? goNext,
    TResult Function(_RegisterStepsRemoveAvatarImageEvent value)?
        removeAvatarImage,
    required TResult orElse(),
  }) {
    if (saveUsername != null) {
      return saveUsername(this);
    }
    return orElse();
  }
}

abstract class _RegisterStepsSaveUsernameEvent implements RegisterStepsEvent {
  const factory _RegisterStepsSaveUsernameEvent() =
      _$_RegisterStepsSaveUsernameEvent;
}

/// @nodoc
abstract class _$RegisterStepsRegisterFieldsEventCopyWith<$Res> {
  factory _$RegisterStepsRegisterFieldsEventCopyWith(
          _RegisterStepsRegisterFieldsEvent value,
          $Res Function(_RegisterStepsRegisterFieldsEvent) then) =
      __$RegisterStepsRegisterFieldsEventCopyWithImpl<$Res>;
  $Res call({SynchrowiseUser synchrowiseUser});
}

/// @nodoc
class __$RegisterStepsRegisterFieldsEventCopyWithImpl<$Res>
    extends _$RegisterStepsEventCopyWithImpl<$Res>
    implements _$RegisterStepsRegisterFieldsEventCopyWith<$Res> {
  __$RegisterStepsRegisterFieldsEventCopyWithImpl(
      _RegisterStepsRegisterFieldsEvent _value,
      $Res Function(_RegisterStepsRegisterFieldsEvent) _then)
      : super(_value, (v) => _then(v as _RegisterStepsRegisterFieldsEvent));

  @override
  _RegisterStepsRegisterFieldsEvent get _value =>
      super._value as _RegisterStepsRegisterFieldsEvent;

  @override
  $Res call({
    Object? synchrowiseUser = freezed,
  }) {
    return _then(_RegisterStepsRegisterFieldsEvent(
      synchrowiseUser: synchrowiseUser == freezed
          ? _value.synchrowiseUser
          : synchrowiseUser // ignore: cast_nullable_to_non_nullable
              as SynchrowiseUser,
    ));
  }
}

/// @nodoc

class _$_RegisterStepsRegisterFieldsEvent
    implements _RegisterStepsRegisterFieldsEvent {
  const _$_RegisterStepsRegisterFieldsEvent({required this.synchrowiseUser});

  @override
  final SynchrowiseUser synchrowiseUser;

  @override
  String toString() {
    return 'RegisterStepsEvent.registerFields(synchrowiseUser: $synchrowiseUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterStepsRegisterFieldsEvent &&
            const DeepCollectionEquality()
                .equals(other.synchrowiseUser, synchrowiseUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(synchrowiseUser));

  @JsonKey(ignore: true)
  @override
  _$RegisterStepsRegisterFieldsEventCopyWith<_RegisterStepsRegisterFieldsEvent>
      get copyWith => __$RegisterStepsRegisterFieldsEventCopyWithImpl<
          _RegisterStepsRegisterFieldsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) updateUsernameText,
    required TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)
        updateAvatarImage,
    required TResult Function() saveUsername,
    required TResult Function(SynchrowiseUser synchrowiseUser) registerFields,
    required TResult Function() goBack,
    required TResult Function() goNext,
    required TResult Function() removeAvatarImage,
  }) {
    return registerFields(synchrowiseUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)?
        updateAvatarImage,
    TResult Function()? saveUsername,
    TResult Function(SynchrowiseUser synchrowiseUser)? registerFields,
    TResult Function()? goBack,
    TResult Function()? goNext,
    TResult Function()? removeAvatarImage,
  }) {
    return registerFields?.call(synchrowiseUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)?
        updateAvatarImage,
    TResult Function()? saveUsername,
    TResult Function(SynchrowiseUser synchrowiseUser)? registerFields,
    TResult Function()? goBack,
    TResult Function()? goNext,
    TResult Function()? removeAvatarImage,
    required TResult orElse(),
  }) {
    if (registerFields != null) {
      return registerFields(synchrowiseUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterStepsUpdateUsernameTextEvent value)
        updateUsernameText,
    required TResult Function(_RegisterStepsUpdateAvatarImageEvent value)
        updateAvatarImage,
    required TResult Function(_RegisterStepsSaveUsernameEvent value)
        saveUsername,
    required TResult Function(_RegisterStepsRegisterFieldsEvent value)
        registerFields,
    required TResult Function(_RegisterStepsGoBackEvent value) goBack,
    required TResult Function(_RegisterStepsGoNextEvent value) goNext,
    required TResult Function(_RegisterStepsRemoveAvatarImageEvent value)
        removeAvatarImage,
  }) {
    return registerFields(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterStepsUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterStepsUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterStepsSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterStepsRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterStepsGoBackEvent value)? goBack,
    TResult Function(_RegisterStepsGoNextEvent value)? goNext,
    TResult Function(_RegisterStepsRemoveAvatarImageEvent value)?
        removeAvatarImage,
  }) {
    return registerFields?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterStepsUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterStepsUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterStepsSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterStepsRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterStepsGoBackEvent value)? goBack,
    TResult Function(_RegisterStepsGoNextEvent value)? goNext,
    TResult Function(_RegisterStepsRemoveAvatarImageEvent value)?
        removeAvatarImage,
    required TResult orElse(),
  }) {
    if (registerFields != null) {
      return registerFields(this);
    }
    return orElse();
  }
}

abstract class _RegisterStepsRegisterFieldsEvent implements RegisterStepsEvent {
  const factory _RegisterStepsRegisterFieldsEvent(
          {required SynchrowiseUser synchrowiseUser}) =
      _$_RegisterStepsRegisterFieldsEvent;

  SynchrowiseUser get synchrowiseUser;
  @JsonKey(ignore: true)
  _$RegisterStepsRegisterFieldsEventCopyWith<_RegisterStepsRegisterFieldsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterStepsGoBackEventCopyWith<$Res> {
  factory _$RegisterStepsGoBackEventCopyWith(_RegisterStepsGoBackEvent value,
          $Res Function(_RegisterStepsGoBackEvent) then) =
      __$RegisterStepsGoBackEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterStepsGoBackEventCopyWithImpl<$Res>
    extends _$RegisterStepsEventCopyWithImpl<$Res>
    implements _$RegisterStepsGoBackEventCopyWith<$Res> {
  __$RegisterStepsGoBackEventCopyWithImpl(_RegisterStepsGoBackEvent _value,
      $Res Function(_RegisterStepsGoBackEvent) _then)
      : super(_value, (v) => _then(v as _RegisterStepsGoBackEvent));

  @override
  _RegisterStepsGoBackEvent get _value =>
      super._value as _RegisterStepsGoBackEvent;
}

/// @nodoc

class _$_RegisterStepsGoBackEvent implements _RegisterStepsGoBackEvent {
  const _$_RegisterStepsGoBackEvent();

  @override
  String toString() {
    return 'RegisterStepsEvent.goBack()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterStepsGoBackEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) updateUsernameText,
    required TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)
        updateAvatarImage,
    required TResult Function() saveUsername,
    required TResult Function(SynchrowiseUser synchrowiseUser) registerFields,
    required TResult Function() goBack,
    required TResult Function() goNext,
    required TResult Function() removeAvatarImage,
  }) {
    return goBack();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)?
        updateAvatarImage,
    TResult Function()? saveUsername,
    TResult Function(SynchrowiseUser synchrowiseUser)? registerFields,
    TResult Function()? goBack,
    TResult Function()? goNext,
    TResult Function()? removeAvatarImage,
  }) {
    return goBack?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)?
        updateAvatarImage,
    TResult Function()? saveUsername,
    TResult Function(SynchrowiseUser synchrowiseUser)? registerFields,
    TResult Function()? goBack,
    TResult Function()? goNext,
    TResult Function()? removeAvatarImage,
    required TResult orElse(),
  }) {
    if (goBack != null) {
      return goBack();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterStepsUpdateUsernameTextEvent value)
        updateUsernameText,
    required TResult Function(_RegisterStepsUpdateAvatarImageEvent value)
        updateAvatarImage,
    required TResult Function(_RegisterStepsSaveUsernameEvent value)
        saveUsername,
    required TResult Function(_RegisterStepsRegisterFieldsEvent value)
        registerFields,
    required TResult Function(_RegisterStepsGoBackEvent value) goBack,
    required TResult Function(_RegisterStepsGoNextEvent value) goNext,
    required TResult Function(_RegisterStepsRemoveAvatarImageEvent value)
        removeAvatarImage,
  }) {
    return goBack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterStepsUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterStepsUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterStepsSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterStepsRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterStepsGoBackEvent value)? goBack,
    TResult Function(_RegisterStepsGoNextEvent value)? goNext,
    TResult Function(_RegisterStepsRemoveAvatarImageEvent value)?
        removeAvatarImage,
  }) {
    return goBack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterStepsUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterStepsUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterStepsSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterStepsRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterStepsGoBackEvent value)? goBack,
    TResult Function(_RegisterStepsGoNextEvent value)? goNext,
    TResult Function(_RegisterStepsRemoveAvatarImageEvent value)?
        removeAvatarImage,
    required TResult orElse(),
  }) {
    if (goBack != null) {
      return goBack(this);
    }
    return orElse();
  }
}

abstract class _RegisterStepsGoBackEvent implements RegisterStepsEvent {
  const factory _RegisterStepsGoBackEvent() = _$_RegisterStepsGoBackEvent;
}

/// @nodoc
abstract class _$RegisterStepsGoNextEventCopyWith<$Res> {
  factory _$RegisterStepsGoNextEventCopyWith(_RegisterStepsGoNextEvent value,
          $Res Function(_RegisterStepsGoNextEvent) then) =
      __$RegisterStepsGoNextEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterStepsGoNextEventCopyWithImpl<$Res>
    extends _$RegisterStepsEventCopyWithImpl<$Res>
    implements _$RegisterStepsGoNextEventCopyWith<$Res> {
  __$RegisterStepsGoNextEventCopyWithImpl(_RegisterStepsGoNextEvent _value,
      $Res Function(_RegisterStepsGoNextEvent) _then)
      : super(_value, (v) => _then(v as _RegisterStepsGoNextEvent));

  @override
  _RegisterStepsGoNextEvent get _value =>
      super._value as _RegisterStepsGoNextEvent;
}

/// @nodoc

class _$_RegisterStepsGoNextEvent implements _RegisterStepsGoNextEvent {
  const _$_RegisterStepsGoNextEvent();

  @override
  String toString() {
    return 'RegisterStepsEvent.goNext()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterStepsGoNextEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) updateUsernameText,
    required TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)
        updateAvatarImage,
    required TResult Function() saveUsername,
    required TResult Function(SynchrowiseUser synchrowiseUser) registerFields,
    required TResult Function() goBack,
    required TResult Function() goNext,
    required TResult Function() removeAvatarImage,
  }) {
    return goNext();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)?
        updateAvatarImage,
    TResult Function()? saveUsername,
    TResult Function(SynchrowiseUser synchrowiseUser)? registerFields,
    TResult Function()? goBack,
    TResult Function()? goNext,
    TResult Function()? removeAvatarImage,
  }) {
    return goNext?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)?
        updateAvatarImage,
    TResult Function()? saveUsername,
    TResult Function(SynchrowiseUser synchrowiseUser)? registerFields,
    TResult Function()? goBack,
    TResult Function()? goNext,
    TResult Function()? removeAvatarImage,
    required TResult orElse(),
  }) {
    if (goNext != null) {
      return goNext();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterStepsUpdateUsernameTextEvent value)
        updateUsernameText,
    required TResult Function(_RegisterStepsUpdateAvatarImageEvent value)
        updateAvatarImage,
    required TResult Function(_RegisterStepsSaveUsernameEvent value)
        saveUsername,
    required TResult Function(_RegisterStepsRegisterFieldsEvent value)
        registerFields,
    required TResult Function(_RegisterStepsGoBackEvent value) goBack,
    required TResult Function(_RegisterStepsGoNextEvent value) goNext,
    required TResult Function(_RegisterStepsRemoveAvatarImageEvent value)
        removeAvatarImage,
  }) {
    return goNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterStepsUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterStepsUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterStepsSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterStepsRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterStepsGoBackEvent value)? goBack,
    TResult Function(_RegisterStepsGoNextEvent value)? goNext,
    TResult Function(_RegisterStepsRemoveAvatarImageEvent value)?
        removeAvatarImage,
  }) {
    return goNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterStepsUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterStepsUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterStepsSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterStepsRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterStepsGoBackEvent value)? goBack,
    TResult Function(_RegisterStepsGoNextEvent value)? goNext,
    TResult Function(_RegisterStepsRemoveAvatarImageEvent value)?
        removeAvatarImage,
    required TResult orElse(),
  }) {
    if (goNext != null) {
      return goNext(this);
    }
    return orElse();
  }
}

abstract class _RegisterStepsGoNextEvent implements RegisterStepsEvent {
  const factory _RegisterStepsGoNextEvent() = _$_RegisterStepsGoNextEvent;
}

/// @nodoc
abstract class _$RegisterStepsRemoveAvatarImageEventCopyWith<$Res> {
  factory _$RegisterStepsRemoveAvatarImageEventCopyWith(
          _RegisterStepsRemoveAvatarImageEvent value,
          $Res Function(_RegisterStepsRemoveAvatarImageEvent) then) =
      __$RegisterStepsRemoveAvatarImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterStepsRemoveAvatarImageEventCopyWithImpl<$Res>
    extends _$RegisterStepsEventCopyWithImpl<$Res>
    implements _$RegisterStepsRemoveAvatarImageEventCopyWith<$Res> {
  __$RegisterStepsRemoveAvatarImageEventCopyWithImpl(
      _RegisterStepsRemoveAvatarImageEvent _value,
      $Res Function(_RegisterStepsRemoveAvatarImageEvent) _then)
      : super(_value, (v) => _then(v as _RegisterStepsRemoveAvatarImageEvent));

  @override
  _RegisterStepsRemoveAvatarImageEvent get _value =>
      super._value as _RegisterStepsRemoveAvatarImageEvent;
}

/// @nodoc

class _$_RegisterStepsRemoveAvatarImageEvent
    implements _RegisterStepsRemoveAvatarImageEvent {
  const _$_RegisterStepsRemoveAvatarImageEvent();

  @override
  String toString() {
    return 'RegisterStepsEvent.removeAvatarImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterStepsRemoveAvatarImageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) updateUsernameText,
    required TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)
        updateAvatarImage,
    required TResult Function() saveUsername,
    required TResult Function(SynchrowiseUser synchrowiseUser) registerFields,
    required TResult Function() goBack,
    required TResult Function() goNext,
    required TResult Function() removeAvatarImage,
  }) {
    return removeAvatarImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)?
        updateAvatarImage,
    TResult Function()? saveUsername,
    TResult Function(SynchrowiseUser synchrowiseUser)? registerFields,
    TResult Function()? goBack,
    TResult Function()? goNext,
    TResult Function()? removeAvatarImage,
  }) {
    return removeAvatarImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)?
        updateAvatarImage,
    TResult Function()? saveUsername,
    TResult Function(SynchrowiseUser synchrowiseUser)? registerFields,
    TResult Function()? goBack,
    TResult Function()? goNext,
    TResult Function()? removeAvatarImage,
    required TResult orElse(),
  }) {
    if (removeAvatarImage != null) {
      return removeAvatarImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterStepsUpdateUsernameTextEvent value)
        updateUsernameText,
    required TResult Function(_RegisterStepsUpdateAvatarImageEvent value)
        updateAvatarImage,
    required TResult Function(_RegisterStepsSaveUsernameEvent value)
        saveUsername,
    required TResult Function(_RegisterStepsRegisterFieldsEvent value)
        registerFields,
    required TResult Function(_RegisterStepsGoBackEvent value) goBack,
    required TResult Function(_RegisterStepsGoNextEvent value) goNext,
    required TResult Function(_RegisterStepsRemoveAvatarImageEvent value)
        removeAvatarImage,
  }) {
    return removeAvatarImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterStepsUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterStepsUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterStepsSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterStepsRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterStepsGoBackEvent value)? goBack,
    TResult Function(_RegisterStepsGoNextEvent value)? goNext,
    TResult Function(_RegisterStepsRemoveAvatarImageEvent value)?
        removeAvatarImage,
  }) {
    return removeAvatarImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterStepsUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterStepsUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterStepsSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterStepsRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterStepsGoBackEvent value)? goBack,
    TResult Function(_RegisterStepsGoNextEvent value)? goNext,
    TResult Function(_RegisterStepsRemoveAvatarImageEvent value)?
        removeAvatarImage,
    required TResult orElse(),
  }) {
    if (removeAvatarImage != null) {
      return removeAvatarImage(this);
    }
    return orElse();
  }
}

abstract class _RegisterStepsRemoveAvatarImageEvent
    implements RegisterStepsEvent {
  const factory _RegisterStepsRemoveAvatarImageEvent() =
      _$_RegisterStepsRemoveAvatarImageEvent;
}

/// @nodoc
class _$RegisterStepsStateTearOff {
  const _$RegisterStepsStateTearOff();

  _RegisterStepsState call(
      {required Option<Either<ValueFailure, String>> failureOrUsernameOption,
      required Option<Either<ImageFailure, File>> failureOrImageOption,
      required Option<Either<SynchrowiseUserRepositoryFailure, Unit>>
          registerFailureOrUnitOption,
      required bool uploadingImage,
      required bool showErrors,
      required int step}) {
    return _RegisterStepsState(
      failureOrUsernameOption: failureOrUsernameOption,
      failureOrImageOption: failureOrImageOption,
      registerFailureOrUnitOption: registerFailureOrUnitOption,
      uploadingImage: uploadingImage,
      showErrors: showErrors,
      step: step,
    );
  }
}

/// @nodoc
const $RegisterStepsState = _$RegisterStepsStateTearOff();

/// @nodoc
mixin _$RegisterStepsState {
  Option<Either<ValueFailure, String>> get failureOrUsernameOption =>
      throw _privateConstructorUsedError;
  Option<Either<ImageFailure, File>> get failureOrImageOption =>
      throw _privateConstructorUsedError;
  Option<Either<SynchrowiseUserRepositoryFailure, Unit>>
      get registerFailureOrUnitOption => throw _privateConstructorUsedError;
  bool get uploadingImage => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  int get step => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStepsStateCopyWith<RegisterStepsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStepsStateCopyWith<$Res> {
  factory $RegisterStepsStateCopyWith(
          RegisterStepsState value, $Res Function(RegisterStepsState) then) =
      _$RegisterStepsStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<ValueFailure, String>> failureOrUsernameOption,
      Option<Either<ImageFailure, File>> failureOrImageOption,
      Option<Either<SynchrowiseUserRepositoryFailure, Unit>>
          registerFailureOrUnitOption,
      bool uploadingImage,
      bool showErrors,
      int step});
}

/// @nodoc
class _$RegisterStepsStateCopyWithImpl<$Res>
    implements $RegisterStepsStateCopyWith<$Res> {
  _$RegisterStepsStateCopyWithImpl(this._value, this._then);

  final RegisterStepsState _value;
  // ignore: unused_field
  final $Res Function(RegisterStepsState) _then;

  @override
  $Res call({
    Object? failureOrUsernameOption = freezed,
    Object? failureOrImageOption = freezed,
    Object? registerFailureOrUnitOption = freezed,
    Object? uploadingImage = freezed,
    Object? showErrors = freezed,
    Object? step = freezed,
  }) {
    return _then(_value.copyWith(
      failureOrUsernameOption: failureOrUsernameOption == freezed
          ? _value.failureOrUsernameOption
          : failureOrUsernameOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, String>>,
      failureOrImageOption: failureOrImageOption == freezed
          ? _value.failureOrImageOption
          : failureOrImageOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ImageFailure, File>>,
      registerFailureOrUnitOption: registerFailureOrUnitOption == freezed
          ? _value.registerFailureOrUnitOption
          : registerFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SynchrowiseUserRepositoryFailure, Unit>>,
      uploadingImage: uploadingImage == freezed
          ? _value.uploadingImage
          : uploadingImage // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      step: step == freezed
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RegisterStepsStateCopyWith<$Res>
    implements $RegisterStepsStateCopyWith<$Res> {
  factory _$RegisterStepsStateCopyWith(
          _RegisterStepsState value, $Res Function(_RegisterStepsState) then) =
      __$RegisterStepsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<ValueFailure, String>> failureOrUsernameOption,
      Option<Either<ImageFailure, File>> failureOrImageOption,
      Option<Either<SynchrowiseUserRepositoryFailure, Unit>>
          registerFailureOrUnitOption,
      bool uploadingImage,
      bool showErrors,
      int step});
}

/// @nodoc
class __$RegisterStepsStateCopyWithImpl<$Res>
    extends _$RegisterStepsStateCopyWithImpl<$Res>
    implements _$RegisterStepsStateCopyWith<$Res> {
  __$RegisterStepsStateCopyWithImpl(
      _RegisterStepsState _value, $Res Function(_RegisterStepsState) _then)
      : super(_value, (v) => _then(v as _RegisterStepsState));

  @override
  _RegisterStepsState get _value => super._value as _RegisterStepsState;

  @override
  $Res call({
    Object? failureOrUsernameOption = freezed,
    Object? failureOrImageOption = freezed,
    Object? registerFailureOrUnitOption = freezed,
    Object? uploadingImage = freezed,
    Object? showErrors = freezed,
    Object? step = freezed,
  }) {
    return _then(_RegisterStepsState(
      failureOrUsernameOption: failureOrUsernameOption == freezed
          ? _value.failureOrUsernameOption
          : failureOrUsernameOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, String>>,
      failureOrImageOption: failureOrImageOption == freezed
          ? _value.failureOrImageOption
          : failureOrImageOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ImageFailure, File>>,
      registerFailureOrUnitOption: registerFailureOrUnitOption == freezed
          ? _value.registerFailureOrUnitOption
          : registerFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SynchrowiseUserRepositoryFailure, Unit>>,
      uploadingImage: uploadingImage == freezed
          ? _value.uploadingImage
          : uploadingImage // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      step: step == freezed
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RegisterStepsState implements _RegisterStepsState {
  const _$_RegisterStepsState(
      {required this.failureOrUsernameOption,
      required this.failureOrImageOption,
      required this.registerFailureOrUnitOption,
      required this.uploadingImage,
      required this.showErrors,
      required this.step});

  @override
  final Option<Either<ValueFailure, String>> failureOrUsernameOption;
  @override
  final Option<Either<ImageFailure, File>> failureOrImageOption;
  @override
  final Option<Either<SynchrowiseUserRepositoryFailure, Unit>>
      registerFailureOrUnitOption;
  @override
  final bool uploadingImage;
  @override
  final bool showErrors;
  @override
  final int step;

  @override
  String toString() {
    return 'RegisterStepsState(failureOrUsernameOption: $failureOrUsernameOption, failureOrImageOption: $failureOrImageOption, registerFailureOrUnitOption: $registerFailureOrUnitOption, uploadingImage: $uploadingImage, showErrors: $showErrors, step: $step)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterStepsState &&
            const DeepCollectionEquality().equals(
                other.failureOrUsernameOption, failureOrUsernameOption) &&
            const DeepCollectionEquality()
                .equals(other.failureOrImageOption, failureOrImageOption) &&
            const DeepCollectionEquality().equals(
                other.registerFailureOrUnitOption,
                registerFailureOrUnitOption) &&
            const DeepCollectionEquality()
                .equals(other.uploadingImage, uploadingImage) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality().equals(other.step, step));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failureOrUsernameOption),
      const DeepCollectionEquality().hash(failureOrImageOption),
      const DeepCollectionEquality().hash(registerFailureOrUnitOption),
      const DeepCollectionEquality().hash(uploadingImage),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(step));

  @JsonKey(ignore: true)
  @override
  _$RegisterStepsStateCopyWith<_RegisterStepsState> get copyWith =>
      __$RegisterStepsStateCopyWithImpl<_RegisterStepsState>(this, _$identity);
}

abstract class _RegisterStepsState implements RegisterStepsState {
  const factory _RegisterStepsState(
      {required Option<Either<ValueFailure, String>> failureOrUsernameOption,
      required Option<Either<ImageFailure, File>> failureOrImageOption,
      required Option<Either<SynchrowiseUserRepositoryFailure, Unit>>
          registerFailureOrUnitOption,
      required bool uploadingImage,
      required bool showErrors,
      required int step}) = _$_RegisterStepsState;

  @override
  Option<Either<ValueFailure, String>> get failureOrUsernameOption;
  @override
  Option<Either<ImageFailure, File>> get failureOrImageOption;
  @override
  Option<Either<SynchrowiseUserRepositoryFailure, Unit>>
      get registerFailureOrUnitOption;
  @override
  bool get uploadingImage;
  @override
  bool get showErrors;
  @override
  int get step;
  @override
  @JsonKey(ignore: true)
  _$RegisterStepsStateCopyWith<_RegisterStepsState> get copyWith =>
      throw _privateConstructorUsedError;
}
