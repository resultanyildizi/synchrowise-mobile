// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contact_us_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContactUsEventTearOff {
  const _$ContactUsEventTearOff();

  _UpdateEmailTextEvent updateEmailText({required String email}) {
    return _UpdateEmailTextEvent(
      email: email,
    );
  }

  _UpdateSubjectTextEvent updateSubjectText({required String subject}) {
    return _UpdateSubjectTextEvent(
      subject: subject,
    );
  }

  _UpdateMessageTextEvent updateMessageText({required String message}) {
    return _UpdateMessageTextEvent(
      message: message,
    );
  }

  _SendEvent send() {
    return const _SendEvent();
  }
}

/// @nodoc
const $ContactUsEvent = _$ContactUsEventTearOff();

/// @nodoc
mixin _$ContactUsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmailText,
    required TResult Function(String subject) updateSubjectText,
    required TResult Function(String message) updateMessageText,
    required TResult Function() send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? updateEmailText,
    TResult Function(String subject)? updateSubjectText,
    TResult Function(String message)? updateMessageText,
    TResult Function()? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmailText,
    TResult Function(String subject)? updateSubjectText,
    TResult Function(String message)? updateMessageText,
    TResult Function()? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEmailTextEvent value) updateEmailText,
    required TResult Function(_UpdateSubjectTextEvent value) updateSubjectText,
    required TResult Function(_UpdateMessageTextEvent value) updateMessageText,
    required TResult Function(_SendEvent value) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateEmailTextEvent value)? updateEmailText,
    TResult Function(_UpdateSubjectTextEvent value)? updateSubjectText,
    TResult Function(_UpdateMessageTextEvent value)? updateMessageText,
    TResult Function(_SendEvent value)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEmailTextEvent value)? updateEmailText,
    TResult Function(_UpdateSubjectTextEvent value)? updateSubjectText,
    TResult Function(_UpdateMessageTextEvent value)? updateMessageText,
    TResult Function(_SendEvent value)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactUsEventCopyWith<$Res> {
  factory $ContactUsEventCopyWith(
          ContactUsEvent value, $Res Function(ContactUsEvent) then) =
      _$ContactUsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactUsEventCopyWithImpl<$Res>
    implements $ContactUsEventCopyWith<$Res> {
  _$ContactUsEventCopyWithImpl(this._value, this._then);

  final ContactUsEvent _value;
  // ignore: unused_field
  final $Res Function(ContactUsEvent) _then;
}

/// @nodoc
abstract class _$UpdateEmailTextEventCopyWith<$Res> {
  factory _$UpdateEmailTextEventCopyWith(_UpdateEmailTextEvent value,
          $Res Function(_UpdateEmailTextEvent) then) =
      __$UpdateEmailTextEventCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$UpdateEmailTextEventCopyWithImpl<$Res>
    extends _$ContactUsEventCopyWithImpl<$Res>
    implements _$UpdateEmailTextEventCopyWith<$Res> {
  __$UpdateEmailTextEventCopyWithImpl(
      _UpdateEmailTextEvent _value, $Res Function(_UpdateEmailTextEvent) _then)
      : super(_value, (v) => _then(v as _UpdateEmailTextEvent));

  @override
  _UpdateEmailTextEvent get _value => super._value as _UpdateEmailTextEvent;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_UpdateEmailTextEvent(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateEmailTextEvent implements _UpdateEmailTextEvent {
  const _$_UpdateEmailTextEvent({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'ContactUsEvent.updateEmailText(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateEmailTextEvent &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$UpdateEmailTextEventCopyWith<_UpdateEmailTextEvent> get copyWith =>
      __$UpdateEmailTextEventCopyWithImpl<_UpdateEmailTextEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmailText,
    required TResult Function(String subject) updateSubjectText,
    required TResult Function(String message) updateMessageText,
    required TResult Function() send,
  }) {
    return updateEmailText(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? updateEmailText,
    TResult Function(String subject)? updateSubjectText,
    TResult Function(String message)? updateMessageText,
    TResult Function()? send,
  }) {
    return updateEmailText?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmailText,
    TResult Function(String subject)? updateSubjectText,
    TResult Function(String message)? updateMessageText,
    TResult Function()? send,
    required TResult orElse(),
  }) {
    if (updateEmailText != null) {
      return updateEmailText(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEmailTextEvent value) updateEmailText,
    required TResult Function(_UpdateSubjectTextEvent value) updateSubjectText,
    required TResult Function(_UpdateMessageTextEvent value) updateMessageText,
    required TResult Function(_SendEvent value) send,
  }) {
    return updateEmailText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateEmailTextEvent value)? updateEmailText,
    TResult Function(_UpdateSubjectTextEvent value)? updateSubjectText,
    TResult Function(_UpdateMessageTextEvent value)? updateMessageText,
    TResult Function(_SendEvent value)? send,
  }) {
    return updateEmailText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEmailTextEvent value)? updateEmailText,
    TResult Function(_UpdateSubjectTextEvent value)? updateSubjectText,
    TResult Function(_UpdateMessageTextEvent value)? updateMessageText,
    TResult Function(_SendEvent value)? send,
    required TResult orElse(),
  }) {
    if (updateEmailText != null) {
      return updateEmailText(this);
    }
    return orElse();
  }
}

