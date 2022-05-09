// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'registeration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterationEventTearOff {
  const _$RegisterationEventTearOff();

  _RegisterationUpdateUsernameTextEvent updateUsernameText(
      {required String username}) {
    return _RegisterationUpdateUsernameTextEvent(
      username: username,
    );
  }

  _RegisterationUpdateAvatarImageEvent updateAvatarImage(
      {required AndroidUiSettings androidUiSettings,
      required IOSUiSettings iosUiSettings}) {
    return _RegisterationUpdateAvatarImageEvent(
      androidUiSettings: androidUiSettings,
      iosUiSettings: iosUiSettings,
    );
  }

  _RegisterationSaveUsernameEvent saveUsername() {
    return const _RegisterationSaveUsernameEvent();
  }

  _RegisterationRegisterFieldsEvent registerFields() {
    return const _RegisterationRegisterFieldsEvent();
  }

  _RegisterationGoBackEvent goBack() {
    return const _RegisterationGoBackEvent();
  }

  _RegisterationGoNextEvent goNext() {
    return const _RegisterationGoNextEvent();
  }

  _RegisterationRemoveAvatarImageEvent removeAvatarImage() {
    return const _RegisterationRemoveAvatarImageEvent();
  }
}

/// @nodoc
const $RegisterationEvent = _$RegisterationEventTearOff();

/// @nodoc
mixin _$RegisterationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) updateUsernameText,
    required TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)
        updateAvatarImage,
    required TResult Function() saveUsername,
    required TResult Function() registerFields,
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
    TResult Function()? registerFields,
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
    TResult Function()? registerFields,
    TResult Function()? goBack,
    TResult Function()? goNext,
    TResult Function()? removeAvatarImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterationUpdateUsernameTextEvent value)
        updateUsernameText,
    required TResult Function(_RegisterationUpdateAvatarImageEvent value)
        updateAvatarImage,
    required TResult Function(_RegisterationSaveUsernameEvent value)
        saveUsername,
    required TResult Function(_RegisterationRegisterFieldsEvent value)
        registerFields,
    required TResult Function(_RegisterationGoBackEvent value) goBack,
    required TResult Function(_RegisterationGoNextEvent value) goNext,
    required TResult Function(_RegisterationRemoveAvatarImageEvent value)
        removeAvatarImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterationUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterationUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterationSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterationRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterationGoBackEvent value)? goBack,
    TResult Function(_RegisterationGoNextEvent value)? goNext,
    TResult Function(_RegisterationRemoveAvatarImageEvent value)?
        removeAvatarImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterationUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterationUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterationSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterationRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterationGoBackEvent value)? goBack,
    TResult Function(_RegisterationGoNextEvent value)? goNext,
    TResult Function(_RegisterationRemoveAvatarImageEvent value)?
        removeAvatarImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterationEventCopyWith<$Res> {
  factory $RegisterationEventCopyWith(
          RegisterationEvent value, $Res Function(RegisterationEvent) then) =
      _$RegisterationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterationEventCopyWithImpl<$Res>
    implements $RegisterationEventCopyWith<$Res> {
  _$RegisterationEventCopyWithImpl(this._value, this._then);

  final RegisterationEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterationEvent) _then;
}

