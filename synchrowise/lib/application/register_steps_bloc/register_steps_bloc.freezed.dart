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

  _SigninUpdateUsernameTextFormEvent updateUsernameText(
      {required String username}) {
    return _SigninUpdateUsernameTextFormEvent(
      username: username,
    );
  }

  _SigninUpdateImageFileFormEvent updateImageFile() {
    return const _SigninUpdateImageFileFormEvent();
  }

  _SigninSaveUsernameAndImageFormEvent saveUsernameAndImage() {
    return const _SigninSaveUsernameAndImageFormEvent();
  }
}

/// @nodoc
const $RegisterStepsEvent = _$RegisterStepsEventTearOff();

/// @nodoc
mixin _$RegisterStepsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) updateUsernameText,
    required TResult Function() updateImageFile,
    required TResult Function() saveUsernameAndImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function()? updateImageFile,
    TResult Function()? saveUsernameAndImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function()? updateImageFile,
    TResult Function()? saveUsernameAndImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SigninUpdateUsernameTextFormEvent value)
        updateUsernameText,
    required TResult Function(_SigninUpdateImageFileFormEvent value)
        updateImageFile,
    required TResult Function(_SigninSaveUsernameAndImageFormEvent value)
        saveUsernameAndImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SigninUpdateUsernameTextFormEvent value)?
        updateUsernameText,
    TResult Function(_SigninUpdateImageFileFormEvent value)? updateImageFile,
    TResult Function(_SigninSaveUsernameAndImageFormEvent value)?
        saveUsernameAndImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SigninUpdateUsernameTextFormEvent value)?
        updateUsernameText,
    TResult Function(_SigninUpdateImageFileFormEvent value)? updateImageFile,
    TResult Function(_SigninSaveUsernameAndImageFormEvent value)?
        saveUsernameAndImage,
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
abstract class _$SigninUpdateUsernameTextFormEventCopyWith<$Res> {
  factory _$SigninUpdateUsernameTextFormEventCopyWith(
          _SigninUpdateUsernameTextFormEvent value,
          $Res Function(_SigninUpdateUsernameTextFormEvent) then) =
      __$SigninUpdateUsernameTextFormEventCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$SigninUpdateUsernameTextFormEventCopyWithImpl<$Res>
    extends _$RegisterStepsEventCopyWithImpl<$Res>
    implements _$SigninUpdateUsernameTextFormEventCopyWith<$Res> {
  __$SigninUpdateUsernameTextFormEventCopyWithImpl(
      _SigninUpdateUsernameTextFormEvent _value,
      $Res Function(_SigninUpdateUsernameTextFormEvent) _then)
      : super(_value, (v) => _then(v as _SigninUpdateUsernameTextFormEvent));

  @override
  _SigninUpdateUsernameTextFormEvent get _value =>
      super._value as _SigninUpdateUsernameTextFormEvent;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_SigninUpdateUsernameTextFormEvent(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SigninUpdateUsernameTextFormEvent
    implements _SigninUpdateUsernameTextFormEvent {
  const _$_SigninUpdateUsernameTextFormEvent({required this.username});

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
            other is _SigninUpdateUsernameTextFormEvent &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$SigninUpdateUsernameTextFormEventCopyWith<
          _SigninUpdateUsernameTextFormEvent>
      get copyWith => __$SigninUpdateUsernameTextFormEventCopyWithImpl<
          _SigninUpdateUsernameTextFormEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) updateUsernameText,
    required TResult Function() updateImageFile,
    required TResult Function() saveUsernameAndImage,
  }) {
    return updateUsernameText(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function()? updateImageFile,
    TResult Function()? saveUsernameAndImage,
  }) {
    return updateUsernameText?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function()? updateImageFile,
    TResult Function()? saveUsernameAndImage,
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
    required TResult Function(_SigninUpdateUsernameTextFormEvent value)
        updateUsernameText,
    required TResult Function(_SigninUpdateImageFileFormEvent value)
        updateImageFile,
    required TResult Function(_SigninSaveUsernameAndImageFormEvent value)
        saveUsernameAndImage,
  }) {
    return updateUsernameText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SigninUpdateUsernameTextFormEvent value)?
        updateUsernameText,
    TResult Function(_SigninUpdateImageFileFormEvent value)? updateImageFile,
    TResult Function(_SigninSaveUsernameAndImageFormEvent value)?
        saveUsernameAndImage,
  }) {
    return updateUsernameText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SigninUpdateUsernameTextFormEvent value)?
        updateUsernameText,
    TResult Function(_SigninUpdateImageFileFormEvent value)? updateImageFile,
    TResult Function(_SigninSaveUsernameAndImageFormEvent value)?
        saveUsernameAndImage,
    required TResult orElse(),
  }) {
    if (updateUsernameText != null) {
      return updateUsernameText(this);
    }
    return orElse();
  }
}