abstract class _UpdateEmailTextEvent implements ContactUsEvent {
  const factory _UpdateEmailTextEvent({required String email}) =
      _$_UpdateEmailTextEvent;

  String get email;
  @JsonKey(ignore: true)
  _$UpdateEmailTextEventCopyWith<_UpdateEmailTextEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateSubjectTextEventCopyWith<$Res> {
  factory _$UpdateSubjectTextEventCopyWith(_UpdateSubjectTextEvent value,
          $Res Function(_UpdateSubjectTextEvent) then) =
      __$UpdateSubjectTextEventCopyWithImpl<$Res>;
  $Res call({String subject});
}

/// @nodoc
class __$UpdateSubjectTextEventCopyWithImpl<$Res>
    extends _$ContactUsEventCopyWithImpl<$Res>
    implements _$UpdateSubjectTextEventCopyWith<$Res> {
  __$UpdateSubjectTextEventCopyWithImpl(_UpdateSubjectTextEvent _value,
      $Res Function(_UpdateSubjectTextEvent) _then)
      : super(_value, (v) => _then(v as _UpdateSubjectTextEvent));

  @override
  _UpdateSubjectTextEvent get _value => super._value as _UpdateSubjectTextEvent;

  @override
  $Res call({
    Object? subject = freezed,
  }) {
    return _then(_UpdateSubjectTextEvent(
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateSubjectTextEvent implements _UpdateSubjectTextEvent {
  const _$_UpdateSubjectTextEvent({required this.subject});

  @override
  final String subject;

  @override
  String toString() {
    return 'ContactUsEvent.updateSubjectText(subject: $subject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateSubjectTextEvent &&
            const DeepCollectionEquality().equals(other.subject, subject));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(subject));

  @JsonKey(ignore: true)
  @override
  _$UpdateSubjectTextEventCopyWith<_UpdateSubjectTextEvent> get copyWith =>
      __$UpdateSubjectTextEventCopyWithImpl<_UpdateSubjectTextEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmailText,
    required TResult Function(String subject) updateSubjectText,
    required TResult Function(String message) updateMessageText,
    required TResult Function() send,
  }) {
    return updateSubjectText(subject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? updateEmailText,
    TResult Function(String subject)? updateSubjectText,
    TResult Function(String message)? updateMessageText,
    TResult Function()? send,
  }) {
    return updateSubjectText?.call(subject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmailText,
    TResult Function(String subject)? updateSubjectText,
    TResult Function(String message)? updateMessageText,
    TResult Function()? send,
    required TResult orElse(),
  }) {
    if (updateSubjectText != null) {
      return updateSubjectText(subject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEmailTextEvent value) updateEmailText,
    required TResult Function(_UpdateSubjectTextEvent value) updateSubjectText,
    required TResult Function(_UpdateMessageTextEvent value) updateMessageText,
    required TResult Function(_SendEvent value) send,
  }) {
    return updateSubjectText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateEmailTextEvent value)? updateEmailText,
    TResult Function(_UpdateSubjectTextEvent value)? updateSubjectText,
    TResult Function(_UpdateMessageTextEvent value)? updateMessageText,
    TResult Function(_SendEvent value)? send,
  }) {
    return updateSubjectText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEmailTextEvent value)? updateEmailText,
    TResult Function(_UpdateSubjectTextEvent value)? updateSubjectText,
    TResult Function(_UpdateMessageTextEvent value)? updateMessageText,
    TResult Function(_SendEvent value)? send,
    required TResult orElse(),
  }) {
    if (updateSubjectText != null) {
      return updateSubjectText(this);
    }
    return orElse();
  }
}

abstract class _UpdateSubjectTextEvent implements ContactUsEvent {
  const factory _UpdateSubjectTextEvent({required String subject}) =
      _$_UpdateSubjectTextEvent;