/// @nodoc
abstract class _$RegisterationUpdateUsernameTextEventCopyWith<$Res> {
  factory _$RegisterationUpdateUsernameTextEventCopyWith(
          _RegisterationUpdateUsernameTextEvent value,
          $Res Function(_RegisterationUpdateUsernameTextEvent) then) =
      __$RegisterationUpdateUsernameTextEventCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$RegisterationUpdateUsernameTextEventCopyWithImpl<$Res>
    extends _$RegisterationEventCopyWithImpl<$Res>
    implements _$RegisterationUpdateUsernameTextEventCopyWith<$Res> {
  __$RegisterationUpdateUsernameTextEventCopyWithImpl(
      _RegisterationUpdateUsernameTextEvent _value,
      $Res Function(_RegisterationUpdateUsernameTextEvent) _then)
      : super(_value, (v) => _then(v as _RegisterationUpdateUsernameTextEvent));

  @override
  _RegisterationUpdateUsernameTextEvent get _value =>
      super._value as _RegisterationUpdateUsernameTextEvent;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_RegisterationUpdateUsernameTextEvent(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterationUpdateUsernameTextEvent
    implements _RegisterationUpdateUsernameTextEvent {
  const _$_RegisterationUpdateUsernameTextEvent({required this.username});

  @override
  final String username;

  @override
  String toString() {
    return 'RegisterationEvent.updateUsernameText(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterationUpdateUsernameTextEvent &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$RegisterationUpdateUsernameTextEventCopyWith<
          _RegisterationUpdateUsernameTextEvent>
      get copyWith => __$RegisterationUpdateUsernameTextEventCopyWithImpl<
          _RegisterationUpdateUsernameTextEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) updateUsernameText,
    required TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)
        updateAvatarImage,
    required TResult Function() saveUsername,
    required TResult Function() registerFields,
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
    TResult Function()? registerFields,
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
    TResult Function()? registerFields,
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
    required TResult Function(_RegisterationUpdateUsernameTextEvent value)
        updateUsernameText,
    required TResult Function(_RegisterationUpdateAvatarImageEvent value)
        updateAvatarImage,
    required TResult Function(_RegisterationSaveUsernameEvent value)
        saveUsername,
    required TResult Function(_RegisterationRegisterFieldsEvent value)
        registerFields,
    required TResult Function(_RegisterationGoBackEvent value) goBack,
    required TResult Function(_RegisterationGoNextEvent value) goNext,
    required TResult Function(_RegisterationRemoveAvatarImageEvent value)
        removeAvatarImage,
  }) {
    return updateUsernameText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterationUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterationUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterationSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterationRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterationGoBackEvent value)? goBack,
    TResult Function(_RegisterationGoNextEvent value)? goNext,
    TResult Function(_RegisterationRemoveAvatarImageEvent value)?
        removeAvatarImage,
  }) {
    return updateUsernameText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterationUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterationUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterationSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterationRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterationGoBackEvent value)? goBack,
    TResult Function(_RegisterationGoNextEvent value)? goNext,
    TResult Function(_RegisterationRemoveAvatarImageEvent value)?
        removeAvatarImage,
    required TResult orElse(),
  }) {
    if (updateUsernameText != null) {
      return updateUsernameText(this);
    }
    return orElse();
  }
}

abstract class _RegisterationUpdateUsernameTextEvent
    implements RegisterationEvent {
  const factory _RegisterationUpdateUsernameTextEvent(
      {required String username}) = _$_RegisterationUpdateUsernameTextEvent;

  String get username;
  @JsonKey(ignore: true)
  _$RegisterationUpdateUsernameTextEventCopyWith<
          _RegisterationUpdateUsernameTextEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterationUpdateAvatarImageEventCopyWith<$Res> {
  factory _$RegisterationUpdateAvatarImageEventCopyWith(
          _RegisterationUpdateAvatarImageEvent value,
          $Res Function(_RegisterationUpdateAvatarImageEvent) then) =
      __$RegisterationUpdateAvatarImageEventCopyWithImpl<$Res>;
  $Res call({AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings});
}

/// @nodoc
class __$RegisterationUpdateAvatarImageEventCopyWithImpl<$Res>
    extends _$RegisterationEventCopyWithImpl<$Res>
    implements _$RegisterationUpdateAvatarImageEventCopyWith<$Res> {
  __$RegisterationUpdateAvatarImageEventCopyWithImpl(
      _RegisterationUpdateAvatarImageEvent _value,
      $Res Function(_RegisterationUpdateAvatarImageEvent) _then)
      : super(_value, (v) => _then(v as _RegisterationUpdateAvatarImageEvent));

  @override
  _RegisterationUpdateAvatarImageEvent get _value =>
      super._value as _RegisterationUpdateAvatarImageEvent;

  @override
  $Res call({
    Object? androidUiSettings = freezed,
    Object? iosUiSettings = freezed,
  }) {
    return _then(_RegisterationUpdateAvatarImageEvent(
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

class _$_RegisterationUpdateAvatarImageEvent
    implements _RegisterationUpdateAvatarImageEvent {
  const _$_RegisterationUpdateAvatarImageEvent(
      {required this.androidUiSettings, required this.iosUiSettings});

  @override
  final AndroidUiSettings androidUiSettings;
  @override
  final IOSUiSettings iosUiSettings;

  @override
  String toString() {
    return 'RegisterationEvent.updateAvatarImage(androidUiSettings: $androidUiSettings, iosUiSettings: $iosUiSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterationUpdateAvatarImageEvent &&
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
  _$RegisterationUpdateAvatarImageEventCopyWith<
          _RegisterationUpdateAvatarImageEvent>
      get copyWith => __$RegisterationUpdateAvatarImageEventCopyWithImpl<
          _RegisterationUpdateAvatarImageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) updateUsernameText,
    required TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)
        updateAvatarImage,
    required TResult Function() saveUsername,
    required TResult Function() registerFields,
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
    TResult Function()? registerFields,
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
    TResult Function()? registerFields,
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
    required TResult Function(_RegisterationUpdateUsernameTextEvent value)
        updateUsernameText,
    required TResult Function(_RegisterationUpdateAvatarImageEvent value)
        updateAvatarImage,
    required TResult Function(_RegisterationSaveUsernameEvent value)
        saveUsername,
    required TResult Function(_RegisterationRegisterFieldsEvent value)
        registerFields,
    required TResult Function(_RegisterationGoBackEvent value) goBack,
    required TResult Function(_RegisterationGoNextEvent value) goNext,
    required TResult Function(_RegisterationRemoveAvatarImageEvent value)
        removeAvatarImage,
  }) {
    return updateAvatarImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterationUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterationUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterationSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterationRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterationGoBackEvent value)? goBack,
    TResult Function(_RegisterationGoNextEvent value)? goNext,
    TResult Function(_RegisterationRemoveAvatarImageEvent value)?
        removeAvatarImage,
  }) {
    return updateAvatarImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterationUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterationUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterationSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterationRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterationGoBackEvent value)? goBack,
    TResult Function(_RegisterationGoNextEvent value)? goNext,
    TResult Function(_RegisterationRemoveAvatarImageEvent value)?
        removeAvatarImage,
    required TResult orElse(),
  }) {
    if (updateAvatarImage != null) {
      return updateAvatarImage(this);
    }
    return orElse();
  }
}

