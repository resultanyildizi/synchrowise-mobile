// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'join_group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JoinGroupEventTearOff {
  const _$JoinGroupEventTearOff();

  _UpdateGroupKeyTextEvent updateGroupKeyText({required String groupKey}) {
    return _UpdateGroupKeyTextEvent(
      groupKey: groupKey,
    );
  }

  _SubmitGroupEvent submit() {
    return const _SubmitGroupEvent();
  }
}

/// @nodoc
const $JoinGroupEvent = _$JoinGroupEventTearOff();

/// @nodoc
mixin _$JoinGroupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupKey) updateGroupKeyText,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupKey)? updateGroupKeyText,
    TResult Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupKey)? updateGroupKeyText,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateGroupKeyTextEvent value)
        updateGroupKeyText,
    required TResult Function(_SubmitGroupEvent value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateGroupKeyTextEvent value)? updateGroupKeyText,
    TResult Function(_SubmitGroupEvent value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateGroupKeyTextEvent value)? updateGroupKeyText,
    TResult Function(_SubmitGroupEvent value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinGroupEventCopyWith<$Res> {
  factory $JoinGroupEventCopyWith(
          JoinGroupEvent value, $Res Function(JoinGroupEvent) then) =
      _$JoinGroupEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$JoinGroupEventCopyWithImpl<$Res>
    implements $JoinGroupEventCopyWith<$Res> {
  _$JoinGroupEventCopyWithImpl(this._value, this._then);

  final JoinGroupEvent _value;
  // ignore: unused_field
  final $Res Function(JoinGroupEvent) _then;
}

/// @nodoc
abstract class _$UpdateGroupKeyTextEventCopyWith<$Res> {
  factory _$UpdateGroupKeyTextEventCopyWith(_UpdateGroupKeyTextEvent value,
          $Res Function(_UpdateGroupKeyTextEvent) then) =
      __$UpdateGroupKeyTextEventCopyWithImpl<$Res>;
  $Res call({String groupKey});
}

/// @nodoc
class __$UpdateGroupKeyTextEventCopyWithImpl<$Res>
    extends _$JoinGroupEventCopyWithImpl<$Res>
    implements _$UpdateGroupKeyTextEventCopyWith<$Res> {
  __$UpdateGroupKeyTextEventCopyWithImpl(_UpdateGroupKeyTextEvent _value,
      $Res Function(_UpdateGroupKeyTextEvent) _then)
      : super(_value, (v) => _then(v as _UpdateGroupKeyTextEvent));

  @override
  _UpdateGroupKeyTextEvent get _value =>
      super._value as _UpdateGroupKeyTextEvent;

  @override
  $Res call({
    Object? groupKey = freezed,
  }) {
    return _then(_UpdateGroupKeyTextEvent(
      groupKey: groupKey == freezed
          ? _value.groupKey
          : groupKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateGroupKeyTextEvent implements _UpdateGroupKeyTextEvent {
  const _$_UpdateGroupKeyTextEvent({required this.groupKey});

  @override
  final String groupKey;

  @override
  String toString() {
    return 'JoinGroupEvent.updateGroupKeyText(groupKey: $groupKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateGroupKeyTextEvent &&
            const DeepCollectionEquality().equals(other.groupKey, groupKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupKey));

  @JsonKey(ignore: true)
  @override
  _$UpdateGroupKeyTextEventCopyWith<_UpdateGroupKeyTextEvent> get copyWith =>
      __$UpdateGroupKeyTextEventCopyWithImpl<_UpdateGroupKeyTextEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupKey) updateGroupKeyText,
    required TResult Function() submit,
  }) {
    return updateGroupKeyText(groupKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupKey)? updateGroupKeyText,
    TResult Function()? submit,
  }) {
    return updateGroupKeyText?.call(groupKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupKey)? updateGroupKeyText,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (updateGroupKeyText != null) {
      return updateGroupKeyText(groupKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateGroupKeyTextEvent value)
        updateGroupKeyText,
    required TResult Function(_SubmitGroupEvent value) submit,
  }) {
    return updateGroupKeyText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateGroupKeyTextEvent value)? updateGroupKeyText,
    TResult Function(_SubmitGroupEvent value)? submit,
  }) {
    return updateGroupKeyText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateGroupKeyTextEvent value)? updateGroupKeyText,
    TResult Function(_SubmitGroupEvent value)? submit,
    required TResult orElse(),
  }) {
    if (updateGroupKeyText != null) {
      return updateGroupKeyText(this);
    }
    return orElse();
  }
}

abstract class _UpdateGroupKeyTextEvent implements JoinGroupEvent {
  const factory _UpdateGroupKeyTextEvent({required String groupKey}) =
      _$_UpdateGroupKeyTextEvent;

