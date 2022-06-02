// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateGroupEventTearOff {
  const _$CreateGroupEventTearOff();

  _CreateGroupUpdateGroupNameTextEvent updateGroupNameText(
      {required String groupName}) {
    return _CreateGroupUpdateGroupNameTextEvent(
      groupName: groupName,
    );
  }

  _CreateGroupUpdateGroupDescTextEvent updateGroupDescText(
      {required String groupDesc}) {
    return _CreateGroupUpdateGroupDescTextEvent(
      groupDesc: groupDesc,
    );
  }

  _CreateGroupSubmitGroupEvent submitGroup() {
    return const _CreateGroupSubmitGroupEvent();
  }

  _CreateGroupSaveUsernameEvent saveGroupKey() {
    return const _CreateGroupSaveUsernameEvent();
  }

  _CreateGroupGoBackEvent goBack() {
    return const _CreateGroupGoBackEvent();
  }
}

/// @nodoc
const $CreateGroupEvent = _$CreateGroupEventTearOff();

/// @nodoc
mixin _$CreateGroupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName) updateGroupNameText,
    required TResult Function(String groupDesc) updateGroupDescText,
    required TResult Function() submitGroup,
    required TResult Function() saveGroupKey,
    required TResult Function() goBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupName)? updateGroupNameText,
    TResult Function(String groupDesc)? updateGroupDescText,
    TResult Function()? submitGroup,
    TResult Function()? saveGroupKey,
    TResult Function()? goBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName)? updateGroupNameText,
    TResult Function(String groupDesc)? updateGroupDescText,
    TResult Function()? submitGroup,
    TResult Function()? saveGroupKey,
    TResult Function()? goBack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroupUpdateGroupNameTextEvent value)
        updateGroupNameText,
    required TResult Function(_CreateGroupUpdateGroupDescTextEvent value)
        updateGroupDescText,
    required TResult Function(_CreateGroupSubmitGroupEvent value) submitGroup,
    required TResult Function(_CreateGroupSaveUsernameEvent value) saveGroupKey,
    required TResult Function(_CreateGroupGoBackEvent value) goBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateGroupUpdateGroupNameTextEvent value)?
        updateGroupNameText,
    TResult Function(_CreateGroupUpdateGroupDescTextEvent value)?
        updateGroupDescText,
    TResult Function(_CreateGroupSubmitGroupEvent value)? submitGroup,
    TResult Function(_CreateGroupSaveUsernameEvent value)? saveGroupKey,
    TResult Function(_CreateGroupGoBackEvent value)? goBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroupUpdateGroupNameTextEvent value)?
        updateGroupNameText,
    TResult Function(_CreateGroupUpdateGroupDescTextEvent value)?
        updateGroupDescText,
    TResult Function(_CreateGroupSubmitGroupEvent value)? submitGroup,
    TResult Function(_CreateGroupSaveUsernameEvent value)? saveGroupKey,
    TResult Function(_CreateGroupGoBackEvent value)? goBack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGroupEventCopyWith<$Res> {
  factory $CreateGroupEventCopyWith(
          CreateGroupEvent value, $Res Function(CreateGroupEvent) then) =
      _$CreateGroupEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateGroupEventCopyWithImpl<$Res>
    implements $CreateGroupEventCopyWith<$Res> {
  _$CreateGroupEventCopyWithImpl(this._value, this._then);

  final CreateGroupEvent _value;
  // ignore: unused_field
  final $Res Function(CreateGroupEvent) _then;
}

/// @nodoc
abstract class _$CreateGroupUpdateGroupNameTextEventCopyWith<$Res> {
  factory _$CreateGroupUpdateGroupNameTextEventCopyWith(
          _CreateGroupUpdateGroupNameTextEvent value,
          $Res Function(_CreateGroupUpdateGroupNameTextEvent) then) =
      __$CreateGroupUpdateGroupNameTextEventCopyWithImpl<$Res>;
  $Res call({String groupName});
}

/// @nodoc
class __$CreateGroupUpdateGroupNameTextEventCopyWithImpl<$Res>
    extends _$CreateGroupEventCopyWithImpl<$Res>
    implements _$CreateGroupUpdateGroupNameTextEventCopyWith<$Res> {
  __$CreateGroupUpdateGroupNameTextEventCopyWithImpl(
      _CreateGroupUpdateGroupNameTextEvent _value,
      $Res Function(_CreateGroupUpdateGroupNameTextEvent) _then)
      : super(_value, (v) => _then(v as _CreateGroupUpdateGroupNameTextEvent));

  @override
  _CreateGroupUpdateGroupNameTextEvent get _value =>
      super._value as _CreateGroupUpdateGroupNameTextEvent;

  @override
  $Res call({
    Object? groupName = freezed,
  }) {
    return _then(_CreateGroupUpdateGroupNameTextEvent(
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateGroupUpdateGroupNameTextEvent
    implements _CreateGroupUpdateGroupNameTextEvent {
  const _$_CreateGroupUpdateGroupNameTextEvent({required this.groupName});

  @override
  final String groupName;

  @override
  String toString() {
    return 'CreateGroupEvent.updateGroupNameText(groupName: $groupName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateGroupUpdateGroupNameTextEvent &&
            const DeepCollectionEquality().equals(other.groupName, groupName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupName));

  @JsonKey(ignore: true)
  @override
  _$CreateGroupUpdateGroupNameTextEventCopyWith<
          _CreateGroupUpdateGroupNameTextEvent>
      get copyWith => __$CreateGroupUpdateGroupNameTextEventCopyWithImpl<
          _CreateGroupUpdateGroupNameTextEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName) updateGroupNameText,
    required TResult Function(String groupDesc) updateGroupDescText,
    required TResult Function() submitGroup,
    required TResult Function() saveGroupKey,
    required TResult Function() goBack,
  }) {
    return updateGroupNameText(groupName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupName)? updateGroupNameText,
    TResult Function(String groupDesc)? updateGroupDescText,
    TResult Function()? submitGroup,
    TResult Function()? saveGroupKey,
    TResult Function()? goBack,
  }) {
    return updateGroupNameText?.call(groupName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName)? updateGroupNameText,
    TResult Function(String groupDesc)? updateGroupDescText,
    TResult Function()? submitGroup,
    TResult Function()? saveGroupKey,
    TResult Function()? goBack,
    required TResult orElse(),
  }) {
    if (updateGroupNameText != null) {
      return updateGroupNameText(groupName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroupUpdateGroupNameTextEvent value)
        updateGroupNameText,
    required TResult Function(_CreateGroupUpdateGroupDescTextEvent value)
        updateGroupDescText,
    required TResult Function(_CreateGroupSubmitGroupEvent value) submitGroup,
    required TResult Function(_CreateGroupSaveUsernameEvent value) saveGroupKey,
    required TResult Function(_CreateGroupGoBackEvent value) goBack,
  }) {
    return updateGroupNameText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateGroupUpdateGroupNameTextEvent value)?
        updateGroupNameText,
    TResult Function(_CreateGroupUpdateGroupDescTextEvent value)?
        updateGroupDescText,
    TResult Function(_CreateGroupSubmitGroupEvent value)? submitGroup,
    TResult Function(_CreateGroupSaveUsernameEvent value)? saveGroupKey,
    TResult Function(_CreateGroupGoBackEvent value)? goBack,
  }) {
    return updateGroupNameText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroupUpdateGroupNameTextEvent value)?
        updateGroupNameText,
    TResult Function(_CreateGroupUpdateGroupDescTextEvent value)?
        updateGroupDescText,
    TResult Function(_CreateGroupSubmitGroupEvent value)? submitGroup,
    TResult Function(_CreateGroupSaveUsernameEvent value)? saveGroupKey,
    TResult Function(_CreateGroupGoBackEvent value)? goBack,
    required TResult orElse(),
  }) {
    if (updateGroupNameText != null) {
      return updateGroupNameText(this);
    }
    return orElse();
  }
}