abstract class _RegisterationUpdateAvatarImageEvent
    implements RegisterationEvent {
  const factory _RegisterationUpdateAvatarImageEvent(
          {required AndroidUiSettings androidUiSettings,
          required IOSUiSettings iosUiSettings}) =
      _$_RegisterationUpdateAvatarImageEvent;

  AndroidUiSettings get androidUiSettings;
  IOSUiSettings get iosUiSettings;
  @JsonKey(ignore: true)
  _$RegisterationUpdateAvatarImageEventCopyWith<
          _RegisterationUpdateAvatarImageEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterationSaveUsernameEventCopyWith<$Res> {
  factory _$RegisterationSaveUsernameEventCopyWith(
          _RegisterationSaveUsernameEvent value,
          $Res Function(_RegisterationSaveUsernameEvent) then) =
      __$RegisterationSaveUsernameEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterationSaveUsernameEventCopyWithImpl<$Res>
    extends _$RegisterationEventCopyWithImpl<$Res>
    implements _$RegisterationSaveUsernameEventCopyWith<$Res> {
  __$RegisterationSaveUsernameEventCopyWithImpl(
      _RegisterationSaveUsernameEvent _value,
      $Res Function(_RegisterationSaveUsernameEvent) _then)
      : super(_value, (v) => _then(v as _RegisterationSaveUsernameEvent));

  @override
  _RegisterationSaveUsernameEvent get _value =>
      super._value as _RegisterationSaveUsernameEvent;
}

/// @nodoc

class _$_RegisterationSaveUsernameEvent
    implements _RegisterationSaveUsernameEvent {
  const _$_RegisterationSaveUsernameEvent();

  @override
  String toString() {
    return 'RegisterationEvent.saveUsername()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterationSaveUsernameEvent);
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
    required TResult Function() registerFields,
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
    TResult Function()? registerFields,
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
    TResult Function()? registerFields,
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
    required TResult Function(_RegisterationUpdateUsernameTextEvent value)
        updateUsernameText,
    required TResult Function(_RegisterationUpdateAvatarImageEvent value)
        updateAvatarImage,
    required TResult Function(_RegisterationSaveUsernameEvent value)
        saveUsername,
    required TResult Function(_RegisterationRegisterFieldsEvent value)
        registerFields,
    required TResult Function(_RegisterationGoBackEvent value) goBack,
    required TResult Function(_RegisterationGoNextEvent value) goNext,
    required TResult Function(_RegisterationRemoveAvatarImageEvent value)
        removeAvatarImage,
  }) {
    return saveUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterationUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterationUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterationSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterationRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterationGoBackEvent value)? goBack,
    TResult Function(_RegisterationGoNextEvent value)? goNext,
    TResult Function(_RegisterationRemoveAvatarImageEvent value)?
        removeAvatarImage,
  }) {
    return saveUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterationUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterationUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterationSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterationRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterationGoBackEvent value)? goBack,
    TResult Function(_RegisterationGoNextEvent value)? goNext,
    TResult Function(_RegisterationRemoveAvatarImageEvent value)?
        removeAvatarImage,
    required TResult orElse(),
  }) {
    if (saveUsername != null) {
      return saveUsername(this);
    }
    return orElse();
  }
}

abstract class _RegisterationSaveUsernameEvent implements RegisterationEvent {
  const factory _RegisterationSaveUsernameEvent() =
      _$_RegisterationSaveUsernameEvent;
}

