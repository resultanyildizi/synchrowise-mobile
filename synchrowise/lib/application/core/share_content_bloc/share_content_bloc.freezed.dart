// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'share_content_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShareContentEventTearOff {
  const _$ShareContentEventTearOff();

  _ShareEvent share({required String text, String? subject}) {
    return _ShareEvent(
      text: text,
      subject: subject,
    );
  }
}

/// @nodoc
const $ShareContentEvent = _$ShareContentEventTearOff();

/// @nodoc
mixin _$ShareContentEvent {
  String get text => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String? subject) share,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, String? subject)? share,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String? subject)? share,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShareEvent value) share,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShareEvent value)? share,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShareEvent value)? share,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShareContentEventCopyWith<ShareContentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareContentEventCopyWith<$Res> {
  factory $ShareContentEventCopyWith(
          ShareContentEvent value, $Res Function(ShareContentEvent) then) =
      _$ShareContentEventCopyWithImpl<$Res>;
  $Res call({String text, String? subject});
}

/// @nodoc
class _$ShareContentEventCopyWithImpl<$Res>
    implements $ShareContentEventCopyWith<$Res> {
  _$ShareContentEventCopyWithImpl(this._value, this._then);

  final ShareContentEvent _value;
  // ignore: unused_field
  final $Res Function(ShareContentEvent) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? subject = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ShareEventCopyWith<$Res>
    implements $ShareContentEventCopyWith<$Res> {
  factory _$ShareEventCopyWith(
          _ShareEvent value, $Res Function(_ShareEvent) then) =
      __$ShareEventCopyWithImpl<$Res>;
  @override
  $Res call({String text, String? subject});
}

/// @nodoc
class __$ShareEventCopyWithImpl<$Res>
    extends _$ShareContentEventCopyWithImpl<$Res>
    implements _$ShareEventCopyWith<$Res> {
  __$ShareEventCopyWithImpl(
      _ShareEvent _value, $Res Function(_ShareEvent) _then)
      : super(_value, (v) => _then(v as _ShareEvent));

  @override
  _ShareEvent get _value => super._value as _ShareEvent;

  @override
  $Res call({
    Object? text = freezed,
    Object? subject = freezed,
  }) {
    return _then(_ShareEvent(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ShareEvent implements _ShareEvent {
  const _$_ShareEvent({required this.text, this.subject});

  @override
  final String text;
  @override
  final String? subject;

  @override
  String toString() {
    return 'ShareContentEvent.share(text: $text, subject: $subject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShareEvent &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.subject, subject));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(subject));

  @JsonKey(ignore: true)
  @override
  _$ShareEventCopyWith<_ShareEvent> get copyWith =>
      __$ShareEventCopyWithImpl<_ShareEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String? subject) share,
  }) {
    return share(text, subject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, String? subject)? share,
  }) {
    return share?.call(text, subject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String? subject)? share,
    required TResult orElse(),
  }) {
    if (share != null) {
      return share(text, subject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShareEvent value) share,
  }) {
    return share(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShareEvent value)? share,
  }) {
    return share?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShareEvent value)? share,
    required TResult orElse(),
  }) {
    if (share != null) {
      return share(this);
    }
    return orElse();
  }
}

abstract class _ShareEvent implements ShareContentEvent {
  const factory _ShareEvent({required String text, String? subject}) =
      _$_ShareEvent;

  @override
  String get text;
  @override
  String? get subject;
  @override
  @JsonKey(ignore: true)
  _$ShareEventCopyWith<_ShareEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ShareContentStateTearOff {
  const _$ShareContentStateTearOff();

  _ShareContentState call(
      {required Option<Either<ShareFailure, Unit>> failureOrUnitOption}) {
    return _ShareContentState(
      failureOrUnitOption: failureOrUnitOption,
    );
  }
}

/// @nodoc
const $ShareContentState = _$ShareContentStateTearOff();

/// @nodoc
mixin _$ShareContentState {
  Option<Either<ShareFailure, Unit>> get failureOrUnitOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShareContentStateCopyWith<ShareContentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareContentStateCopyWith<$Res> {
  factory $ShareContentStateCopyWith(
          ShareContentState value, $Res Function(ShareContentState) then) =
      _$ShareContentStateCopyWithImpl<$Res>;
  $Res call({Option<Either<ShareFailure, Unit>> failureOrUnitOption});
}

/// @nodoc
class _$ShareContentStateCopyWithImpl<$Res>
    implements $ShareContentStateCopyWith<$Res> {
  _$ShareContentStateCopyWithImpl(this._value, this._then);

  final ShareContentState _value;
  // ignore: unused_field
  final $Res Function(ShareContentState) _then;

  @override
  $Res call({
    Object? failureOrUnitOption = freezed,
  }) {
    return _then(_value.copyWith(
      failureOrUnitOption: failureOrUnitOption == freezed
          ? _value.failureOrUnitOption
          : failureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ShareFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$ShareContentStateCopyWith<$Res>
    implements $ShareContentStateCopyWith<$Res> {
  factory _$ShareContentStateCopyWith(
          _ShareContentState value, $Res Function(_ShareContentState) then) =
      __$ShareContentStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<Either<ShareFailure, Unit>> failureOrUnitOption});
}

/// @nodoc
class __$ShareContentStateCopyWithImpl<$Res>
    extends _$ShareContentStateCopyWithImpl<$Res>
    implements _$ShareContentStateCopyWith<$Res> {
  __$ShareContentStateCopyWithImpl(
      _ShareContentState _value, $Res Function(_ShareContentState) _then)
      : super(_value, (v) => _then(v as _ShareContentState));

  @override
  _ShareContentState get _value => super._value as _ShareContentState;

  @override
  $Res call({
    Object? failureOrUnitOption = freezed,
  }) {
    return _then(_ShareContentState(
      failureOrUnitOption: failureOrUnitOption == freezed
          ? _value.failureOrUnitOption
          : failureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ShareFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ShareContentState implements _ShareContentState {
  const _$_ShareContentState({required this.failureOrUnitOption});

  @override
  final Option<Either<ShareFailure, Unit>> failureOrUnitOption;

  @override
  String toString() {
    return 'ShareContentState(failureOrUnitOption: $failureOrUnitOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShareContentState &&
            const DeepCollectionEquality()
                .equals(other.failureOrUnitOption, failureOrUnitOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrUnitOption));

  @JsonKey(ignore: true)
  @override
  _$ShareContentStateCopyWith<_ShareContentState> get copyWith =>
      __$ShareContentStateCopyWithImpl<_ShareContentState>(this, _$identity);
}

abstract class _ShareContentState implements ShareContentState {
  const factory _ShareContentState(
          {required Option<Either<ShareFailure, Unit>> failureOrUnitOption}) =
      _$_ShareContentState;

  @override
  Option<Either<ShareFailure, Unit>> get failureOrUnitOption;
  @override
  @JsonKey(ignore: true)
  _$ShareContentStateCopyWith<_ShareContentState> get copyWith =>
      throw _privateConstructorUsedError;
}