abstract class _CreateGroupUpdateGroupNameTextEvent
    implements CreateGroupEvent {
  const factory _CreateGroupUpdateGroupNameTextEvent(
      {required String groupName}) = _$_CreateGroupUpdateGroupNameTextEvent;

  String get groupName;
  @JsonKey(ignore: true)
  _$CreateGroupUpdateGroupNameTextEventCopyWith<
          _CreateGroupUpdateGroupNameTextEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateGroupUpdateGroupDescTextEventCopyWith<$Res> {
  factory _$CreateGroupUpdateGroupDescTextEventCopyWith(
          _CreateGroupUpdateGroupDescTextEvent value,
          $Res Function(_CreateGroupUpdateGroupDescTextEvent) then) =
      __$CreateGroupUpdateGroupDescTextEventCopyWithImpl<$Res>;
  $Res call({String groupDesc});
}

/// @nodoc
class __$CreateGroupUpdateGroupDescTextEventCopyWithImpl<$Res>
    extends _$CreateGroupEventCopyWithImpl<$Res>
    implements _$CreateGroupUpdateGroupDescTextEventCopyWith<$Res> {
  __$CreateGroupUpdateGroupDescTextEventCopyWithImpl(
      _CreateGroupUpdateGroupDescTextEvent _value,
      $Res Function(_CreateGroupUpdateGroupDescTextEvent) _then)
      : super(_value, (v) => _then(v as _CreateGroupUpdateGroupDescTextEvent));

  @override
  _CreateGroupUpdateGroupDescTextEvent get _value =>
      super._value as _CreateGroupUpdateGroupDescTextEvent;

  @override
  $Res call({
    Object? groupDesc = freezed,
  }) {
    return _then(_CreateGroupUpdateGroupDescTextEvent(
      groupDesc: groupDesc == freezed
          ? _value.groupDesc
          : groupDesc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateGroupUpdateGroupDescTextEvent
    implements _CreateGroupUpdateGroupDescTextEvent {
  const _$_CreateGroupUpdateGroupDescTextEvent({required this.groupDesc});

  @override
  final String groupDesc;

  @override
  String toString() {
    return 'CreateGroupEvent.updateGroupDescText(groupDesc: $groupDesc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateGroupUpdateGroupDescTextEvent &&
            const DeepCollectionEquality().equals(other.groupDesc, groupDesc));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupDesc));

  @JsonKey(ignore: true)
  @override
  _$CreateGroupUpdateGroupDescTextEventCopyWith<
          _CreateGroupUpdateGroupDescTextEvent>
      get copyWith => __$CreateGroupUpdateGroupDescTextEventCopyWithImpl<
          _CreateGroupUpdateGroupDescTextEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName) updateGroupNameText,
    required TResult Function(String groupDesc) updateGroupDescText,
    required TResult Function() submitGroup,
    required TResult Function() saveGroupKey,
    required TResult Function() goBack,
  }) {
    return updateGroupDescText(groupDesc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupName)? updateGroupNameText,
    TResult Function(String groupDesc)? updateGroupDescText,
    TResult Function()? submitGroup,
    TResult Function()? saveGroupKey,
    TResult Function()? goBack,
  }) {
    return updateGroupDescText?.call(groupDesc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName)? updateGroupNameText,
    TResult Function(String groupDesc)? updateGroupDescText,
    TResult Function()? submitGroup,
    TResult Function()? saveGroupKey,
    TResult Function()? goBack,
    required TResult orElse(),
  }) {
    if (updateGroupDescText != null) {
      return updateGroupDescText(groupDesc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroupUpdateGroupNameTextEvent value)
        updateGroupNameText,
    required TResult Function(_CreateGroupUpdateGroupDescTextEvent value)
        updateGroupDescText,
    required TResult Function(_CreateGroupSubmitGroupEvent value) submitGroup,
    required TResult Function(_CreateGroupSaveUsernameEvent value) saveGroupKey,
    required TResult Function(_CreateGroupGoBackEvent value) goBack,
  }) {
    return updateGroupDescText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateGroupUpdateGroupNameTextEvent value)?
        updateGroupNameText,
    TResult Function(_CreateGroupUpdateGroupDescTextEvent value)?
        updateGroupDescText,
    TResult Function(_CreateGroupSubmitGroupEvent value)? submitGroup,
    TResult Function(_CreateGroupSaveUsernameEvent value)? saveGroupKey,
    TResult Function(_CreateGroupGoBackEvent value)? goBack,
  }) {
    return updateGroupDescText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroupUpdateGroupNameTextEvent value)?
        updateGroupNameText,
    TResult Function(_CreateGroupUpdateGroupDescTextEvent value)?
        updateGroupDescText,
    TResult Function(_CreateGroupSubmitGroupEvent value)? submitGroup,
    TResult Function(_CreateGroupSaveUsernameEvent value)? saveGroupKey,
    TResult Function(_CreateGroupGoBackEvent value)? goBack,
    required TResult orElse(),
  }) {
    if (updateGroupDescText != null) {
      return updateGroupDescText(this);
    }
    return orElse();
  }
}