/// @nodoc
abstract class _$RegisterationRegisterFieldsEventCopyWith<$Res> {
  factory _$RegisterationRegisterFieldsEventCopyWith(
          _RegisterationRegisterFieldsEvent value,
          $Res Function(_RegisterationRegisterFieldsEvent) then) =
      __$RegisterationRegisterFieldsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterationRegisterFieldsEventCopyWithImpl<$Res>
    extends _$RegisterationEventCopyWithImpl<$Res>
    implements _$RegisterationRegisterFieldsEventCopyWith<$Res> {
  __$RegisterationRegisterFieldsEventCopyWithImpl(
      _RegisterationRegisterFieldsEvent _value,
      $Res Function(_RegisterationRegisterFieldsEvent) _then)
      : super(_value, (v) => _then(v as _RegisterationRegisterFieldsEvent));

  @override
  _RegisterationRegisterFieldsEvent get _value =>
      super._value as _RegisterationRegisterFieldsEvent;
}

/// @nodoc

class _$_RegisterationRegisterFieldsEvent
    implements _RegisterationRegisterFieldsEvent {
  const _$_RegisterationRegisterFieldsEvent();

  @override
  String toString() {
    return 'RegisterationEvent.registerFields()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterationRegisterFieldsEvent);
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
    required TResult Function() registerFields,
    required TResult Function() goBack,
    required TResult Function() goNext,
    required TResult Function() removeAvatarImage,
  }) {
    return registerFields();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)?
        updateAvatarImage,
    TResult Function()? saveUsername,
    TResult Function()? registerFields,
    TResult Function()? goBack,
    TResult Function()? goNext,
    TResult Function()? removeAvatarImage,
  }) {
    return registerFields?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function(
            AndroidUiSettings androidUiSettings, IOSUiSettings iosUiSettings)?
        updateAvatarImage,
    TResult Function()? saveUsername,
    TResult Function()? registerFields,
    TResult Function()? goBack,
    TResult Function()? goNext,
    TResult Function()? removeAvatarImage,
    required TResult orElse(),
  }) {
    if (registerFields != null) {
      return registerFields();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterationUpdateUsernameTextEvent value)
        updateUsernameText,
    required TResult Function(_RegisterationUpdateAvatarImageEvent value)
        updateAvatarImage,
    required TResult Function(_RegisterationSaveUsernameEvent value)
        saveUsername,
    required TResult Function(_RegisterationRegisterFieldsEvent value)
        registerFields,
    required TResult Function(_RegisterationGoBackEvent value) goBack,
    required TResult Function(_RegisterationGoNextEvent value) goNext,
    required TResult Function(_RegisterationRemoveAvatarImageEvent value)
        removeAvatarImage,
  }) {
    return registerFields(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterationUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterationUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterationSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterationRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterationGoBackEvent value)? goBack,
    TResult Function(_RegisterationGoNextEvent value)? goNext,
    TResult Function(_RegisterationRemoveAvatarImageEvent value)?
        removeAvatarImage,
  }) {
    return registerFields?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterationUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterationUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterationSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterationRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterationGoBackEvent value)? goBack,
    TResult Function(_RegisterationGoNextEvent value)? goNext,
    TResult Function(_RegisterationRemoveAvatarImageEvent value)?
        removeAvatarImage,
    required TResult orElse(),
  }) {
    if (registerFields != null) {
      return registerFields(this);
    }
    return orElse();
  }
}

abstract class _RegisterationRegisterFieldsEvent implements RegisterationEvent {
  const factory _RegisterationRegisterFieldsEvent() =
      _$_RegisterationRegisterFieldsEvent;
}

/// @nodoc
abstract class _$RegisterationGoBackEventCopyWith<$Res> {
  factory _$RegisterationGoBackEventCopyWith(_RegisterationGoBackEvent value,
          $Res Function(_RegisterationGoBackEvent) then) =
      __$RegisterationGoBackEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterationGoBackEventCopyWithImpl<$Res>
    extends _$RegisterationEventCopyWithImpl<$Res>
    implements _$RegisterationGoBackEventCopyWith<$Res> {
  __$RegisterationGoBackEventCopyWithImpl(_RegisterationGoBackEvent _value,
      $Res Function(_RegisterationGoBackEvent) _then)
      : super(_value, (v) => _then(v as _RegisterationGoBackEvent));

  @override
  _RegisterationGoBackEvent get _value =>
      super._value as _RegisterationGoBackEvent;
}

/// @nodoc

class _$_RegisterationGoBackEvent implements _RegisterationGoBackEvent {
  const _$_RegisterationGoBackEvent();