abstract class _SigninUpdateUsernameTextFormEvent
    implements RegisterStepsEvent {
  const factory _SigninUpdateUsernameTextFormEvent({required String username}) =
      _$_SigninUpdateUsernameTextFormEvent;

  String get username;
  @JsonKey(ignore: true)
  _$SigninUpdateUsernameTextFormEventCopyWith<
          _SigninUpdateUsernameTextFormEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SigninUpdateImageFileFormEventCopyWith<$Res> {
  factory _$SigninUpdateImageFileFormEventCopyWith(
          _SigninUpdateImageFileFormEvent value,
          $Res Function(_SigninUpdateImageFileFormEvent) then) =
      __$SigninUpdateImageFileFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$SigninUpdateImageFileFormEventCopyWithImpl<$Res>
    extends _$RegisterStepsEventCopyWithImpl<$Res>
    implements _$SigninUpdateImageFileFormEventCopyWith<$Res> {
  __$SigninUpdateImageFileFormEventCopyWithImpl(
      _SigninUpdateImageFileFormEvent _value,
      $Res Function(_SigninUpdateImageFileFormEvent) _then)
      : super(_value, (v) => _then(v as _SigninUpdateImageFileFormEvent));

  @override
  _SigninUpdateImageFileFormEvent get _value =>
      super._value as _SigninUpdateImageFileFormEvent;
}

/// @nodoc

class _$_SigninUpdateImageFileFormEvent
    implements _SigninUpdateImageFileFormEvent {
  const _$_SigninUpdateImageFileFormEvent();

  @override
  String toString() {
    return 'RegisterStepsEvent.updateImageFile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SigninUpdateImageFileFormEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) updateUsernameText,
    required TResult Function() updateImageFile,
    required TResult Function() saveUsernameAndImage,
  }) {
    return updateImageFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function()? updateImageFile,
    TResult Function()? saveUsernameAndImage,
  }) {
    return updateImageFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function()? updateImageFile,
    TResult Function()? saveUsernameAndImage,
    required TResult orElse(),
  }) {
    if (updateImageFile != null) {
      return updateImageFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SigninUpdateUsernameTextFormEvent value)
        updateUsernameText,
    required TResult Function(_SigninUpdateImageFileFormEvent value)
        updateImageFile,
    required TResult Function(_SigninSaveUsernameAndImageFormEvent value)
        saveUsernameAndImage,
  }) {
    return updateImageFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SigninUpdateUsernameTextFormEvent value)?
        updateUsernameText,
    TResult Function(_SigninUpdateImageFileFormEvent value)? updateImageFile,
    TResult Function(_SigninSaveUsernameAndImageFormEvent value)?
        saveUsernameAndImage,
  }) {
    return updateImageFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SigninUpdateUsernameTextFormEvent value)?
        updateUsernameText,
    TResult Function(_SigninUpdateImageFileFormEvent value)? updateImageFile,
    TResult Function(_SigninSaveUsernameAndImageFormEvent value)?
        saveUsernameAndImage,
    required TResult orElse(),
  }) {
    if (updateImageFile != null) {
      return updateImageFile(this);
    }
    return orElse();
  }
}

abstract class _SigninUpdateImageFileFormEvent implements RegisterStepsEvent {
  const factory _SigninUpdateImageFileFormEvent() =
      _$_SigninUpdateImageFileFormEvent;
}