  String get subject;
  @JsonKey(ignore: true)
  _$UpdateSubjectTextEventCopyWith<_UpdateSubjectTextEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateMessageTextEventCopyWith<$Res> {
  factory _$UpdateMessageTextEventCopyWith(_UpdateMessageTextEvent value,
          $Res Function(_UpdateMessageTextEvent) then) =
      __$UpdateMessageTextEventCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$UpdateMessageTextEventCopyWithImpl<$Res>
    extends _$ContactUsEventCopyWithImpl<$Res>
    implements _$UpdateMessageTextEventCopyWith<$Res> {
  __$UpdateMessageTextEventCopyWithImpl(_UpdateMessageTextEvent _value,
      $Res Function(_UpdateMessageTextEvent) _then)
      : super(_value, (v) => _then(v as _UpdateMessageTextEvent));

  @override
  _UpdateMessageTextEvent get _value => super._value as _UpdateMessageTextEvent;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_UpdateMessageTextEvent(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateMessageTextEvent implements _UpdateMessageTextEvent {
  const _$_UpdateMessageTextEvent({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ContactUsEvent.updateMessageText(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateMessageTextEvent &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$UpdateMessageTextEventCopyWith<_UpdateMessageTextEvent> get copyWith =>
      __$UpdateMessageTextEventCopyWithImpl<_UpdateMessageTextEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmailText,
    required TResult Function(String subject) updateSubjectText,
    required TResult Function(String message) updateMessageText,
    required TResult Function() send,
  }) {
    return updateMessageText(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? updateEmailText,
    TResult Function(String subject)? updateSubjectText,
    TResult Function(String message)? updateMessageText,
    TResult Function()? send,
  }) {
    return updateMessageText?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmailText,
    TResult Function(String subject)? updateSubjectText,
    TResult Function(String message)? updateMessageText,
    TResult Function()? send,
    required TResult orElse(),
  }) {
    if (updateMessageText != null) {
      return updateMessageText(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEmailTextEvent value) updateEmailText,
    required TResult Function(_UpdateSubjectTextEvent value) updateSubjectText,
    required TResult Function(_UpdateMessageTextEvent value) updateMessageText,
    required TResult Function(_SendEvent value) send,
  }) {
    return updateMessageText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateEmailTextEvent value)? updateEmailText,
    TResult Function(_UpdateSubjectTextEvent value)? updateSubjectText,
    TResult Function(_UpdateMessageTextEvent value)? updateMessageText,
    TResult Function(_SendEvent value)? send,
  }) {
    return updateMessageText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEmailTextEvent value)? updateEmailText,
    TResult Function(_UpdateSubjectTextEvent value)? updateSubjectText,
    TResult Function(_UpdateMessageTextEvent value)? updateMessageText,
    TResult Function(_SendEvent value)? send,
    required TResult orElse(),
  }) {
    if (updateMessageText != null) {
      return updateMessageText(this);
    }
    return orElse();
  }
}

abstract class _UpdateMessageTextEvent implements ContactUsEvent {
  const factory _UpdateMessageTextEvent({required String message}) =
      _$_UpdateMessageTextEvent;

  String get message;
  @JsonKey(ignore: true)
  _$UpdateMessageTextEventCopyWith<_UpdateMessageTextEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendEventCopyWith<$Res> {
  factory _$SendEventCopyWith(
          _SendEvent value, $Res Function(_SendEvent) then) =
      __$SendEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$SendEventCopyWithImpl<$Res> extends _$ContactUsEventCopyWithImpl<$Res>
    implements _$SendEventCopyWith<$Res> {
  __$SendEventCopyWithImpl(_SendEvent _value, $Res Function(_SendEvent) _then)
      : super(_value, (v) => _then(v as _SendEvent));

  @override
  _SendEvent get _value => super._value as _SendEvent;
}

/// @nodoc

class _$_SendEvent implements _SendEvent {
  const _$_SendEvent();

  @override
  String toString() {
    return 'ContactUsEvent.send()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SendEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmailText,
    required TResult Function(String subject) updateSubjectText,
    required TResult Function(String message) updateMessageText,
    required TResult Function() send,
  }) {
    return send();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? updateEmailText,
    TResult Function(String subject)? updateSubjectText,
    TResult Function(String message)? updateMessageText,
    TResult Function()? send,
  }) {
    return send?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmailText,
    TResult Function(String subject)? updateSubjectText,
    TResult Function(String message)? updateMessageText,
    TResult Function()? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEmailTextEvent value) updateEmailText,
    required TResult Function(_UpdateSubjectTextEvent value) updateSubjectText,
    required TResult Function(_UpdateMessageTextEvent value) updateMessageText,
    required TResult Function(_SendEvent value) send,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateEmailTextEvent value)? updateEmailText,
    TResult Function(_UpdateSubjectTextEvent value)? updateSubjectText,
    TResult Function(_UpdateMessageTextEvent value)? updateMessageText,
    TResult Function(_SendEvent value)? send,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEmailTextEvent value)? updateEmailText,
    TResult Function(_UpdateSubjectTextEvent value)? updateSubjectText,
    TResult Function(_UpdateMessageTextEvent value)? updateMessageText,
    TResult Function(_SendEvent value)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class _SendEvent implements ContactUsEvent {
  const factory _SendEvent() = _$_SendEvent;
}