  @override
  String toString() {
    return 'RegisterationEvent.goBack()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterationGoBackEvent);
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
    required TResult Function() registerFields,
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
    TResult Function()? registerFields,
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
    TResult Function()? registerFields,
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
    required TResult Function(_RegisterationUpdateUsernameTextEvent value)
        updateUsernameText,
    required TResult Function(_RegisterationUpdateAvatarImageEvent value)
        updateAvatarImage,
    required TResult Function(_RegisterationSaveUsernameEvent value)
        saveUsername,
    required TResult Function(_RegisterationRegisterFieldsEvent value)
        registerFields,
    required TResult Function(_RegisterationGoBackEvent value) goBack,
    required TResult Function(_RegisterationGoNextEvent value) goNext,
    required TResult Function(_RegisterationRemoveAvatarImageEvent value)
        removeAvatarImage,
  }) {
    return goBack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterationUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterationUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterationSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterationRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterationGoBackEvent value)? goBack,
    TResult Function(_RegisterationGoNextEvent value)? goNext,
    TResult Function(_RegisterationRemoveAvatarImageEvent value)?
        removeAvatarImage,
  }) {
    return goBack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterationUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterationUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterationSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterationRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterationGoBackEvent value)? goBack,
    TResult Function(_RegisterationGoNextEvent value)? goNext,
    TResult Function(_RegisterationRemoveAvatarImageEvent value)?
        removeAvatarImage,
    required TResult orElse(),
  }) {
    if (goBack != null) {
      return goBack(this);
    }
    return orElse();
  }
}

abstract class _RegisterationGoBackEvent implements RegisterationEvent {
  const factory _RegisterationGoBackEvent() = _$_RegisterationGoBackEvent;
}

/// @nodoc
abstract class _$RegisterationGoNextEventCopyWith<$Res> {
  factory _$RegisterationGoNextEventCopyWith(_RegisterationGoNextEvent value,
          $Res Function(_RegisterationGoNextEvent) then) =
      __$RegisterationGoNextEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterationGoNextEventCopyWithImpl<$Res>
    extends _$RegisterationEventCopyWithImpl<$Res>
    implements _$RegisterationGoNextEventCopyWith<$Res> {
  __$RegisterationGoNextEventCopyWithImpl(_RegisterationGoNextEvent _value,
      $Res Function(_RegisterationGoNextEvent) _then)
      : super(_value, (v) => _then(v as _RegisterationGoNextEvent));

  @override
  _RegisterationGoNextEvent get _value =>
      super._value as _RegisterationGoNextEvent;
}

/// @nodoc

class _$_RegisterationGoNextEvent implements _RegisterationGoNextEvent {
  const _$_RegisterationGoNextEvent();

  @override
  String toString() {
    return 'RegisterationEvent.goNext()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterationGoNextEvent);
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
    required TResult Function() registerFields,
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
    TResult Function()? registerFields,
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
    TResult Function()? registerFields,
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
    required TResult Function(_RegisterationUpdateUsernameTextEvent value)
        updateUsernameText,
    required TResult Function(_RegisterationUpdateAvatarImageEvent value)
        updateAvatarImage,
    required TResult Function(_RegisterationSaveUsernameEvent value)
        saveUsername,
    required TResult Function(_RegisterationRegisterFieldsEvent value)
        registerFields,
    required TResult Function(_RegisterationGoBackEvent value) goBack,
    required TResult Function(_RegisterationGoNextEvent value) goNext,
    required TResult Function(_RegisterationRemoveAvatarImageEvent value)
        removeAvatarImage,
  }) {
    return goNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterationUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterationUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterationSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterationRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterationGoBackEvent value)? goBack,
    TResult Function(_RegisterationGoNextEvent value)? goNext,
    TResult Function(_RegisterationRemoveAvatarImageEvent value)?
        removeAvatarImage,
  }) {
    return goNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterationUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterationUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterationSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterationRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterationGoBackEvent value)? goBack,
    TResult Function(_RegisterationGoNextEvent value)? goNext,
    TResult Function(_RegisterationRemoveAvatarImageEvent value)?
        removeAvatarImage,
    required TResult orElse(),
  }) {
    if (goNext != null) {
      return goNext(this);
    }
    return orElse();
  }
}

abstract class _RegisterationGoNextEvent implements RegisterationEvent {
  const factory _RegisterationGoNextEvent() = _$_RegisterationGoNextEvent;
}