abstract class _CreateGroupUpdateGroupDescTextEvent
    implements CreateGroupEvent {
  const factory _CreateGroupUpdateGroupDescTextEvent(
      {required String groupDesc}) = _$_CreateGroupUpdateGroupDescTextEvent;

  String get groupDesc;
  @JsonKey(ignore: true)
  _$CreateGroupUpdateGroupDescTextEventCopyWith<
          _CreateGroupUpdateGroupDescTextEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateGroupSubmitGroupEventCopyWith<$Res> {
  factory _$CreateGroupSubmitGroupEventCopyWith(
          _CreateGroupSubmitGroupEvent value,
          $Res Function(_CreateGroupSubmitGroupEvent) then) =
      __$CreateGroupSubmitGroupEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateGroupSubmitGroupEventCopyWithImpl<$Res>
    extends _$CreateGroupEventCopyWithImpl<$Res>
    implements _$CreateGroupSubmitGroupEventCopyWith<$Res> {
  __$CreateGroupSubmitGroupEventCopyWithImpl(
      _CreateGroupSubmitGroupEvent _value,
      $Res Function(_CreateGroupSubmitGroupEvent) _then)
      : super(_value, (v) => _then(v as _CreateGroupSubmitGroupEvent));

  @override
  _CreateGroupSubmitGroupEvent get _value =>
      super._value as _CreateGroupSubmitGroupEvent;
}

/// @nodoc

class _$_CreateGroupSubmitGroupEvent implements _CreateGroupSubmitGroupEvent {
  const _$_CreateGroupSubmitGroupEvent();

  @override
  String toString() {
    return 'CreateGroupEvent.submitGroup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateGroupSubmitGroupEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName) updateGroupNameText,
    required TResult Function(String groupDesc) updateGroupDescText,
    required TResult Function() submitGroup,
    required TResult Function() saveGroupKey,
    required TResult Function() goBack,
  }) {
    return submitGroup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupName)? updateGroupNameText,
    TResult Function(String groupDesc)? updateGroupDescText,
    TResult Function()? submitGroup,
    TResult Function()? saveGroupKey,
    TResult Function()? goBack,
  }) {
    return submitGroup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName)? updateGroupNameText,
    TResult Function(String groupDesc)? updateGroupDescText,
    TResult Function()? submitGroup,
    TResult Function()? saveGroupKey,
    TResult Function()? goBack,
    required TResult orElse(),
  }) {
    if (submitGroup != null) {
      return submitGroup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroupUpdateGroupNameTextEvent value)
        updateGroupNameText,
    required TResult Function(_CreateGroupUpdateGroupDescTextEvent value)
        updateGroupDescText,
    required TResult Function(_CreateGroupSubmitGroupEvent value) submitGroup,
    required TResult Function(_CreateGroupSaveUsernameEvent value) saveGroupKey,
    required TResult Function(_CreateGroupGoBackEvent value) goBack,
  }) {
    return submitGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateGroupUpdateGroupNameTextEvent value)?
        updateGroupNameText,
    TResult Function(_CreateGroupUpdateGroupDescTextEvent value)?
        updateGroupDescText,
    TResult Function(_CreateGroupSubmitGroupEvent value)? submitGroup,
    TResult Function(_CreateGroupSaveUsernameEvent value)? saveGroupKey,
    TResult Function(_CreateGroupGoBackEvent value)? goBack,
  }) {
    return submitGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroupUpdateGroupNameTextEvent value)?
        updateGroupNameText,
    TResult Function(_CreateGroupUpdateGroupDescTextEvent value)?
        updateGroupDescText,
    TResult Function(_CreateGroupSubmitGroupEvent value)? submitGroup,
    TResult Function(_CreateGroupSaveUsernameEvent value)? saveGroupKey,
    TResult Function(_CreateGroupGoBackEvent value)? goBack,
    required TResult orElse(),
  }) {
    if (submitGroup != null) {
      return submitGroup(this);
    }
    return orElse();
  }
}