/// @nodoc
abstract class _$SigninSaveUsernameAndImageFormEventCopyWith<$Res> {
  factory _$SigninSaveUsernameAndImageFormEventCopyWith(
          _SigninSaveUsernameAndImageFormEvent value,
          $Res Function(_SigninSaveUsernameAndImageFormEvent) then) =
      __$SigninSaveUsernameAndImageFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$SigninSaveUsernameAndImageFormEventCopyWithImpl<$Res>
    extends _$RegisterStepsEventCopyWithImpl<$Res>
    implements _$SigninSaveUsernameAndImageFormEventCopyWith<$Res> {
  __$SigninSaveUsernameAndImageFormEventCopyWithImpl(
      _SigninSaveUsernameAndImageFormEvent _value,
      $Res Function(_SigninSaveUsernameAndImageFormEvent) _then)
      : super(_value, (v) => _then(v as _SigninSaveUsernameAndImageFormEvent));

  @override
  _SigninSaveUsernameAndImageFormEvent get _value =>
      super._value as _SigninSaveUsernameAndImageFormEvent;
}

/// @nodoc

class _$_SigninSaveUsernameAndImageFormEvent
    implements _SigninSaveUsernameAndImageFormEvent {
  const _$_SigninSaveUsernameAndImageFormEvent();

  @override
  String toString() {
    return 'RegisterStepsEvent.saveUsernameAndImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SigninSaveUsernameAndImageFormEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) updateUsernameText,
    required TResult Function() updateImageFile,
    required TResult Function() saveUsernameAndImage,
  }) {
    return saveUsernameAndImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function()? updateImageFile,
    TResult Function()? saveUsernameAndImage,
  }) {
    return saveUsernameAndImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? updateUsernameText,
    TResult Function()? updateImageFile,
    TResult Function()? saveUsernameAndImage,
    required TResult orElse(),
  }) {
    if (saveUsernameAndImage != null) {
      return saveUsernameAndImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SigninUpdateUsernameTextFormEvent value)
        updateUsernameText,
    required TResult Function(_SigninUpdateImageFileFormEvent value)
        updateImageFile,
    required TResult Function(_SigninSaveUsernameAndImageFormEvent value)
        saveUsernameAndImage,
  }) {
    return saveUsernameAndImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SigninUpdateUsernameTextFormEvent value)?
        updateUsernameText,
    TResult Function(_SigninUpdateImageFileFormEvent value)? updateImageFile,
    TResult Function(_SigninSaveUsernameAndImageFormEvent value)?
        saveUsernameAndImage,
  }) {
    return saveUsernameAndImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SigninUpdateUsernameTextFormEvent value)?
        updateUsernameText,
    TResult Function(_SigninUpdateImageFileFormEvent value)? updateImageFile,
    TResult Function(_SigninSaveUsernameAndImageFormEvent value)?
        saveUsernameAndImage,
    required TResult orElse(),
  }) {
    if (saveUsernameAndImage != null) {
      return saveUsernameAndImage(this);
    }
    return orElse();
  }
}

abstract class _SigninSaveUsernameAndImageFormEvent
    implements RegisterStepsEvent {
  const factory _SigninSaveUsernameAndImageFormEvent() =
      _$_SigninSaveUsernameAndImageFormEvent;
}

/// @nodoc
class _$RegisterStepsStateTearOff {
  const _$RegisterStepsStateTearOff();

  _RegisterStepsState call(
      {required Option<Either<ValueFailure, String>> failureOrUsernameOption,
      required Option<Either<AuthFailure, File?>> failureOrImageOption,
      required Option<Either<ValueFailure, Unit>> failureOrUnitOption,
      required bool showErrors}) {
    return _RegisterStepsState(
      failureOrUsernameOption: failureOrUsernameOption,
      failureOrImageOption: failureOrImageOption,
      failureOrUnitOption: failureOrUnitOption,
      showErrors: showErrors,
    );
  }
}