/// @nodoc
abstract class _$RegisterationRemoveAvatarImageEventCopyWith<$Res> {
  factory _$RegisterationRemoveAvatarImageEventCopyWith(
          _RegisterationRemoveAvatarImageEvent value,
          $Res Function(_RegisterationRemoveAvatarImageEvent) then) =
      __$RegisterationRemoveAvatarImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterationRemoveAvatarImageEventCopyWithImpl<$Res>
    extends _$RegisterationEventCopyWithImpl<$Res>
    implements _$RegisterationRemoveAvatarImageEventCopyWith<$Res> {
  __$RegisterationRemoveAvatarImageEventCopyWithImpl(
      _RegisterationRemoveAvatarImageEvent _value,
      $Res Function(_RegisterationRemoveAvatarImageEvent) _then)
      : super(_value, (v) => _then(v as _RegisterationRemoveAvatarImageEvent));

  @override
  _RegisterationRemoveAvatarImageEvent get _value =>
      super._value as _RegisterationRemoveAvatarImageEvent;
}

/// @nodoc

class _$_RegisterationRemoveAvatarImageEvent
    implements _RegisterationRemoveAvatarImageEvent {
  const _$_RegisterationRemoveAvatarImageEvent();

  @override
  String toString() {
    return 'RegisterationEvent.removeAvatarImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterationRemoveAvatarImageEvent);
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
    required TResult Function() registerFields,
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
    TResult Function()? registerFields,
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
    TResult Function()? registerFields,
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
    required TResult Function(_RegisterationUpdateUsernameTextEvent value)
        updateUsernameText,
    required TResult Function(_RegisterationUpdateAvatarImageEvent value)
        updateAvatarImage,
    required TResult Function(_RegisterationSaveUsernameEvent value)
        saveUsername,
    required TResult Function(_RegisterationRegisterFieldsEvent value)
        registerFields,
    required TResult Function(_RegisterationGoBackEvent value) goBack,
    required TResult Function(_RegisterationGoNextEvent value) goNext,
    required TResult Function(_RegisterationRemoveAvatarImageEvent value)
        removeAvatarImage,
  }) {
    return removeAvatarImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterationUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterationUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterationSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterationRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterationGoBackEvent value)? goBack,
    TResult Function(_RegisterationGoNextEvent value)? goNext,
    TResult Function(_RegisterationRemoveAvatarImageEvent value)?
        removeAvatarImage,
  }) {
    return removeAvatarImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterationUpdateUsernameTextEvent value)?
        updateUsernameText,
    TResult Function(_RegisterationUpdateAvatarImageEvent value)?
        updateAvatarImage,
    TResult Function(_RegisterationSaveUsernameEvent value)? saveUsername,
    TResult Function(_RegisterationRegisterFieldsEvent value)? registerFields,
    TResult Function(_RegisterationGoBackEvent value)? goBack,
    TResult Function(_RegisterationGoNextEvent value)? goNext,
    TResult Function(_RegisterationRemoveAvatarImageEvent value)?
        removeAvatarImage,
    required TResult orElse(),
  }) {
    if (removeAvatarImage != null) {
      return removeAvatarImage(this);
    }
    return orElse();
  }
}

abstract class _RegisterationRemoveAvatarImageEvent
    implements RegisterationEvent {
  const factory _RegisterationRemoveAvatarImageEvent() =
      _$_RegisterationRemoveAvatarImageEvent;
}

/// @nodoc
class _$RegisterationStateTearOff {
  const _$RegisterationStateTearOff();

  _RegisterationState call(
      {required Option<Either<ValueFailure, String>>
          valueFailureOrUsernameOption,
      required Option<Either<ImageFailure, File>> imageFailureOrImageOption,
      required Option<Either<AvatarRepositoryFailure, Unit>>
          avatarFailureOrAvatarOption,
      required Option<Either<SynchrowiseUserRepositoryFailure, Unit>>
          usernameFailureOrUnitOption,
      required Option<Either<SynchrowiseUserStorageFailure, Unit>>
          storageFailureOrUnitOption,
      required bool progressing,
      required bool showErrors,
      required int step}) {
    return _RegisterationState(
      valueFailureOrUsernameOption: valueFailureOrUsernameOption,
      imageFailureOrImageOption: imageFailureOrImageOption,
      avatarFailureOrAvatarOption: avatarFailureOrAvatarOption,
      usernameFailureOrUnitOption: usernameFailureOrUnitOption,
      storageFailureOrUnitOption: storageFailureOrUnitOption,
      progressing: progressing,
      showErrors: showErrors,
      step: step,
    );
  }
}

/// @nodoc
const $RegisterationState = _$RegisterationStateTearOff();

/// @nodoc
mixin _$RegisterationState {
  Option<Either<ValueFailure, String>> get valueFailureOrUsernameOption =>
      throw _privateConstructorUsedError;
  Option<Either<ImageFailure, File>> get imageFailureOrImageOption =>
      throw _privateConstructorUsedError;
  Option<Either<AvatarRepositoryFailure, Unit>>
      get avatarFailureOrAvatarOption => throw _privateConstructorUsedError;
  Option<Either<SynchrowiseUserRepositoryFailure, Unit>>
      get usernameFailureOrUnitOption => throw _privateConstructorUsedError;
  Option<Either<SynchrowiseUserStorageFailure, Unit>>
      get storageFailureOrUnitOption => throw _privateConstructorUsedError;
  bool get progressing => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  int get step => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterationStateCopyWith<RegisterationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterationStateCopyWith<$Res> {
  factory $RegisterationStateCopyWith(
          RegisterationState value, $Res Function(RegisterationState) then) =
      _$RegisterationStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<ValueFailure, String>> valueFailureOrUsernameOption,
      Option<Either<ImageFailure, File>> imageFailureOrImageOption,
      Option<Either<AvatarRepositoryFailure, Unit>> avatarFailureOrAvatarOption,
      Option<Either<SynchrowiseUserRepositoryFailure, Unit>>
          usernameFailureOrUnitOption,
      Option<Either<SynchrowiseUserStorageFailure, Unit>>
          storageFailureOrUnitOption,
      bool progressing,
      bool showErrors,
      int step});
}