abstract class _CreateGroupSubmitGroupEvent implements CreateGroupEvent {
  const factory _CreateGroupSubmitGroupEvent() = _$_CreateGroupSubmitGroupEvent;
}

/// @nodoc
abstract class _$CreateGroupSaveUsernameEventCopyWith<$Res> {
  factory _$CreateGroupSaveUsernameEventCopyWith(
          _CreateGroupSaveUsernameEvent value,
          $Res Function(_CreateGroupSaveUsernameEvent) then) =
      __$CreateGroupSaveUsernameEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateGroupSaveUsernameEventCopyWithImpl<$Res>
    extends _$CreateGroupEventCopyWithImpl<$Res>
    implements _$CreateGroupSaveUsernameEventCopyWith<$Res> {
  __$CreateGroupSaveUsernameEventCopyWithImpl(
      _CreateGroupSaveUsernameEvent _value,
      $Res Function(_CreateGroupSaveUsernameEvent) _then)
      : super(_value, (v) => _then(v as _CreateGroupSaveUsernameEvent));

  @override
  _CreateGroupSaveUsernameEvent get _value =>
      super._value as _CreateGroupSaveUsernameEvent;
}

/// @nodoc

class _$_CreateGroupSaveUsernameEvent implements _CreateGroupSaveUsernameEvent {
  const _$_CreateGroupSaveUsernameEvent();