/// @nodoc
class _$ContactUsStateTearOff {
  const _$ContactUsStateTearOff();

  _ContactUsState call(
      {required Option<Either<SynchrowiseFailure, Unit>>
          sendFailureOrUnitOption,
      required Option<Either<ValueFailure, String>> failureOrEmailOption,
      required Option<Either<ValueFailure, String>> failureOrSubjectOption,
      required Option<Either<ValueFailure, String>> failureOrMessageOption,
      required bool showErrors,
      required bool isSending}) {
    return _ContactUsState(
      sendFailureOrUnitOption: sendFailureOrUnitOption,
      failureOrEmailOption: failureOrEmailOption,
      failureOrSubjectOption: failureOrSubjectOption,
      failureOrMessageOption: failureOrMessageOption,
      showErrors: showErrors,
      isSending: isSending,
    );
  }
}

/// @nodoc
const $ContactUsState = _$ContactUsStateTearOff();

/// @nodoc
mixin _$ContactUsState {
  Option<Either<SynchrowiseFailure, Unit>> get sendFailureOrUnitOption =>
      throw _privateConstructorUsedError;
  Option<Either<ValueFailure, String>> get failureOrEmailOption =>
      throw _privateConstructorUsedError;
  Option<Either<ValueFailure, String>> get failureOrSubjectOption =>
      throw _privateConstructorUsedError;
  Option<Either<ValueFailure, String>> get failureOrMessageOption =>
      throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  bool get isSending => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactUsStateCopyWith<ContactUsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactUsStateCopyWith<$Res> {
  factory $ContactUsStateCopyWith(
          ContactUsState value, $Res Function(ContactUsState) then) =
      _$ContactUsStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<SynchrowiseFailure, Unit>> sendFailureOrUnitOption,
      Option<Either<ValueFailure, String>> failureOrEmailOption,
      Option<Either<ValueFailure, String>> failureOrSubjectOption,
      Option<Either<ValueFailure, String>> failureOrMessageOption,
      bool showErrors,
      bool isSending});
}