  String get groupKey;
  @JsonKey(ignore: true)
  _$UpdateGroupKeyTextEventCopyWith<_UpdateGroupKeyTextEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmitGroupEventCopyWith<$Res> {
  factory _$SubmitGroupEventCopyWith(
          _SubmitGroupEvent value, $Res Function(_SubmitGroupEvent) then) =
      __$SubmitGroupEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitGroupEventCopyWithImpl<$Res>
    extends _$JoinGroupEventCopyWithImpl<$Res>
    implements _$SubmitGroupEventCopyWith<$Res> {
  __$SubmitGroupEventCopyWithImpl(
      _SubmitGroupEvent _value, $Res Function(_SubmitGroupEvent) _then)
      : super(_value, (v) => _then(v as _SubmitGroupEvent));

  @override
  _SubmitGroupEvent get _value => super._value as _SubmitGroupEvent;
}

/// @nodoc

class _$_SubmitGroupEvent implements _SubmitGroupEvent {
  const _$_SubmitGroupEvent();

  @override
  String toString() {
    return 'JoinGroupEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SubmitGroupEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupKey) updateGroupKeyText,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupKey)? updateGroupKeyText,
    TResult Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupKey)? updateGroupKeyText,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateGroupKeyTextEvent value)
        updateGroupKeyText,
    required TResult Function(_SubmitGroupEvent value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateGroupKeyTextEvent value)? updateGroupKeyText,
    TResult Function(_SubmitGroupEvent value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateGroupKeyTextEvent value)? updateGroupKeyText,
    TResult Function(_SubmitGroupEvent value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _SubmitGroupEvent implements JoinGroupEvent {
  const factory _SubmitGroupEvent() = _$_SubmitGroupEvent;
}

/// @nodoc
class _$JoinGroupStateTearOff {
  const _$JoinGroupStateTearOff();

  _JoinGroupState call(
      {required Option<Either<ValueFailure, String>> failureOrGroupKeyOption,
      required Option<Either<GroupRepositoryFailure, GroupData>>
          joinFailureOrGroupDataOption,
      required Option<Either<SynchrowiseUserStorageFailure, Unit>>
          storageFailureOrUnitOption,
      required bool showErrors,
      required bool isSubmitting}) {
    return _JoinGroupState(
      failureOrGroupKeyOption: failureOrGroupKeyOption,
      joinFailureOrGroupDataOption: joinFailureOrGroupDataOption,
      storageFailureOrUnitOption: storageFailureOrUnitOption,
      showErrors: showErrors,
      isSubmitting: isSubmitting,
    );
  }
}

/// @nodoc
const $JoinGroupState = _$JoinGroupStateTearOff();

/// @nodoc
mixin _$JoinGroupState {
  Option<Either<ValueFailure, String>> get failureOrGroupKeyOption =>
      throw _privateConstructorUsedError;
  Option<Either<GroupRepositoryFailure, GroupData>>
      get joinFailureOrGroupDataOption => throw _privateConstructorUsedError;
  Option<Either<SynchrowiseUserStorageFailure, Unit>>
      get storageFailureOrUnitOption => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JoinGroupStateCopyWith<JoinGroupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinGroupStateCopyWith<$Res> {
  factory $JoinGroupStateCopyWith(
          JoinGroupState value, $Res Function(JoinGroupState) then) =
      _$JoinGroupStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<ValueFailure, String>> failureOrGroupKeyOption,
      Option<Either<GroupRepositoryFailure, GroupData>>
          joinFailureOrGroupDataOption,
      Option<Either<SynchrowiseUserStorageFailure, Unit>>
          storageFailureOrUnitOption,
      bool showErrors,
      bool isSubmitting});
}

/// @nodoc
class _$JoinGroupStateCopyWithImpl<$Res>
    implements $JoinGroupStateCopyWith<$Res> {
  _$JoinGroupStateCopyWithImpl(this._value, this._then);

  final JoinGroupState _value;
  // ignore: unused_field
  final $Res Function(JoinGroupState) _then;

  @override
  $Res call({
    Object? failureOrGroupKeyOption = freezed,
    Object? joinFailureOrGroupDataOption = freezed,
    Object? storageFailureOrUnitOption = freezed,
    Object? showErrors = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      failureOrGroupKeyOption: failureOrGroupKeyOption == freezed
          ? _value.failureOrGroupKeyOption
          : failureOrGroupKeyOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, String>>,
      joinFailureOrGroupDataOption: joinFailureOrGroupDataOption == freezed
          ? _value.joinFailureOrGroupDataOption
          : joinFailureOrGroupDataOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GroupRepositoryFailure, GroupData>>,
      storageFailureOrUnitOption: storageFailureOrUnitOption == freezed
          ? _value.storageFailureOrUnitOption
          : storageFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SynchrowiseUserStorageFailure, Unit>>,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$JoinGroupStateCopyWith<$Res>
    implements $JoinGroupStateCopyWith<$Res> {
  factory _$JoinGroupStateCopyWith(
          _JoinGroupState value, $Res Function(_JoinGroupState) then) =
      __$JoinGroupStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<ValueFailure, String>> failureOrGroupKeyOption,
      Option<Either<GroupRepositoryFailure, GroupData>>
          joinFailureOrGroupDataOption,
      Option<Either<SynchrowiseUserStorageFailure, Unit>>
          storageFailureOrUnitOption,
      bool showErrors,
      bool isSubmitting});
}

/// @nodoc
class __$JoinGroupStateCopyWithImpl<$Res>
    extends _$JoinGroupStateCopyWithImpl<$Res>
    implements _$JoinGroupStateCopyWith<$Res> {
  __$JoinGroupStateCopyWithImpl(
      _JoinGroupState _value, $Res Function(_JoinGroupState) _then)
      : super(_value, (v) => _then(v as _JoinGroupState));

  @override
  _JoinGroupState get _value => super._value as _JoinGroupState;

  @override
  $Res call({
    Object? failureOrGroupKeyOption = freezed,
    Object? joinFailureOrGroupDataOption = freezed,
    Object? storageFailureOrUnitOption = freezed,
    Object? showErrors = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_JoinGroupState(
      failureOrGroupKeyOption: failureOrGroupKeyOption == freezed
          ? _value.failureOrGroupKeyOption
          : failureOrGroupKeyOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, String>>,
      joinFailureOrGroupDataOption: joinFailureOrGroupDataOption == freezed
          ? _value.joinFailureOrGroupDataOption
          : joinFailureOrGroupDataOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GroupRepositoryFailure, GroupData>>,
      storageFailureOrUnitOption: storageFailureOrUnitOption == freezed
          ? _value.storageFailureOrUnitOption
          : storageFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SynchrowiseUserStorageFailure, Unit>>,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_JoinGroupState implements _JoinGroupState {
  const _$_JoinGroupState(
      {required this.failureOrGroupKeyOption,
      required this.joinFailureOrGroupDataOption,
      required this.storageFailureOrUnitOption,
      required this.showErrors,
      required this.isSubmitting});

  @override
  final Option<Either<ValueFailure, String>> failureOrGroupKeyOption;
  @override
  final Option<Either<GroupRepositoryFailure, GroupData>>
      joinFailureOrGroupDataOption;
  @override
  final Option<Either<SynchrowiseUserStorageFailure, Unit>>
      storageFailureOrUnitOption;
  @override
  final bool showErrors;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'JoinGroupState(failureOrGroupKeyOption: $failureOrGroupKeyOption, joinFailureOrGroupDataOption: $joinFailureOrGroupDataOption, storageFailureOrUnitOption: $storageFailureOrUnitOption, showErrors: $showErrors, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JoinGroupState &&
            const DeepCollectionEquality().equals(
                other.failureOrGroupKeyOption, failureOrGroupKeyOption) &&
            const DeepCollectionEquality().equals(
                other.joinFailureOrGroupDataOption,
                joinFailureOrGroupDataOption) &&
            const DeepCollectionEquality().equals(
                other.storageFailureOrUnitOption, storageFailureOrUnitOption) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failureOrGroupKeyOption),
      const DeepCollectionEquality().hash(joinFailureOrGroupDataOption),
      const DeepCollectionEquality().hash(storageFailureOrUnitOption),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(isSubmitting));

  @JsonKey(ignore: true)
  @override
  _$JoinGroupStateCopyWith<_JoinGroupState> get copyWith =>
      __$JoinGroupStateCopyWithImpl<_JoinGroupState>(this, _$identity);
}

abstract class _JoinGroupState implements JoinGroupState {
  const factory _JoinGroupState(
      {required Option<Either<ValueFailure, String>> failureOrGroupKeyOption,
      required Option<Either<GroupRepositoryFailure, GroupData>>
          joinFailureOrGroupDataOption,
      required Option<Either<SynchrowiseUserStorageFailure, Unit>>
          storageFailureOrUnitOption,
      required bool showErrors,
      required bool isSubmitting}) = _$_JoinGroupState;

  @override
  Option<Either<ValueFailure, String>> get failureOrGroupKeyOption;
  @override
  Option<Either<GroupRepositoryFailure, GroupData>>
      get joinFailureOrGroupDataOption;
  @override
  Option<Either<SynchrowiseUserStorageFailure, Unit>>
      get storageFailureOrUnitOption;
  @override
  bool get showErrors;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$JoinGroupStateCopyWith<_JoinGroupState> get copyWith =>
      throw _privateConstructorUsedError;
}