  @override
  String toString() {
    return 'CreateGroupEvent.saveGroupKey()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateGroupSaveUsernameEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName) updateGroupNameText,
    required TResult Function(String groupDesc) updateGroupDescText,
    required TResult Function() submitGroup,
    required TResult Function() saveGroupKey,
    required TResult Function() goBack,
  }) {
    return saveGroupKey();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupName)? updateGroupNameText,
    TResult Function(String groupDesc)? updateGroupDescText,
    TResult Function()? submitGroup,
    TResult Function()? saveGroupKey,
    TResult Function()? goBack,
  }) {
    return saveGroupKey?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName)? updateGroupNameText,
    TResult Function(String groupDesc)? updateGroupDescText,
    TResult Function()? submitGroup,
    TResult Function()? saveGroupKey,
    TResult Function()? goBack,
    required TResult orElse(),
  }) {
    if (saveGroupKey != null) {
      return saveGroupKey();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroupUpdateGroupNameTextEvent value)
        updateGroupNameText,
    required TResult Function(_CreateGroupUpdateGroupDescTextEvent value)
        updateGroupDescText,
    required TResult Function(_CreateGroupSubmitGroupEvent value) submitGroup,
    required TResult Function(_CreateGroupSaveUsernameEvent value) saveGroupKey,
    required TResult Function(_CreateGroupGoBackEvent value) goBack,
  }) {
    return saveGroupKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateGroupUpdateGroupNameTextEvent value)?
        updateGroupNameText,
    TResult Function(_CreateGroupUpdateGroupDescTextEvent value)?
        updateGroupDescText,
    TResult Function(_CreateGroupSubmitGroupEvent value)? submitGroup,
    TResult Function(_CreateGroupSaveUsernameEvent value)? saveGroupKey,
    TResult Function(_CreateGroupGoBackEvent value)? goBack,
  }) {
    return saveGroupKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroupUpdateGroupNameTextEvent value)?
        updateGroupNameText,
    TResult Function(_CreateGroupUpdateGroupDescTextEvent value)?
        updateGroupDescText,
    TResult Function(_CreateGroupSubmitGroupEvent value)? submitGroup,
    TResult Function(_CreateGroupSaveUsernameEvent value)? saveGroupKey,
    TResult Function(_CreateGroupGoBackEvent value)? goBack,
    required TResult orElse(),
  }) {
    if (saveGroupKey != null) {
      return saveGroupKey(this);
    }
    return orElse();
  }
}

abstract class _CreateGroupSaveUsernameEvent implements CreateGroupEvent {
  const factory _CreateGroupSaveUsernameEvent() =
      _$_CreateGroupSaveUsernameEvent;
}