/// @nodoc
class _$ContactUsStateCopyWithImpl<$Res>
    implements $ContactUsStateCopyWith<$Res> {
  _$ContactUsStateCopyWithImpl(this._value, this._then);

  final ContactUsState _value;
  // ignore: unused_field
  final $Res Function(ContactUsState) _then;

  @override
  $Res call({
    Object? sendFailureOrUnitOption = freezed,
    Object? failureOrEmailOption = freezed,
    Object? failureOrSubjectOption = freezed,
    Object? failureOrMessageOption = freezed,
    Object? showErrors = freezed,
    Object? isSending = freezed,
  }) {
    return _then(_value.copyWith(
      sendFailureOrUnitOption: sendFailureOrUnitOption == freezed
          ? _value.sendFailureOrUnitOption
          : sendFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SynchrowiseFailure, Unit>>,
      failureOrEmailOption: failureOrEmailOption == freezed
          ? _value.failureOrEmailOption
          : failureOrEmailOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, String>>,
      failureOrSubjectOption: failureOrSubjectOption == freezed
          ? _value.failureOrSubjectOption
          : failureOrSubjectOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, String>>,
      failureOrMessageOption: failureOrMessageOption == freezed
          ? _value.failureOrMessageOption
          : failureOrMessageOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, String>>,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      isSending: isSending == freezed
          ? _value.isSending
          : isSending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ContactUsStateCopyWith<$Res>
    implements $ContactUsStateCopyWith<$Res> {
  factory _$ContactUsStateCopyWith(
          _ContactUsState value, $Res Function(_ContactUsState) then) =
      __$ContactUsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<SynchrowiseFailure, Unit>> sendFailureOrUnitOption,
      Option<Either<ValueFailure, String>> failureOrEmailOption,
      Option<Either<ValueFailure, String>> failureOrSubjectOption,
      Option<Either<ValueFailure, String>> failureOrMessageOption,
      bool showErrors,
      bool isSending});
}

/// @nodoc
class __$ContactUsStateCopyWithImpl<$Res>
    extends _$ContactUsStateCopyWithImpl<$Res>
    implements _$ContactUsStateCopyWith<$Res> {
  __$ContactUsStateCopyWithImpl(
      _ContactUsState _value, $Res Function(_ContactUsState) _then)
      : super(_value, (v) => _then(v as _ContactUsState));

  @override
  _ContactUsState get _value => super._value as _ContactUsState;

  @override
  $Res call({
    Object? sendFailureOrUnitOption = freezed,
    Object? failureOrEmailOption = freezed,
    Object? failureOrSubjectOption = freezed,
    Object? failureOrMessageOption = freezed,
    Object? showErrors = freezed,
    Object? isSending = freezed,
  }) {
    return _then(_ContactUsState(
      sendFailureOrUnitOption: sendFailureOrUnitOption == freezed
          ? _value.sendFailureOrUnitOption
          : sendFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SynchrowiseFailure, Unit>>,
      failureOrEmailOption: failureOrEmailOption == freezed
          ? _value.failureOrEmailOption
          : failureOrEmailOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, String>>,
      failureOrSubjectOption: failureOrSubjectOption == freezed
          ? _value.failureOrSubjectOption
          : failureOrSubjectOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, String>>,
      failureOrMessageOption: failureOrMessageOption == freezed
          ? _value.failureOrMessageOption
          : failureOrMessageOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, String>>,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      isSending: isSending == freezed
          ? _value.isSending
          : isSending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ContactUsState implements _ContactUsState {
  const _$_ContactUsState(
      {required this.sendFailureOrUnitOption,
      required this.failureOrEmailOption,
      required this.failureOrSubjectOption,
      required this.failureOrMessageOption,
      required this.showErrors,
      required this.isSending});

  @override
  final Option<Either<SynchrowiseFailure, Unit>> sendFailureOrUnitOption;
  @override
  final Option<Either<ValueFailure, String>> failureOrEmailOption;
  @override
  final Option<Either<ValueFailure, String>> failureOrSubjectOption;
  @override
  final Option<Either<ValueFailure, String>> failureOrMessageOption;
  @override
  final bool showErrors;
  @override
  final bool isSending;

  @override
  String toString() {
    return 'ContactUsState(sendFailureOrUnitOption: $sendFailureOrUnitOption, failureOrEmailOption: $failureOrEmailOption, failureOrSubjectOption: $failureOrSubjectOption, failureOrMessageOption: $failureOrMessageOption, showErrors: $showErrors, isSending: $isSending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactUsState &&
            const DeepCollectionEquality().equals(
                other.sendFailureOrUnitOption, sendFailureOrUnitOption) &&
            const DeepCollectionEquality()
                .equals(other.failureOrEmailOption, failureOrEmailOption) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSubjectOption, failureOrSubjectOption) &&
            const DeepCollectionEquality()
                .equals(other.failureOrMessageOption, failureOrMessageOption) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality().equals(other.isSending, isSending));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sendFailureOrUnitOption),
      const DeepCollectionEquality().hash(failureOrEmailOption),
      const DeepCollectionEquality().hash(failureOrSubjectOption),
      const DeepCollectionEquality().hash(failureOrMessageOption),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(isSending));

  @JsonKey(ignore: true)
  @override
  _$ContactUsStateCopyWith<_ContactUsState> get copyWith =>
      __$ContactUsStateCopyWithImpl<_ContactUsState>(this, _$identity);
}

abstract class _ContactUsState implements ContactUsState {
  const factory _ContactUsState(
      {required Option<Either<SynchrowiseFailure, Unit>>
          sendFailureOrUnitOption,
      required Option<Either<ValueFailure, String>> failureOrEmailOption,
      required Option<Either<ValueFailure, String>> failureOrSubjectOption,
      required Option<Either<ValueFailure, String>> failureOrMessageOption,
      required bool showErrors,
      required bool isSending}) = _$_ContactUsState;

  @override
  Option<Either<SynchrowiseFailure, Unit>> get sendFailureOrUnitOption;
  @override
  Option<Either<ValueFailure, String>> get failureOrEmailOption;
  @override
  Option<Either<ValueFailure, String>> get failureOrSubjectOption;
  @override
  Option<Either<ValueFailure, String>> get failureOrMessageOption;
  @override
  bool get showErrors;
  @override
  bool get isSending;
  @override
  @JsonKey(ignore: true)
  _$ContactUsStateCopyWith<_ContactUsState> get copyWith =>
      throw _privateConstructorUsedError;
}