/// @nodoc
const $RegisterStepsState = _$RegisterStepsStateTearOff();

/// @nodoc
mixin _$RegisterStepsState {
  Option<Either<ValueFailure, String>> get failureOrUsernameOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, File?>> get failureOrImageOption =>
      throw _privateConstructorUsedError;
  Option<Either<ValueFailure, Unit>> get failureOrUnitOption =>
      throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;

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
      Option<Either<AuthFailure, File?>> failureOrImageOption,
      Option<Either<ValueFailure, Unit>> failureOrUnitOption,
      bool showErrors});
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
    Object? failureOrUnitOption = freezed,
    Object? showErrors = freezed,
  }) {
    return _then(_value.copyWith(
      failureOrUsernameOption: failureOrUsernameOption == freezed
          ? _value.failureOrUsernameOption
          : failureOrUsernameOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, String>>,
      failureOrImageOption: failureOrImageOption == freezed
          ? _value.failureOrImageOption
          : failureOrImageOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, File?>>,
      failureOrUnitOption: failureOrUnitOption == freezed
          ? _value.failureOrUnitOption
          : failureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, Unit>>,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
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
      Option<Either<AuthFailure, File?>> failureOrImageOption,
      Option<Either<ValueFailure, Unit>> failureOrUnitOption,
      bool showErrors});
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
    Object? failureOrUnitOption = freezed,
    Object? showErrors = freezed,
  }) {
    return _then(_RegisterStepsState(
      failureOrUsernameOption: failureOrUsernameOption == freezed
          ? _value.failureOrUsernameOption
          : failureOrUsernameOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, String>>,
      failureOrImageOption: failureOrImageOption == freezed
          ? _value.failureOrImageOption
          : failureOrImageOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, File?>>,
      failureOrUnitOption: failureOrUnitOption == freezed
          ? _value.failureOrUnitOption
          : failureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, Unit>>,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RegisterStepsState implements _RegisterStepsState {
  const _$_RegisterStepsState(
      {required this.failureOrUsernameOption,
      required this.failureOrImageOption,
      required this.failureOrUnitOption,
      required this.showErrors});

  @override
  final Option<Either<ValueFailure, String>> failureOrUsernameOption;
  @override
  final Option<Either<AuthFailure, File?>> failureOrImageOption;
  @override
  final Option<Either<ValueFailure, Unit>> failureOrUnitOption;
  @override
  final bool showErrors;

  @override
  String toString() {
    return 'RegisterStepsState(failureOrUsernameOption: $failureOrUsernameOption, failureOrImageOption: $failureOrImageOption, failureOrUnitOption: $failureOrUnitOption, showErrors: $showErrors)';
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
            const DeepCollectionEquality()
                .equals(other.failureOrUnitOption, failureOrUnitOption) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failureOrUsernameOption),
      const DeepCollectionEquality().hash(failureOrImageOption),
      const DeepCollectionEquality().hash(failureOrUnitOption),
      const DeepCollectionEquality().hash(showErrors));

  @JsonKey(ignore: true)
  @override
  _$RegisterStepsStateCopyWith<_RegisterStepsState> get copyWith =>
      __$RegisterStepsStateCopyWithImpl<_RegisterStepsState>(this, _$identity);
}

abstract class _RegisterStepsState implements RegisterStepsState {
  const factory _RegisterStepsState(
      {required Option<Either<ValueFailure, String>> failureOrUsernameOption,
      required Option<Either<AuthFailure, File?>> failureOrImageOption,
      required Option<Either<ValueFailure, Unit>> failureOrUnitOption,
      required bool showErrors}) = _$_RegisterStepsState;

  @override
  Option<Either<ValueFailure, String>> get failureOrUsernameOption;
  @override
  Option<Either<AuthFailure, File?>> get failureOrImageOption;
  @override
  Option<Either<ValueFailure, Unit>> get failureOrUnitOption;
  @override
  bool get showErrors;
  @override
  @JsonKey(ignore: true)
  _$RegisterStepsStateCopyWith<_RegisterStepsState> get copyWith =>
      throw _privateConstructorUsedError;
}