/// @nodoc
abstract class _$CreateGroupGoBackEventCopyWith<$Res> {
  factory _$CreateGroupGoBackEventCopyWith(_CreateGroupGoBackEvent value,
          $Res Function(_CreateGroupGoBackEvent) then) =
      __$CreateGroupGoBackEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateGroupGoBackEventCopyWithImpl<$Res>
    extends _$CreateGroupEventCopyWithImpl<$Res>
    implements _$CreateGroupGoBackEventCopyWith<$Res> {
  __$CreateGroupGoBackEventCopyWithImpl(_CreateGroupGoBackEvent _value,
      $Res Function(_CreateGroupGoBackEvent) _then)
      : super(_value, (v) => _then(v as _CreateGroupGoBackEvent));

  @override
  _CreateGroupGoBackEvent get _value => super._value as _CreateGroupGoBackEvent;
}

/// @nodoc

class _$_CreateGroupGoBackEvent implements _CreateGroupGoBackEvent {
  const _$_CreateGroupGoBackEvent();

  @override
  String toString() {
    return 'CreateGroupEvent.goBack()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CreateGroupGoBackEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName) updateGroupNameText,
    required TResult Function(String groupDesc) updateGroupDescText,
    required TResult Function() submitGroup,
    required TResult Function() saveGroupKey,
    required TResult Function() goBack,
  }) {
    return goBack();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupName)? updateGroupNameText,
    TResult Function(String groupDesc)? updateGroupDescText,
    TResult Function()? submitGroup,
    TResult Function()? saveGroupKey,
    TResult Function()? goBack,
  }) {
    return goBack?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName)? updateGroupNameText,
    TResult Function(String groupDesc)? updateGroupDescText,
    TResult Function()? submitGroup,
    TResult Function()? saveGroupKey,
    TResult Function()? goBack,
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
    required TResult Function(_CreateGroupUpdateGroupNameTextEvent value)
        updateGroupNameText,
    required TResult Function(_CreateGroupUpdateGroupDescTextEvent value)
        updateGroupDescText,
    required TResult Function(_CreateGroupSubmitGroupEvent value) submitGroup,
    required TResult Function(_CreateGroupSaveUsernameEvent value) saveGroupKey,
    required TResult Function(_CreateGroupGoBackEvent value) goBack,
  }) {
    return goBack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateGroupUpdateGroupNameTextEvent value)?
        updateGroupNameText,
    TResult Function(_CreateGroupUpdateGroupDescTextEvent value)?
        updateGroupDescText,
    TResult Function(_CreateGroupSubmitGroupEvent value)? submitGroup,
    TResult Function(_CreateGroupSaveUsernameEvent value)? saveGroupKey,
    TResult Function(_CreateGroupGoBackEvent value)? goBack,
  }) {
    return goBack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroupUpdateGroupNameTextEvent value)?
        updateGroupNameText,
    TResult Function(_CreateGroupUpdateGroupDescTextEvent value)?
        updateGroupDescText,
    TResult Function(_CreateGroupSubmitGroupEvent value)? submitGroup,
    TResult Function(_CreateGroupSaveUsernameEvent value)? saveGroupKey,
    TResult Function(_CreateGroupGoBackEvent value)? goBack,
    required TResult orElse(),
  }) {
    if (goBack != null) {
      return goBack(this);
    }
    return orElse();
  }
}

abstract class _CreateGroupGoBackEvent implements CreateGroupEvent {
  const factory _CreateGroupGoBackEvent() = _$_CreateGroupGoBackEvent;
}

/// @nodoc
class _$CreateGroupStateTearOff {
  const _$CreateGroupStateTearOff();

  _CreateGroupState call(
      {required Option<Either<ValueFailure, String>> failureOrGroupNameOption,
      required Option<Either<GroupRepositoryFailure, Unit>>
          submitFailureOrUnitOption,
      required Option<Either<ValueFailure, String>> failureOrGroupDescOption,
      required Option<Either<SynchrowiseUserStorageFailure, Unit>>
          storageFailureOrUnitOption,
      required bool showErrors,
      required bool progressing,
      required int step}) {
    return _CreateGroupState(
      failureOrGroupNameOption: failureOrGroupNameOption,
      submitFailureOrUnitOption: submitFailureOrUnitOption,
      failureOrGroupDescOption: failureOrGroupDescOption,
      storageFailureOrUnitOption: storageFailureOrUnitOption,
      showErrors: showErrors,
      progressing: progressing,
      step: step,
    );
  }
}

/// @nodoc
const $CreateGroupState = _$CreateGroupStateTearOff();