/// @nodoc
class _$RegisterationStateCopyWithImpl<$Res>
    implements $RegisterationStateCopyWith<$Res> {
  _$RegisterationStateCopyWithImpl(this._value, this._then);

  final RegisterationState _value;
  // ignore: unused_field
  final $Res Function(RegisterationState) _then;

  @override
  $Res call({
    Object? valueFailureOrUsernameOption = freezed,
    Object? imageFailureOrImageOption = freezed,
    Object? avatarFailureOrAvatarOption = freezed,
    Object? usernameFailureOrUnitOption = freezed,
    Object? storageFailureOrUnitOption = freezed,
    Object? progressing = freezed,
    Object? showErrors = freezed,
    Object? step = freezed,
  }) {
    return _then(_value.copyWith(
      valueFailureOrUsernameOption: valueFailureOrUsernameOption == freezed
          ? _value.valueFailureOrUsernameOption
          : valueFailureOrUsernameOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, String>>,
      imageFailureOrImageOption: imageFailureOrImageOption == freezed
          ? _value.imageFailureOrImageOption
          : imageFailureOrImageOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ImageFailure, File>>,
      avatarFailureOrAvatarOption: avatarFailureOrAvatarOption == freezed
          ? _value.avatarFailureOrAvatarOption
          : avatarFailureOrAvatarOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AvatarRepositoryFailure, Unit>>,
      usernameFailureOrUnitOption: usernameFailureOrUnitOption == freezed
          ? _value.usernameFailureOrUnitOption
          : usernameFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SynchrowiseUserRepositoryFailure, Unit>>,
      storageFailureOrUnitOption: storageFailureOrUnitOption == freezed
          ? _value.storageFailureOrUnitOption
          : storageFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SynchrowiseUserStorageFailure, Unit>>,
      progressing: progressing == freezed
          ? _value.progressing
          : progressing // ignore: cast_nullable_to_non_nullable
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
abstract class _$RegisterationStateCopyWith<$Res>
    implements $RegisterationStateCopyWith<$Res> {
  factory _$RegisterationStateCopyWith(
          _RegisterationState value, $Res Function(_RegisterationState) then) =
      __$RegisterationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<ValueFailure, String>> valueFailureOrUsernameOption,
      Option<Either<ImageFailure, File>> imageFailureOrImageOption,
      Option<Either<AvatarRepositoryFailure, Unit>> avatarFailureOrAvatarOption,
      Option<Either<SynchrowiseUserRepositoryFailure, Unit>>
          usernameFailureOrUnitOption,
      Option<Either<SynchrowiseUserStorageFailure, Unit>>
          storageFailureOrUnitOption,
      bool progressing,
      bool showErrors,
      int step});
}

/// @nodoc
class __$RegisterationStateCopyWithImpl<$Res>
    extends _$RegisterationStateCopyWithImpl<$Res>
    implements _$RegisterationStateCopyWith<$Res> {
  __$RegisterationStateCopyWithImpl(
      _RegisterationState _value, $Res Function(_RegisterationState) _then)
      : super(_value, (v) => _then(v as _RegisterationState));

  @override
  _RegisterationState get _value => super._value as _RegisterationState;

  @override
  $Res call({
    Object? valueFailureOrUsernameOption = freezed,
    Object? imageFailureOrImageOption = freezed,
    Object? avatarFailureOrAvatarOption = freezed,
    Object? usernameFailureOrUnitOption = freezed,
    Object? storageFailureOrUnitOption = freezed,
    Object? progressing = freezed,
    Object? showErrors = freezed,
    Object? step = freezed,
  }) {
    return _then(_RegisterationState(
      valueFailureOrUsernameOption: valueFailureOrUsernameOption == freezed
          ? _value.valueFailureOrUsernameOption
          : valueFailureOrUsernameOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, String>>,
      imageFailureOrImageOption: imageFailureOrImageOption == freezed
          ? _value.imageFailureOrImageOption
          : imageFailureOrImageOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ImageFailure, File>>,
      avatarFailureOrAvatarOption: avatarFailureOrAvatarOption == freezed
          ? _value.avatarFailureOrAvatarOption
          : avatarFailureOrAvatarOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AvatarRepositoryFailure, Unit>>,
      usernameFailureOrUnitOption: usernameFailureOrUnitOption == freezed
          ? _value.usernameFailureOrUnitOption
          : usernameFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SynchrowiseUserRepositoryFailure, Unit>>,
      storageFailureOrUnitOption: storageFailureOrUnitOption == freezed
          ? _value.storageFailureOrUnitOption
          : storageFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SynchrowiseUserStorageFailure, Unit>>,
      progressing: progressing == freezed
          ? _value.progressing
          : progressing // ignore: cast_nullable_to_non_nullable
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

class _$_RegisterationState extends _RegisterationState {
  const _$_RegisterationState(
      {required this.valueFailureOrUsernameOption,
      required this.imageFailureOrImageOption,
      required this.avatarFailureOrAvatarOption,
      required this.usernameFailureOrUnitOption,
      required this.storageFailureOrUnitOption,
      required this.progressing,
      required this.showErrors,
      required this.step})
      : super._();

  @override
  final Option<Either<ValueFailure, String>> valueFailureOrUsernameOption;
  @override
  final Option<Either<ImageFailure, File>> imageFailureOrImageOption;
  @override
  final Option<Either<AvatarRepositoryFailure, Unit>>
      avatarFailureOrAvatarOption;
  @override
  final Option<Either<SynchrowiseUserRepositoryFailure, Unit>>
      usernameFailureOrUnitOption;
  @override
  final Option<Either<SynchrowiseUserStorageFailure, Unit>>
      storageFailureOrUnitOption;
  @override
  final bool progressing;
  @override
  final bool showErrors;
  @override
  final int step;

  @override
  String toString() {
    return 'RegisterationState(valueFailureOrUsernameOption: $valueFailureOrUsernameOption, imageFailureOrImageOption: $imageFailureOrImageOption, avatarFailureOrAvatarOption: $avatarFailureOrAvatarOption, usernameFailureOrUnitOption: $usernameFailureOrUnitOption, storageFailureOrUnitOption: $storageFailureOrUnitOption, progressing: $progressing, showErrors: $showErrors, step: $step)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterationState &&
            const DeepCollectionEquality().equals(
                other.valueFailureOrUsernameOption,
                valueFailureOrUsernameOption) &&
            const DeepCollectionEquality().equals(
                other.imageFailureOrImageOption, imageFailureOrImageOption) &&
            const DeepCollectionEquality().equals(
                other.avatarFailureOrAvatarOption,
                avatarFailureOrAvatarOption) &&
            const DeepCollectionEquality().equals(
                other.usernameFailureOrUnitOption,
                usernameFailureOrUnitOption) &&
            const DeepCollectionEquality().equals(
                other.storageFailureOrUnitOption, storageFailureOrUnitOption) &&
            const DeepCollectionEquality()
                .equals(other.progressing, progressing) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality().equals(other.step, step));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(valueFailureOrUsernameOption),
      const DeepCollectionEquality().hash(imageFailureOrImageOption),
      const DeepCollectionEquality().hash(avatarFailureOrAvatarOption),
      const DeepCollectionEquality().hash(usernameFailureOrUnitOption),
      const DeepCollectionEquality().hash(storageFailureOrUnitOption),
      const DeepCollectionEquality().hash(progressing),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(step));

  @JsonKey(ignore: true)
  @override
  _$RegisterationStateCopyWith<_RegisterationState> get copyWith =>
      __$RegisterationStateCopyWithImpl<_RegisterationState>(this, _$identity);
}

abstract class _RegisterationState extends RegisterationState {
  const factory _RegisterationState(
      {required Option<Either<ValueFailure, String>>
          valueFailureOrUsernameOption,
      required Option<Either<ImageFailure, File>> imageFailureOrImageOption,
      required Option<Either<AvatarRepositoryFailure, Unit>>
          avatarFailureOrAvatarOption,
      required Option<Either<SynchrowiseUserRepositoryFailure, Unit>>
          usernameFailureOrUnitOption,
      required Option<Either<SynchrowiseUserStorageFailure, Unit>>
          storageFailureOrUnitOption,
      required bool progressing,
      required bool showErrors,
      required int step}) = _$_RegisterationState;
  const _RegisterationState._() : super._();

  @override
  Option<Either<ValueFailure, String>> get valueFailureOrUsernameOption;
  @override
  Option<Either<ImageFailure, File>> get imageFailureOrImageOption;
  @override
  Option<Either<AvatarRepositoryFailure, Unit>> get avatarFailureOrAvatarOption;
  @override
  Option<Either<SynchrowiseUserRepositoryFailure, Unit>>
      get usernameFailureOrUnitOption;
  @override
  Option<Either<SynchrowiseUserStorageFailure, Unit>>
      get storageFailureOrUnitOption;
  @override
  bool get progressing;
  @override
  bool get showErrors;
  @override
  int get step;
  @override
  @JsonKey(ignore: true)
  _$RegisterationStateCopyWith<_RegisterationState> get copyWith =>
      throw _privateConstructorUsedError;
}