/// @nodoc
mixin _$CreateGroupState {
  Option<Either<ValueFailure, String>> get failureOrGroupNameOption =>
      throw _privateConstructorUsedError;
  Option<Either<GroupRepositoryFailure, Unit>> get submitFailureOrUnitOption =>
      throw _privateConstructorUsedError;
  Option<Either<ValueFailure, String>> get failureOrGroupDescOption =>
      throw _privateConstructorUsedError;
  Option<Either<SynchrowiseUserStorageFailure, Unit>>
      get storageFailureOrUnitOption => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  bool get progressing => throw _privateConstructorUsedError;
  int get step => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateGroupStateCopyWith<CreateGroupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGroupStateCopyWith<$Res> {
  factory $CreateGroupStateCopyWith(
          CreateGroupState value, $Res Function(CreateGroupState) then) =
      _$CreateGroupStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<ValueFailure, String>> failureOrGroupNameOption,
      Option<Either<GroupRepositoryFailure, Unit>> submitFailureOrUnitOption,
      Option<Either<ValueFailure, String>> failureOrGroupDescOption,
      Option<Either<SynchrowiseUserStorageFailure, Unit>>
          storageFailureOrUnitOption,
      bool showErrors,
      bool progressing,
      int step});
}

/// @nodoc
class _$CreateGroupStateCopyWithImpl<$Res>
    implements $CreateGroupStateCopyWith<$Res> {
  _$CreateGroupStateCopyWithImpl(this._value, this._then);

  final CreateGroupState _value;
  // ignore: unused_field
  final $Res Function(CreateGroupState) _then;

  @override
  $Res call({
    Object? failureOrGroupNameOption = freezed,
    Object? submitFailureOrUnitOption = freezed,
    Object? failureOrGroupDescOption = freezed,
    Object? storageFailureOrUnitOption = freezed,
    Object? showErrors = freezed,
    Object? progressing = freezed,
    Object? step = freezed,
  }) {
    return _then(_value.copyWith(
      failureOrGroupNameOption: failureOrGroupNameOption == freezed
          ? _value.failureOrGroupNameOption
          : failureOrGroupNameOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, String>>,
      submitFailureOrUnitOption: submitFailureOrUnitOption == freezed
          ? _value.submitFailureOrUnitOption
          : submitFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GroupRepositoryFailure, Unit>>,
      failureOrGroupDescOption: failureOrGroupDescOption == freezed
          ? _value.failureOrGroupDescOption
          : failureOrGroupDescOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, String>>,
      storageFailureOrUnitOption: storageFailureOrUnitOption == freezed
          ? _value.storageFailureOrUnitOption
          : storageFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SynchrowiseUserStorageFailure, Unit>>,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      progressing: progressing == freezed
          ? _value.progressing
          : progressing // ignore: cast_nullable_to_non_nullable
              as bool,
      step: step == freezed
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CreateGroupStateCopyWith<$Res>
    implements $CreateGroupStateCopyWith<$Res> {
  factory _$CreateGroupStateCopyWith(
          _CreateGroupState value, $Res Function(_CreateGroupState) then) =
      __$CreateGroupStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<ValueFailure, String>> failureOrGroupNameOption,
      Option<Either<GroupRepositoryFailure, Unit>> submitFailureOrUnitOption,
      Option<Either<ValueFailure, String>> failureOrGroupDescOption,
      Option<Either<SynchrowiseUserStorageFailure, Unit>>
          storageFailureOrUnitOption,
      bool showErrors,
      bool progressing,
      int step});
}

/// @nodoc
class __$CreateGroupStateCopyWithImpl<$Res>
    extends _$CreateGroupStateCopyWithImpl<$Res>
    implements _$CreateGroupStateCopyWith<$Res> {
  __$CreateGroupStateCopyWithImpl(
      _CreateGroupState _value, $Res Function(_CreateGroupState) _then)
      : super(_value, (v) => _then(v as _CreateGroupState));

  @override
  _CreateGroupState get _value => super._value as _CreateGroupState;

  @override
  $Res call({
    Object? failureOrGroupNameOption = freezed,
    Object? submitFailureOrUnitOption = freezed,
    Object? failureOrGroupDescOption = freezed,
    Object? storageFailureOrUnitOption = freezed,
    Object? showErrors = freezed,
    Object? progressing = freezed,
    Object? step = freezed,
  }) {
    return _then(_CreateGroupState(
      failureOrGroupNameOption: failureOrGroupNameOption == freezed
          ? _value.failureOrGroupNameOption
          : failureOrGroupNameOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, String>>,
      submitFailureOrUnitOption: submitFailureOrUnitOption == freezed
          ? _value.submitFailureOrUnitOption
          : submitFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GroupRepositoryFailure, Unit>>,
      failureOrGroupDescOption: failureOrGroupDescOption == freezed
          ? _value.failureOrGroupDescOption
          : failureOrGroupDescOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, String>>,
      storageFailureOrUnitOption: storageFailureOrUnitOption == freezed
          ? _value.storageFailureOrUnitOption
          : storageFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SynchrowiseUserStorageFailure, Unit>>,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      progressing: progressing == freezed
          ? _value.progressing
          : progressing // ignore: cast_nullable_to_non_nullable
              as bool,
      step: step == freezed
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CreateGroupState implements _CreateGroupState {
  const _$_CreateGroupState(
      {required this.failureOrGroupNameOption,
      required this.submitFailureOrUnitOption,
      required this.failureOrGroupDescOption,
      required this.storageFailureOrUnitOption,
      required this.showErrors,
      required this.progressing,
      required this.step});

  @override
  final Option<Either<ValueFailure, String>> failureOrGroupNameOption;
  @override
  final Option<Either<GroupRepositoryFailure, Unit>> submitFailureOrUnitOption;
  @override
  final Option<Either<ValueFailure, String>> failureOrGroupDescOption;
  @override
  final Option<Either<SynchrowiseUserStorageFailure, Unit>>
      storageFailureOrUnitOption;
  @override
  final bool showErrors;
  @override
  final bool progressing;
  @override
  final int step;

  @override
  String toString() {
    return 'CreateGroupState(failureOrGroupNameOption: $failureOrGroupNameOption, submitFailureOrUnitOption: $submitFailureOrUnitOption, failureOrGroupDescOption: $failureOrGroupDescOption, storageFailureOrUnitOption: $storageFailureOrUnitOption, showErrors: $showErrors, progressing: $progressing, step: $step)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateGroupState &&
            const DeepCollectionEquality().equals(
                other.failureOrGroupNameOption, failureOrGroupNameOption) &&
            const DeepCollectionEquality().equals(
                other.submitFailureOrUnitOption, submitFailureOrUnitOption) &&
            const DeepCollectionEquality().equals(
                other.failureOrGroupDescOption, failureOrGroupDescOption) &&
            const DeepCollectionEquality().equals(
                other.storageFailureOrUnitOption, storageFailureOrUnitOption) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality()
                .equals(other.progressing, progressing) &&
            const DeepCollectionEquality().equals(other.step, step));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failureOrGroupNameOption),
      const DeepCollectionEquality().hash(submitFailureOrUnitOption),
      const DeepCollectionEquality().hash(failureOrGroupDescOption),
      const DeepCollectionEquality().hash(storageFailureOrUnitOption),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(progressing),
      const DeepCollectionEquality().hash(step));

  @JsonKey(ignore: true)
  @override
  _$CreateGroupStateCopyWith<_CreateGroupState> get copyWith =>
      __$CreateGroupStateCopyWithImpl<_CreateGroupState>(this, _$identity);
}

abstract class _CreateGroupState implements CreateGroupState {
  const factory _CreateGroupState(
      {required Option<Either<ValueFailure, String>> failureOrGroupNameOption,
      required Option<Either<GroupRepositoryFailure, Unit>>
          submitFailureOrUnitOption,
      required Option<Either<ValueFailure, String>> failureOrGroupDescOption,
      required Option<Either<SynchrowiseUserStorageFailure, Unit>>
          storageFailureOrUnitOption,
      required bool showErrors,
      required bool progressing,
      required int step}) = _$_CreateGroupState;

  @override
  Option<Either<ValueFailure, String>> get failureOrGroupNameOption;
  @override
  Option<Either<GroupRepositoryFailure, Unit>> get submitFailureOrUnitOption;
  @override
  Option<Either<ValueFailure, String>> get failureOrGroupDescOption;
  @override
  Option<Either<SynchrowiseUserStorageFailure, Unit>>
      get storageFailureOrUnitOption;
  @override
  bool get showErrors;
  @override
  bool get progressing;
  @override
  int get step;
  @override
  @JsonKey(ignore: true)
  _$CreateGroupStateCopyWith<_CreateGroupState> get copyWith =>
      throw _privateConstructorUsedError;
}
