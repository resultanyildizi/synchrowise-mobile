// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_session_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupSessionEventTearOff {
  const _$GroupSessionEventTearOff();

  _InitEvent init({required GroupData groupData}) {
    return _InitEvent(
      groupData: groupData,
    );
  }

  _UploadMediaEvent uploadMedia({required GroupData groupData}) {
    return _UploadMediaEvent(
      groupData: groupData,
    );
  }

  _RemoveMediaEvent removeMedia() {
    return _RemoveMediaEvent();
  }

  _LeaveGroupEvent leaveGroup({required GroupData groupData}) {
    return _LeaveGroupEvent(
      groupData: groupData,
    );
  }

  _DeleteMemberEvent deleteMember(
      {required GroupData groupData, required UserSummary member}) {
    return _DeleteMemberEvent(
      groupData: groupData,
      member: member,
    );
  }

  _DeleteGroupEvent deleteGroup({required GroupData groupData}) {
    return _DeleteGroupEvent(
      groupData: groupData,
    );
  }

  _PlayMediaEvent playMedia() {
    return _PlayMediaEvent();
  }

  _PauseMediaEvent pauseMedia() {
    return _PauseMediaEvent();
  }

  _SeekMediaEvent seekMedia() {
    return _SeekMediaEvent();
  }

  _UserLeftEvent userLeft({required UserLeftSM message}) {
    return _UserLeftEvent(
      message: message,
    );
  }

  _UserJoinedEvent userJoined({required UserJoinedSM message}) {
    return _UserJoinedEvent(
      message: message,
    );
  }

  _GroupFileUploadedEvent groupFileUploaded(
      {required GroupFileUploadedSM message}) {
    return _GroupFileUploadedEvent(
      message: message,
    );
  }
}

/// @nodoc
const $GroupSessionEvent = _$GroupSessionEventTearOff();

/// @nodoc
mixin _$GroupSessionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupData groupData) init,
    required TResult Function(GroupData groupData) uploadMedia,
    required TResult Function() removeMedia,
    required TResult Function(GroupData groupData) leaveGroup,
    required TResult Function(GroupData groupData, UserSummary member)
        deleteMember,
    required TResult Function(GroupData groupData) deleteGroup,
    required TResult Function() playMedia,
    required TResult Function() pauseMedia,
    required TResult Function() seekMedia,
    required TResult Function(UserLeftSM message) userLeft,
    required TResult Function(UserJoinedSM message) userJoined,
    required TResult Function(GroupFileUploadedSM message) groupFileUploaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_UploadMediaEvent value) uploadMedia,
    required TResult Function(_RemoveMediaEvent value) removeMedia,
    required TResult Function(_LeaveGroupEvent value) leaveGroup,
    required TResult Function(_DeleteMemberEvent value) deleteMember,
    required TResult Function(_DeleteGroupEvent value) deleteGroup,
    required TResult Function(_PlayMediaEvent value) playMedia,
    required TResult Function(_PauseMediaEvent value) pauseMedia,
    required TResult Function(_SeekMediaEvent value) seekMedia,
    required TResult Function(_UserLeftEvent value) userLeft,
    required TResult Function(_UserJoinedEvent value) userJoined,
    required TResult Function(_GroupFileUploadedEvent value) groupFileUploaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupSessionEventCopyWith<$Res> {
  factory $GroupSessionEventCopyWith(
          GroupSessionEvent value, $Res Function(GroupSessionEvent) then) =
      _$GroupSessionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupSessionEventCopyWithImpl<$Res>
    implements $GroupSessionEventCopyWith<$Res> {
  _$GroupSessionEventCopyWithImpl(this._value, this._then);

  final GroupSessionEvent _value;
  // ignore: unused_field
  final $Res Function(GroupSessionEvent) _then;
}

/// @nodoc
abstract class _$InitEventCopyWith<$Res> {
  factory _$InitEventCopyWith(
          _InitEvent value, $Res Function(_InitEvent) then) =
      __$InitEventCopyWithImpl<$Res>;
  $Res call({GroupData groupData});
}

/// @nodoc
class __$InitEventCopyWithImpl<$Res>
    extends _$GroupSessionEventCopyWithImpl<$Res>
    implements _$InitEventCopyWith<$Res> {
  __$InitEventCopyWithImpl(_InitEvent _value, $Res Function(_InitEvent) _then)
      : super(_value, (v) => _then(v as _InitEvent));

  @override
  _InitEvent get _value => super._value as _InitEvent;

  @override
  $Res call({
    Object? groupData = freezed,
  }) {
    return _then(_InitEvent(
      groupData: groupData == freezed
          ? _value.groupData
          : groupData // ignore: cast_nullable_to_non_nullable
              as GroupData,
    ));
  }
}

/// @nodoc

class _$_InitEvent implements _InitEvent {
  _$_InitEvent({required this.groupData});

  @override
  final GroupData groupData;

  @override
  String toString() {
    return 'GroupSessionEvent.init(groupData: $groupData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InitEvent &&
            const DeepCollectionEquality().equals(other.groupData, groupData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupData));

  @JsonKey(ignore: true)
  @override
  _$InitEventCopyWith<_InitEvent> get copyWith =>
      __$InitEventCopyWithImpl<_InitEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupData groupData) init,
    required TResult Function(GroupData groupData) uploadMedia,
    required TResult Function() removeMedia,
    required TResult Function(GroupData groupData) leaveGroup,
    required TResult Function(GroupData groupData, UserSummary member)
        deleteMember,
    required TResult Function(GroupData groupData) deleteGroup,
    required TResult Function() playMedia,
    required TResult Function() pauseMedia,
    required TResult Function() seekMedia,
    required TResult Function(UserLeftSM message) userLeft,
    required TResult Function(UserJoinedSM message) userJoined,
    required TResult Function(GroupFileUploadedSM message) groupFileUploaded,
  }) {
    return init(groupData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
  }) {
    return init?.call(groupData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(groupData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_UploadMediaEvent value) uploadMedia,
    required TResult Function(_RemoveMediaEvent value) removeMedia,
    required TResult Function(_LeaveGroupEvent value) leaveGroup,
    required TResult Function(_DeleteMemberEvent value) deleteMember,
    required TResult Function(_DeleteGroupEvent value) deleteGroup,
    required TResult Function(_PlayMediaEvent value) playMedia,
    required TResult Function(_PauseMediaEvent value) pauseMedia,
    required TResult Function(_SeekMediaEvent value) seekMedia,
    required TResult Function(_UserLeftEvent value) userLeft,
    required TResult Function(_UserJoinedEvent value) userJoined,
    required TResult Function(_GroupFileUploadedEvent value) groupFileUploaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitEvent implements GroupSessionEvent {
  factory _InitEvent({required GroupData groupData}) = _$_InitEvent;

  GroupData get groupData;
  @JsonKey(ignore: true)
  _$InitEventCopyWith<_InitEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UploadMediaEventCopyWith<$Res> {
  factory _$UploadMediaEventCopyWith(
          _UploadMediaEvent value, $Res Function(_UploadMediaEvent) then) =
      __$UploadMediaEventCopyWithImpl<$Res>;
  $Res call({GroupData groupData});
}

/// @nodoc
class __$UploadMediaEventCopyWithImpl<$Res>
    extends _$GroupSessionEventCopyWithImpl<$Res>
    implements _$UploadMediaEventCopyWith<$Res> {
  __$UploadMediaEventCopyWithImpl(
      _UploadMediaEvent _value, $Res Function(_UploadMediaEvent) _then)
      : super(_value, (v) => _then(v as _UploadMediaEvent));

  @override
  _UploadMediaEvent get _value => super._value as _UploadMediaEvent;

  @override
  $Res call({
    Object? groupData = freezed,
  }) {
    return _then(_UploadMediaEvent(
      groupData: groupData == freezed
          ? _value.groupData
          : groupData // ignore: cast_nullable_to_non_nullable
              as GroupData,
    ));
  }
}

/// @nodoc

class _$_UploadMediaEvent implements _UploadMediaEvent {
  _$_UploadMediaEvent({required this.groupData});

  @override
  final GroupData groupData;

  @override
  String toString() {
    return 'GroupSessionEvent.uploadMedia(groupData: $groupData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UploadMediaEvent &&
            const DeepCollectionEquality().equals(other.groupData, groupData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupData));

  @JsonKey(ignore: true)
  @override
  _$UploadMediaEventCopyWith<_UploadMediaEvent> get copyWith =>
      __$UploadMediaEventCopyWithImpl<_UploadMediaEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupData groupData) init,
    required TResult Function(GroupData groupData) uploadMedia,
    required TResult Function() removeMedia,
    required TResult Function(GroupData groupData) leaveGroup,
    required TResult Function(GroupData groupData, UserSummary member)
        deleteMember,
    required TResult Function(GroupData groupData) deleteGroup,
    required TResult Function() playMedia,
    required TResult Function() pauseMedia,
    required TResult Function() seekMedia,
    required TResult Function(UserLeftSM message) userLeft,
    required TResult Function(UserJoinedSM message) userJoined,
    required TResult Function(GroupFileUploadedSM message) groupFileUploaded,
  }) {
    return uploadMedia(groupData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
  }) {
    return uploadMedia?.call(groupData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (uploadMedia != null) {
      return uploadMedia(groupData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_UploadMediaEvent value) uploadMedia,
    required TResult Function(_RemoveMediaEvent value) removeMedia,
    required TResult Function(_LeaveGroupEvent value) leaveGroup,
    required TResult Function(_DeleteMemberEvent value) deleteMember,
    required TResult Function(_DeleteGroupEvent value) deleteGroup,
    required TResult Function(_PlayMediaEvent value) playMedia,
    required TResult Function(_PauseMediaEvent value) pauseMedia,
    required TResult Function(_SeekMediaEvent value) seekMedia,
    required TResult Function(_UserLeftEvent value) userLeft,
    required TResult Function(_UserJoinedEvent value) userJoined,
    required TResult Function(_GroupFileUploadedEvent value) groupFileUploaded,
  }) {
    return uploadMedia(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
  }) {
    return uploadMedia?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (uploadMedia != null) {
      return uploadMedia(this);
    }
    return orElse();
  }
}

abstract class _UploadMediaEvent implements GroupSessionEvent {
  factory _UploadMediaEvent({required GroupData groupData}) =
      _$_UploadMediaEvent;

  GroupData get groupData;
  @JsonKey(ignore: true)
  _$UploadMediaEventCopyWith<_UploadMediaEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveMediaEventCopyWith<$Res> {
  factory _$RemoveMediaEventCopyWith(
          _RemoveMediaEvent value, $Res Function(_RemoveMediaEvent) then) =
      __$RemoveMediaEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$RemoveMediaEventCopyWithImpl<$Res>
    extends _$GroupSessionEventCopyWithImpl<$Res>
    implements _$RemoveMediaEventCopyWith<$Res> {
  __$RemoveMediaEventCopyWithImpl(
      _RemoveMediaEvent _value, $Res Function(_RemoveMediaEvent) _then)
      : super(_value, (v) => _then(v as _RemoveMediaEvent));

  @override
  _RemoveMediaEvent get _value => super._value as _RemoveMediaEvent;
}

/// @nodoc

class _$_RemoveMediaEvent implements _RemoveMediaEvent {
  _$_RemoveMediaEvent();

  @override
  String toString() {
    return 'GroupSessionEvent.removeMedia()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RemoveMediaEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupData groupData) init,
    required TResult Function(GroupData groupData) uploadMedia,
    required TResult Function() removeMedia,
    required TResult Function(GroupData groupData) leaveGroup,
    required TResult Function(GroupData groupData, UserSummary member)
        deleteMember,
    required TResult Function(GroupData groupData) deleteGroup,
    required TResult Function() playMedia,
    required TResult Function() pauseMedia,
    required TResult Function() seekMedia,
    required TResult Function(UserLeftSM message) userLeft,
    required TResult Function(UserJoinedSM message) userJoined,
    required TResult Function(GroupFileUploadedSM message) groupFileUploaded,
  }) {
    return removeMedia();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
  }) {
    return removeMedia?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (removeMedia != null) {
      return removeMedia();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_UploadMediaEvent value) uploadMedia,
    required TResult Function(_RemoveMediaEvent value) removeMedia,
    required TResult Function(_LeaveGroupEvent value) leaveGroup,
    required TResult Function(_DeleteMemberEvent value) deleteMember,
    required TResult Function(_DeleteGroupEvent value) deleteGroup,
    required TResult Function(_PlayMediaEvent value) playMedia,
    required TResult Function(_PauseMediaEvent value) pauseMedia,
    required TResult Function(_SeekMediaEvent value) seekMedia,
    required TResult Function(_UserLeftEvent value) userLeft,
    required TResult Function(_UserJoinedEvent value) userJoined,
    required TResult Function(_GroupFileUploadedEvent value) groupFileUploaded,
  }) {
    return removeMedia(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
  }) {
    return removeMedia?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (removeMedia != null) {
      return removeMedia(this);
    }
    return orElse();
  }
}

abstract class _RemoveMediaEvent implements GroupSessionEvent {
  factory _RemoveMediaEvent() = _$_RemoveMediaEvent;
}

/// @nodoc
abstract class _$LeaveGroupEventCopyWith<$Res> {
  factory _$LeaveGroupEventCopyWith(
          _LeaveGroupEvent value, $Res Function(_LeaveGroupEvent) then) =
      __$LeaveGroupEventCopyWithImpl<$Res>;
  $Res call({GroupData groupData});
}

/// @nodoc
class __$LeaveGroupEventCopyWithImpl<$Res>
    extends _$GroupSessionEventCopyWithImpl<$Res>
    implements _$LeaveGroupEventCopyWith<$Res> {
  __$LeaveGroupEventCopyWithImpl(
      _LeaveGroupEvent _value, $Res Function(_LeaveGroupEvent) _then)
      : super(_value, (v) => _then(v as _LeaveGroupEvent));

  @override
  _LeaveGroupEvent get _value => super._value as _LeaveGroupEvent;

  @override
  $Res call({
    Object? groupData = freezed,
  }) {
    return _then(_LeaveGroupEvent(
      groupData: groupData == freezed
          ? _value.groupData
          : groupData // ignore: cast_nullable_to_non_nullable
              as GroupData,
    ));
  }
}

/// @nodoc

class _$_LeaveGroupEvent implements _LeaveGroupEvent {
  _$_LeaveGroupEvent({required this.groupData});

  @override
  final GroupData groupData;

  @override
  String toString() {
    return 'GroupSessionEvent.leaveGroup(groupData: $groupData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeaveGroupEvent &&
            const DeepCollectionEquality().equals(other.groupData, groupData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupData));

  @JsonKey(ignore: true)
  @override
  _$LeaveGroupEventCopyWith<_LeaveGroupEvent> get copyWith =>
      __$LeaveGroupEventCopyWithImpl<_LeaveGroupEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupData groupData) init,
    required TResult Function(GroupData groupData) uploadMedia,
    required TResult Function() removeMedia,
    required TResult Function(GroupData groupData) leaveGroup,
    required TResult Function(GroupData groupData, UserSummary member)
        deleteMember,
    required TResult Function(GroupData groupData) deleteGroup,
    required TResult Function() playMedia,
    required TResult Function() pauseMedia,
    required TResult Function() seekMedia,
    required TResult Function(UserLeftSM message) userLeft,
    required TResult Function(UserJoinedSM message) userJoined,
    required TResult Function(GroupFileUploadedSM message) groupFileUploaded,
  }) {
    return leaveGroup(groupData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
  }) {
    return leaveGroup?.call(groupData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (leaveGroup != null) {
      return leaveGroup(groupData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_UploadMediaEvent value) uploadMedia,
    required TResult Function(_RemoveMediaEvent value) removeMedia,
    required TResult Function(_LeaveGroupEvent value) leaveGroup,
    required TResult Function(_DeleteMemberEvent value) deleteMember,
    required TResult Function(_DeleteGroupEvent value) deleteGroup,
    required TResult Function(_PlayMediaEvent value) playMedia,
    required TResult Function(_PauseMediaEvent value) pauseMedia,
    required TResult Function(_SeekMediaEvent value) seekMedia,
    required TResult Function(_UserLeftEvent value) userLeft,
    required TResult Function(_UserJoinedEvent value) userJoined,
    required TResult Function(_GroupFileUploadedEvent value) groupFileUploaded,
  }) {
    return leaveGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
  }) {
    return leaveGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (leaveGroup != null) {
      return leaveGroup(this);
    }
    return orElse();
  }
}

abstract class _LeaveGroupEvent implements GroupSessionEvent {
  factory _LeaveGroupEvent({required GroupData groupData}) = _$_LeaveGroupEvent;

  GroupData get groupData;
  @JsonKey(ignore: true)
  _$LeaveGroupEventCopyWith<_LeaveGroupEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteMemberEventCopyWith<$Res> {
  factory _$DeleteMemberEventCopyWith(
          _DeleteMemberEvent value, $Res Function(_DeleteMemberEvent) then) =
      __$DeleteMemberEventCopyWithImpl<$Res>;
  $Res call({GroupData groupData, UserSummary member});
}

/// @nodoc
class __$DeleteMemberEventCopyWithImpl<$Res>
    extends _$GroupSessionEventCopyWithImpl<$Res>
    implements _$DeleteMemberEventCopyWith<$Res> {
  __$DeleteMemberEventCopyWithImpl(
      _DeleteMemberEvent _value, $Res Function(_DeleteMemberEvent) _then)
      : super(_value, (v) => _then(v as _DeleteMemberEvent));

  @override
  _DeleteMemberEvent get _value => super._value as _DeleteMemberEvent;

  @override
  $Res call({
    Object? groupData = freezed,
    Object? member = freezed,
  }) {
    return _then(_DeleteMemberEvent(
      groupData: groupData == freezed
          ? _value.groupData
          : groupData // ignore: cast_nullable_to_non_nullable
              as GroupData,
      member: member == freezed
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as UserSummary,
    ));
  }
}

/// @nodoc

class _$_DeleteMemberEvent implements _DeleteMemberEvent {
  _$_DeleteMemberEvent({required this.groupData, required this.member});

  @override
  final GroupData groupData;
  @override
  final UserSummary member;

  @override
  String toString() {
    return 'GroupSessionEvent.deleteMember(groupData: $groupData, member: $member)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteMemberEvent &&
            const DeepCollectionEquality().equals(other.groupData, groupData) &&
            const DeepCollectionEquality().equals(other.member, member));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groupData),
      const DeepCollectionEquality().hash(member));

  @JsonKey(ignore: true)
  @override
  _$DeleteMemberEventCopyWith<_DeleteMemberEvent> get copyWith =>
      __$DeleteMemberEventCopyWithImpl<_DeleteMemberEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupData groupData) init,
    required TResult Function(GroupData groupData) uploadMedia,
    required TResult Function() removeMedia,
    required TResult Function(GroupData groupData) leaveGroup,
    required TResult Function(GroupData groupData, UserSummary member)
        deleteMember,
    required TResult Function(GroupData groupData) deleteGroup,
    required TResult Function() playMedia,
    required TResult Function() pauseMedia,
    required TResult Function() seekMedia,
    required TResult Function(UserLeftSM message) userLeft,
    required TResult Function(UserJoinedSM message) userJoined,
    required TResult Function(GroupFileUploadedSM message) groupFileUploaded,
  }) {
    return deleteMember(groupData, member);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
  }) {
    return deleteMember?.call(groupData, member);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (deleteMember != null) {
      return deleteMember(groupData, member);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_UploadMediaEvent value) uploadMedia,
    required TResult Function(_RemoveMediaEvent value) removeMedia,
    required TResult Function(_LeaveGroupEvent value) leaveGroup,
    required TResult Function(_DeleteMemberEvent value) deleteMember,
    required TResult Function(_DeleteGroupEvent value) deleteGroup,
    required TResult Function(_PlayMediaEvent value) playMedia,
    required TResult Function(_PauseMediaEvent value) pauseMedia,
    required TResult Function(_SeekMediaEvent value) seekMedia,
    required TResult Function(_UserLeftEvent value) userLeft,
    required TResult Function(_UserJoinedEvent value) userJoined,
    required TResult Function(_GroupFileUploadedEvent value) groupFileUploaded,
  }) {
    return deleteMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
  }) {
    return deleteMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (deleteMember != null) {
      return deleteMember(this);
    }
    return orElse();
  }
}

abstract class _DeleteMemberEvent implements GroupSessionEvent {
  factory _DeleteMemberEvent(
      {required GroupData groupData,
      required UserSummary member}) = _$_DeleteMemberEvent;

  GroupData get groupData;
  UserSummary get member;
  @JsonKey(ignore: true)
  _$DeleteMemberEventCopyWith<_DeleteMemberEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteGroupEventCopyWith<$Res> {
  factory _$DeleteGroupEventCopyWith(
          _DeleteGroupEvent value, $Res Function(_DeleteGroupEvent) then) =
      __$DeleteGroupEventCopyWithImpl<$Res>;
  $Res call({GroupData groupData});
}

/// @nodoc
class __$DeleteGroupEventCopyWithImpl<$Res>
    extends _$GroupSessionEventCopyWithImpl<$Res>
    implements _$DeleteGroupEventCopyWith<$Res> {
  __$DeleteGroupEventCopyWithImpl(
      _DeleteGroupEvent _value, $Res Function(_DeleteGroupEvent) _then)
      : super(_value, (v) => _then(v as _DeleteGroupEvent));

  @override
  _DeleteGroupEvent get _value => super._value as _DeleteGroupEvent;

  @override
  $Res call({
    Object? groupData = freezed,
  }) {
    return _then(_DeleteGroupEvent(
      groupData: groupData == freezed
          ? _value.groupData
          : groupData // ignore: cast_nullable_to_non_nullable
              as GroupData,
    ));
  }
}

/// @nodoc

class _$_DeleteGroupEvent implements _DeleteGroupEvent {
  _$_DeleteGroupEvent({required this.groupData});

  @override
  final GroupData groupData;

  @override
  String toString() {
    return 'GroupSessionEvent.deleteGroup(groupData: $groupData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteGroupEvent &&
            const DeepCollectionEquality().equals(other.groupData, groupData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupData));

  @JsonKey(ignore: true)
  @override
  _$DeleteGroupEventCopyWith<_DeleteGroupEvent> get copyWith =>
      __$DeleteGroupEventCopyWithImpl<_DeleteGroupEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupData groupData) init,
    required TResult Function(GroupData groupData) uploadMedia,
    required TResult Function() removeMedia,
    required TResult Function(GroupData groupData) leaveGroup,
    required TResult Function(GroupData groupData, UserSummary member)
        deleteMember,
    required TResult Function(GroupData groupData) deleteGroup,
    required TResult Function() playMedia,
    required TResult Function() pauseMedia,
    required TResult Function() seekMedia,
    required TResult Function(UserLeftSM message) userLeft,
    required TResult Function(UserJoinedSM message) userJoined,
    required TResult Function(GroupFileUploadedSM message) groupFileUploaded,
  }) {
    return deleteGroup(groupData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
  }) {
    return deleteGroup?.call(groupData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (deleteGroup != null) {
      return deleteGroup(groupData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_UploadMediaEvent value) uploadMedia,
    required TResult Function(_RemoveMediaEvent value) removeMedia,
    required TResult Function(_LeaveGroupEvent value) leaveGroup,
    required TResult Function(_DeleteMemberEvent value) deleteMember,
    required TResult Function(_DeleteGroupEvent value) deleteGroup,
    required TResult Function(_PlayMediaEvent value) playMedia,
    required TResult Function(_PauseMediaEvent value) pauseMedia,
    required TResult Function(_SeekMediaEvent value) seekMedia,
    required TResult Function(_UserLeftEvent value) userLeft,
    required TResult Function(_UserJoinedEvent value) userJoined,
    required TResult Function(_GroupFileUploadedEvent value) groupFileUploaded,
  }) {
    return deleteGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
  }) {
    return deleteGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (deleteGroup != null) {
      return deleteGroup(this);
    }
    return orElse();
  }
}

abstract class _DeleteGroupEvent implements GroupSessionEvent {
  factory _DeleteGroupEvent({required GroupData groupData}) =
      _$_DeleteGroupEvent;

  GroupData get groupData;
  @JsonKey(ignore: true)
  _$DeleteGroupEventCopyWith<_DeleteGroupEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PlayMediaEventCopyWith<$Res> {
  factory _$PlayMediaEventCopyWith(
          _PlayMediaEvent value, $Res Function(_PlayMediaEvent) then) =
      __$PlayMediaEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$PlayMediaEventCopyWithImpl<$Res>
    extends _$GroupSessionEventCopyWithImpl<$Res>
    implements _$PlayMediaEventCopyWith<$Res> {
  __$PlayMediaEventCopyWithImpl(
      _PlayMediaEvent _value, $Res Function(_PlayMediaEvent) _then)
      : super(_value, (v) => _then(v as _PlayMediaEvent));

  @override
  _PlayMediaEvent get _value => super._value as _PlayMediaEvent;
}

/// @nodoc

class _$_PlayMediaEvent implements _PlayMediaEvent {
  _$_PlayMediaEvent();

  @override
  String toString() {
    return 'GroupSessionEvent.playMedia()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PlayMediaEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupData groupData) init,
    required TResult Function(GroupData groupData) uploadMedia,
    required TResult Function() removeMedia,
    required TResult Function(GroupData groupData) leaveGroup,
    required TResult Function(GroupData groupData, UserSummary member)
        deleteMember,
    required TResult Function(GroupData groupData) deleteGroup,
    required TResult Function() playMedia,
    required TResult Function() pauseMedia,
    required TResult Function() seekMedia,
    required TResult Function(UserLeftSM message) userLeft,
    required TResult Function(UserJoinedSM message) userJoined,
    required TResult Function(GroupFileUploadedSM message) groupFileUploaded,
  }) {
    return playMedia();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
  }) {
    return playMedia?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (playMedia != null) {
      return playMedia();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_UploadMediaEvent value) uploadMedia,
    required TResult Function(_RemoveMediaEvent value) removeMedia,
    required TResult Function(_LeaveGroupEvent value) leaveGroup,
    required TResult Function(_DeleteMemberEvent value) deleteMember,
    required TResult Function(_DeleteGroupEvent value) deleteGroup,
    required TResult Function(_PlayMediaEvent value) playMedia,
    required TResult Function(_PauseMediaEvent value) pauseMedia,
    required TResult Function(_SeekMediaEvent value) seekMedia,
    required TResult Function(_UserLeftEvent value) userLeft,
    required TResult Function(_UserJoinedEvent value) userJoined,
    required TResult Function(_GroupFileUploadedEvent value) groupFileUploaded,
  }) {
    return playMedia(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
  }) {
    return playMedia?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (playMedia != null) {
      return playMedia(this);
    }
    return orElse();
  }
}

abstract class _PlayMediaEvent implements GroupSessionEvent {
  factory _PlayMediaEvent() = _$_PlayMediaEvent;
}

/// @nodoc
abstract class _$PauseMediaEventCopyWith<$Res> {
  factory _$PauseMediaEventCopyWith(
          _PauseMediaEvent value, $Res Function(_PauseMediaEvent) then) =
      __$PauseMediaEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$PauseMediaEventCopyWithImpl<$Res>
    extends _$GroupSessionEventCopyWithImpl<$Res>
    implements _$PauseMediaEventCopyWith<$Res> {
  __$PauseMediaEventCopyWithImpl(
      _PauseMediaEvent _value, $Res Function(_PauseMediaEvent) _then)
      : super(_value, (v) => _then(v as _PauseMediaEvent));

  @override
  _PauseMediaEvent get _value => super._value as _PauseMediaEvent;
}

/// @nodoc

class _$_PauseMediaEvent implements _PauseMediaEvent {
  _$_PauseMediaEvent();

  @override
  String toString() {
    return 'GroupSessionEvent.pauseMedia()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PauseMediaEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupData groupData) init,
    required TResult Function(GroupData groupData) uploadMedia,
    required TResult Function() removeMedia,
    required TResult Function(GroupData groupData) leaveGroup,
    required TResult Function(GroupData groupData, UserSummary member)
        deleteMember,
    required TResult Function(GroupData groupData) deleteGroup,
    required TResult Function() playMedia,
    required TResult Function() pauseMedia,
    required TResult Function() seekMedia,
    required TResult Function(UserLeftSM message) userLeft,
    required TResult Function(UserJoinedSM message) userJoined,
    required TResult Function(GroupFileUploadedSM message) groupFileUploaded,
  }) {
    return pauseMedia();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
  }) {
    return pauseMedia?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (pauseMedia != null) {
      return pauseMedia();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_UploadMediaEvent value) uploadMedia,
    required TResult Function(_RemoveMediaEvent value) removeMedia,
    required TResult Function(_LeaveGroupEvent value) leaveGroup,
    required TResult Function(_DeleteMemberEvent value) deleteMember,
    required TResult Function(_DeleteGroupEvent value) deleteGroup,
    required TResult Function(_PlayMediaEvent value) playMedia,
    required TResult Function(_PauseMediaEvent value) pauseMedia,
    required TResult Function(_SeekMediaEvent value) seekMedia,
    required TResult Function(_UserLeftEvent value) userLeft,
    required TResult Function(_UserJoinedEvent value) userJoined,
    required TResult Function(_GroupFileUploadedEvent value) groupFileUploaded,
  }) {
    return pauseMedia(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
  }) {
    return pauseMedia?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (pauseMedia != null) {
      return pauseMedia(this);
    }
    return orElse();
  }
}

abstract class _PauseMediaEvent implements GroupSessionEvent {
  factory _PauseMediaEvent() = _$_PauseMediaEvent;
}

/// @nodoc
abstract class _$SeekMediaEventCopyWith<$Res> {
  factory _$SeekMediaEventCopyWith(
          _SeekMediaEvent value, $Res Function(_SeekMediaEvent) then) =
      __$SeekMediaEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$SeekMediaEventCopyWithImpl<$Res>
    extends _$GroupSessionEventCopyWithImpl<$Res>
    implements _$SeekMediaEventCopyWith<$Res> {
  __$SeekMediaEventCopyWithImpl(
      _SeekMediaEvent _value, $Res Function(_SeekMediaEvent) _then)
      : super(_value, (v) => _then(v as _SeekMediaEvent));

  @override
  _SeekMediaEvent get _value => super._value as _SeekMediaEvent;
}

/// @nodoc

class _$_SeekMediaEvent implements _SeekMediaEvent {
  _$_SeekMediaEvent();

  @override
  String toString() {
    return 'GroupSessionEvent.seekMedia()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SeekMediaEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupData groupData) init,
    required TResult Function(GroupData groupData) uploadMedia,
    required TResult Function() removeMedia,
    required TResult Function(GroupData groupData) leaveGroup,
    required TResult Function(GroupData groupData, UserSummary member)
        deleteMember,
    required TResult Function(GroupData groupData) deleteGroup,
    required TResult Function() playMedia,
    required TResult Function() pauseMedia,
    required TResult Function() seekMedia,
    required TResult Function(UserLeftSM message) userLeft,
    required TResult Function(UserJoinedSM message) userJoined,
    required TResult Function(GroupFileUploadedSM message) groupFileUploaded,
  }) {
    return seekMedia();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
  }) {
    return seekMedia?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (seekMedia != null) {
      return seekMedia();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_UploadMediaEvent value) uploadMedia,
    required TResult Function(_RemoveMediaEvent value) removeMedia,
    required TResult Function(_LeaveGroupEvent value) leaveGroup,
    required TResult Function(_DeleteMemberEvent value) deleteMember,
    required TResult Function(_DeleteGroupEvent value) deleteGroup,
    required TResult Function(_PlayMediaEvent value) playMedia,
    required TResult Function(_PauseMediaEvent value) pauseMedia,
    required TResult Function(_SeekMediaEvent value) seekMedia,
    required TResult Function(_UserLeftEvent value) userLeft,
    required TResult Function(_UserJoinedEvent value) userJoined,
    required TResult Function(_GroupFileUploadedEvent value) groupFileUploaded,
  }) {
    return seekMedia(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
  }) {
    return seekMedia?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (seekMedia != null) {
      return seekMedia(this);
    }
    return orElse();
  }
}

abstract class _SeekMediaEvent implements GroupSessionEvent {
  factory _SeekMediaEvent() = _$_SeekMediaEvent;
}

/// @nodoc
abstract class _$UserLeftEventCopyWith<$Res> {
  factory _$UserLeftEventCopyWith(
          _UserLeftEvent value, $Res Function(_UserLeftEvent) then) =
      __$UserLeftEventCopyWithImpl<$Res>;
  $Res call({UserLeftSM message});
}

/// @nodoc
class __$UserLeftEventCopyWithImpl<$Res>
    extends _$GroupSessionEventCopyWithImpl<$Res>
    implements _$UserLeftEventCopyWith<$Res> {
  __$UserLeftEventCopyWithImpl(
      _UserLeftEvent _value, $Res Function(_UserLeftEvent) _then)
      : super(_value, (v) => _then(v as _UserLeftEvent));

  @override
  _UserLeftEvent get _value => super._value as _UserLeftEvent;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_UserLeftEvent(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as UserLeftSM,
    ));
  }
}

/// @nodoc

class _$_UserLeftEvent implements _UserLeftEvent {
  _$_UserLeftEvent({required this.message});

  @override
  final UserLeftSM message;

  @override
  String toString() {
    return 'GroupSessionEvent.userLeft(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserLeftEvent &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$UserLeftEventCopyWith<_UserLeftEvent> get copyWith =>
      __$UserLeftEventCopyWithImpl<_UserLeftEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupData groupData) init,
    required TResult Function(GroupData groupData) uploadMedia,
    required TResult Function() removeMedia,
    required TResult Function(GroupData groupData) leaveGroup,
    required TResult Function(GroupData groupData, UserSummary member)
        deleteMember,
    required TResult Function(GroupData groupData) deleteGroup,
    required TResult Function() playMedia,
    required TResult Function() pauseMedia,
    required TResult Function() seekMedia,
    required TResult Function(UserLeftSM message) userLeft,
    required TResult Function(UserJoinedSM message) userJoined,
    required TResult Function(GroupFileUploadedSM message) groupFileUploaded,
  }) {
    return userLeft(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
  }) {
    return userLeft?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (userLeft != null) {
      return userLeft(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_UploadMediaEvent value) uploadMedia,
    required TResult Function(_RemoveMediaEvent value) removeMedia,
    required TResult Function(_LeaveGroupEvent value) leaveGroup,
    required TResult Function(_DeleteMemberEvent value) deleteMember,
    required TResult Function(_DeleteGroupEvent value) deleteGroup,
    required TResult Function(_PlayMediaEvent value) playMedia,
    required TResult Function(_PauseMediaEvent value) pauseMedia,
    required TResult Function(_SeekMediaEvent value) seekMedia,
    required TResult Function(_UserLeftEvent value) userLeft,
    required TResult Function(_UserJoinedEvent value) userJoined,
    required TResult Function(_GroupFileUploadedEvent value) groupFileUploaded,
  }) {
    return userLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
  }) {
    return userLeft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (userLeft != null) {
      return userLeft(this);
    }
    return orElse();
  }
}

abstract class _UserLeftEvent implements GroupSessionEvent {
  factory _UserLeftEvent({required UserLeftSM message}) = _$_UserLeftEvent;

  UserLeftSM get message;
  @JsonKey(ignore: true)
  _$UserLeftEventCopyWith<_UserLeftEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UserJoinedEventCopyWith<$Res> {
  factory _$UserJoinedEventCopyWith(
          _UserJoinedEvent value, $Res Function(_UserJoinedEvent) then) =
      __$UserJoinedEventCopyWithImpl<$Res>;
  $Res call({UserJoinedSM message});
}

/// @nodoc
class __$UserJoinedEventCopyWithImpl<$Res>
    extends _$GroupSessionEventCopyWithImpl<$Res>
    implements _$UserJoinedEventCopyWith<$Res> {
  __$UserJoinedEventCopyWithImpl(
      _UserJoinedEvent _value, $Res Function(_UserJoinedEvent) _then)
      : super(_value, (v) => _then(v as _UserJoinedEvent));

  @override
  _UserJoinedEvent get _value => super._value as _UserJoinedEvent;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_UserJoinedEvent(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as UserJoinedSM,
    ));
  }
}

/// @nodoc

class _$_UserJoinedEvent implements _UserJoinedEvent {
  _$_UserJoinedEvent({required this.message});

  @override
  final UserJoinedSM message;

  @override
  String toString() {
    return 'GroupSessionEvent.userJoined(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserJoinedEvent &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$UserJoinedEventCopyWith<_UserJoinedEvent> get copyWith =>
      __$UserJoinedEventCopyWithImpl<_UserJoinedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupData groupData) init,
    required TResult Function(GroupData groupData) uploadMedia,
    required TResult Function() removeMedia,
    required TResult Function(GroupData groupData) leaveGroup,
    required TResult Function(GroupData groupData, UserSummary member)
        deleteMember,
    required TResult Function(GroupData groupData) deleteGroup,
    required TResult Function() playMedia,
    required TResult Function() pauseMedia,
    required TResult Function() seekMedia,
    required TResult Function(UserLeftSM message) userLeft,
    required TResult Function(UserJoinedSM message) userJoined,
    required TResult Function(GroupFileUploadedSM message) groupFileUploaded,
  }) {
    return userJoined(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
  }) {
    return userJoined?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (userJoined != null) {
      return userJoined(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_UploadMediaEvent value) uploadMedia,
    required TResult Function(_RemoveMediaEvent value) removeMedia,
    required TResult Function(_LeaveGroupEvent value) leaveGroup,
    required TResult Function(_DeleteMemberEvent value) deleteMember,
    required TResult Function(_DeleteGroupEvent value) deleteGroup,
    required TResult Function(_PlayMediaEvent value) playMedia,
    required TResult Function(_PauseMediaEvent value) pauseMedia,
    required TResult Function(_SeekMediaEvent value) seekMedia,
    required TResult Function(_UserLeftEvent value) userLeft,
    required TResult Function(_UserJoinedEvent value) userJoined,
    required TResult Function(_GroupFileUploadedEvent value) groupFileUploaded,
  }) {
    return userJoined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
  }) {
    return userJoined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (userJoined != null) {
      return userJoined(this);
    }
    return orElse();
  }
}

abstract class _UserJoinedEvent implements GroupSessionEvent {
  factory _UserJoinedEvent({required UserJoinedSM message}) =
      _$_UserJoinedEvent;

  UserJoinedSM get message;
  @JsonKey(ignore: true)
  _$UserJoinedEventCopyWith<_UserJoinedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GroupFileUploadedEventCopyWith<$Res> {
  factory _$GroupFileUploadedEventCopyWith(_GroupFileUploadedEvent value,
          $Res Function(_GroupFileUploadedEvent) then) =
      __$GroupFileUploadedEventCopyWithImpl<$Res>;
  $Res call({GroupFileUploadedSM message});
}

/// @nodoc
class __$GroupFileUploadedEventCopyWithImpl<$Res>
    extends _$GroupSessionEventCopyWithImpl<$Res>
    implements _$GroupFileUploadedEventCopyWith<$Res> {
  __$GroupFileUploadedEventCopyWithImpl(_GroupFileUploadedEvent _value,
      $Res Function(_GroupFileUploadedEvent) _then)
      : super(_value, (v) => _then(v as _GroupFileUploadedEvent));

  @override
  _GroupFileUploadedEvent get _value => super._value as _GroupFileUploadedEvent;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_GroupFileUploadedEvent(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as GroupFileUploadedSM,
    ));
  }
}

/// @nodoc

class _$_GroupFileUploadedEvent implements _GroupFileUploadedEvent {
  _$_GroupFileUploadedEvent({required this.message});

  @override
  final GroupFileUploadedSM message;

  @override
  String toString() {
    return 'GroupSessionEvent.groupFileUploaded(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupFileUploadedEvent &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$GroupFileUploadedEventCopyWith<_GroupFileUploadedEvent> get copyWith =>
      __$GroupFileUploadedEventCopyWithImpl<_GroupFileUploadedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupData groupData) init,
    required TResult Function(GroupData groupData) uploadMedia,
    required TResult Function() removeMedia,
    required TResult Function(GroupData groupData) leaveGroup,
    required TResult Function(GroupData groupData, UserSummary member)
        deleteMember,
    required TResult Function(GroupData groupData) deleteGroup,
    required TResult Function() playMedia,
    required TResult Function() pauseMedia,
    required TResult Function() seekMedia,
    required TResult Function(UserLeftSM message) userLeft,
    required TResult Function(UserJoinedSM message) userJoined,
    required TResult Function(GroupFileUploadedSM message) groupFileUploaded,
  }) {
    return groupFileUploaded(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
  }) {
    return groupFileUploaded?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupData groupData)? init,
    TResult Function(GroupData groupData)? uploadMedia,
    TResult Function()? removeMedia,
    TResult Function(GroupData groupData)? leaveGroup,
    TResult Function(GroupData groupData, UserSummary member)? deleteMember,
    TResult Function(GroupData groupData)? deleteGroup,
    TResult Function()? playMedia,
    TResult Function()? pauseMedia,
    TResult Function()? seekMedia,
    TResult Function(UserLeftSM message)? userLeft,
    TResult Function(UserJoinedSM message)? userJoined,
    TResult Function(GroupFileUploadedSM message)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (groupFileUploaded != null) {
      return groupFileUploaded(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_UploadMediaEvent value) uploadMedia,
    required TResult Function(_RemoveMediaEvent value) removeMedia,
    required TResult Function(_LeaveGroupEvent value) leaveGroup,
    required TResult Function(_DeleteMemberEvent value) deleteMember,
    required TResult Function(_DeleteGroupEvent value) deleteGroup,
    required TResult Function(_PlayMediaEvent value) playMedia,
    required TResult Function(_PauseMediaEvent value) pauseMedia,
    required TResult Function(_SeekMediaEvent value) seekMedia,
    required TResult Function(_UserLeftEvent value) userLeft,
    required TResult Function(_UserJoinedEvent value) userJoined,
    required TResult Function(_GroupFileUploadedEvent value) groupFileUploaded,
  }) {
    return groupFileUploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
  }) {
    return groupFileUploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UploadMediaEvent value)? uploadMedia,
    TResult Function(_RemoveMediaEvent value)? removeMedia,
    TResult Function(_LeaveGroupEvent value)? leaveGroup,
    TResult Function(_DeleteMemberEvent value)? deleteMember,
    TResult Function(_DeleteGroupEvent value)? deleteGroup,
    TResult Function(_PlayMediaEvent value)? playMedia,
    TResult Function(_PauseMediaEvent value)? pauseMedia,
    TResult Function(_SeekMediaEvent value)? seekMedia,
    TResult Function(_UserLeftEvent value)? userLeft,
    TResult Function(_UserJoinedEvent value)? userJoined,
    TResult Function(_GroupFileUploadedEvent value)? groupFileUploaded,
    required TResult orElse(),
  }) {
    if (groupFileUploaded != null) {
      return groupFileUploaded(this);
    }
    return orElse();
  }
}

abstract class _GroupFileUploadedEvent implements GroupSessionEvent {
  factory _GroupFileUploadedEvent({required GroupFileUploadedSM message}) =
      _$_GroupFileUploadedEvent;

  GroupFileUploadedSM get message;
  @JsonKey(ignore: true)
  _$GroupFileUploadedEventCopyWith<_GroupFileUploadedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GroupSessionStateTearOff {
  const _$GroupSessionStateTearOff();

  _GroupSessionState call(
      {required Option<Either<MediaFailure, Media>> failureOrMediaOption,
      required Option<Either<GroupRepositoryFailure, Unit>>
          groupFailureOrUnitOption,
      required Option<Either<GroupFileRepositoryFailure, Unit>>
          fileFailureOrUnitOption,
      required Option<Either<SynchrowiseUserStorageFailure, Unit>>
          storageFailureOrUnitOption,
      required Option<KtList<UserSummary>> membersOption,
      required bool isProgressing}) {
    return _GroupSessionState(
      failureOrMediaOption: failureOrMediaOption,
      groupFailureOrUnitOption: groupFailureOrUnitOption,
      fileFailureOrUnitOption: fileFailureOrUnitOption,
      storageFailureOrUnitOption: storageFailureOrUnitOption,
      membersOption: membersOption,
      isProgressing: isProgressing,
    );
  }
}

/// @nodoc
const $GroupSessionState = _$GroupSessionStateTearOff();

/// @nodoc
mixin _$GroupSessionState {
  Option<Either<MediaFailure, Media>> get failureOrMediaOption =>
      throw _privateConstructorUsedError;
  Option<Either<GroupRepositoryFailure, Unit>> get groupFailureOrUnitOption =>
      throw _privateConstructorUsedError;
  Option<Either<GroupFileRepositoryFailure, Unit>>
      get fileFailureOrUnitOption => throw _privateConstructorUsedError;
  Option<Either<SynchrowiseUserStorageFailure, Unit>>
      get storageFailureOrUnitOption => throw _privateConstructorUsedError;
  Option<KtList<UserSummary>> get membersOption =>
      throw _privateConstructorUsedError;
  bool get isProgressing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupSessionStateCopyWith<GroupSessionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupSessionStateCopyWith<$Res> {
  factory $GroupSessionStateCopyWith(
          GroupSessionState value, $Res Function(GroupSessionState) then) =
      _$GroupSessionStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<MediaFailure, Media>> failureOrMediaOption,
      Option<Either<GroupRepositoryFailure, Unit>> groupFailureOrUnitOption,
      Option<Either<GroupFileRepositoryFailure, Unit>> fileFailureOrUnitOption,
      Option<Either<SynchrowiseUserStorageFailure, Unit>>
          storageFailureOrUnitOption,
      Option<KtList<UserSummary>> membersOption,
      bool isProgressing});
}

/// @nodoc
class _$GroupSessionStateCopyWithImpl<$Res>
    implements $GroupSessionStateCopyWith<$Res> {
  _$GroupSessionStateCopyWithImpl(this._value, this._then);

  final GroupSessionState _value;
  // ignore: unused_field
  final $Res Function(GroupSessionState) _then;

  @override
  $Res call({
    Object? failureOrMediaOption = freezed,
    Object? groupFailureOrUnitOption = freezed,
    Object? fileFailureOrUnitOption = freezed,
    Object? storageFailureOrUnitOption = freezed,
    Object? membersOption = freezed,
    Object? isProgressing = freezed,
  }) {
    return _then(_value.copyWith(
      failureOrMediaOption: failureOrMediaOption == freezed
          ? _value.failureOrMediaOption
          : failureOrMediaOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MediaFailure, Media>>,
      groupFailureOrUnitOption: groupFailureOrUnitOption == freezed
          ? _value.groupFailureOrUnitOption
          : groupFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GroupRepositoryFailure, Unit>>,
      fileFailureOrUnitOption: fileFailureOrUnitOption == freezed
          ? _value.fileFailureOrUnitOption
          : fileFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GroupFileRepositoryFailure, Unit>>,
      storageFailureOrUnitOption: storageFailureOrUnitOption == freezed
          ? _value.storageFailureOrUnitOption
          : storageFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SynchrowiseUserStorageFailure, Unit>>,
      membersOption: membersOption == freezed
          ? _value.membersOption
          : membersOption // ignore: cast_nullable_to_non_nullable
              as Option<KtList<UserSummary>>,
      isProgressing: isProgressing == freezed
          ? _value.isProgressing
          : isProgressing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$GroupSessionStateCopyWith<$Res>
    implements $GroupSessionStateCopyWith<$Res> {
  factory _$GroupSessionStateCopyWith(
          _GroupSessionState value, $Res Function(_GroupSessionState) then) =
      __$GroupSessionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<MediaFailure, Media>> failureOrMediaOption,
      Option<Either<GroupRepositoryFailure, Unit>> groupFailureOrUnitOption,
      Option<Either<GroupFileRepositoryFailure, Unit>> fileFailureOrUnitOption,
      Option<Either<SynchrowiseUserStorageFailure, Unit>>
          storageFailureOrUnitOption,
      Option<KtList<UserSummary>> membersOption,
      bool isProgressing});
}

/// @nodoc
class __$GroupSessionStateCopyWithImpl<$Res>
    extends _$GroupSessionStateCopyWithImpl<$Res>
    implements _$GroupSessionStateCopyWith<$Res> {
  __$GroupSessionStateCopyWithImpl(
      _GroupSessionState _value, $Res Function(_GroupSessionState) _then)
      : super(_value, (v) => _then(v as _GroupSessionState));

  @override
  _GroupSessionState get _value => super._value as _GroupSessionState;

  @override
  $Res call({
    Object? failureOrMediaOption = freezed,
    Object? groupFailureOrUnitOption = freezed,
    Object? fileFailureOrUnitOption = freezed,
    Object? storageFailureOrUnitOption = freezed,
    Object? membersOption = freezed,
    Object? isProgressing = freezed,
  }) {
    return _then(_GroupSessionState(
      failureOrMediaOption: failureOrMediaOption == freezed
          ? _value.failureOrMediaOption
          : failureOrMediaOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MediaFailure, Media>>,
      groupFailureOrUnitOption: groupFailureOrUnitOption == freezed
          ? _value.groupFailureOrUnitOption
          : groupFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GroupRepositoryFailure, Unit>>,
      fileFailureOrUnitOption: fileFailureOrUnitOption == freezed
          ? _value.fileFailureOrUnitOption
          : fileFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GroupFileRepositoryFailure, Unit>>,
      storageFailureOrUnitOption: storageFailureOrUnitOption == freezed
          ? _value.storageFailureOrUnitOption
          : storageFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SynchrowiseUserStorageFailure, Unit>>,
      membersOption: membersOption == freezed
          ? _value.membersOption
          : membersOption // ignore: cast_nullable_to_non_nullable
              as Option<KtList<UserSummary>>,
      isProgressing: isProgressing == freezed
          ? _value.isProgressing
          : isProgressing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GroupSessionState extends _GroupSessionState {
  const _$_GroupSessionState(
      {required this.failureOrMediaOption,
      required this.groupFailureOrUnitOption,
      required this.fileFailureOrUnitOption,
      required this.storageFailureOrUnitOption,
      required this.membersOption,
      required this.isProgressing})
      : super._();

  @override
  final Option<Either<MediaFailure, Media>> failureOrMediaOption;
  @override
  final Option<Either<GroupRepositoryFailure, Unit>> groupFailureOrUnitOption;
  @override
  final Option<Either<GroupFileRepositoryFailure, Unit>>
      fileFailureOrUnitOption;
  @override
  final Option<Either<SynchrowiseUserStorageFailure, Unit>>
      storageFailureOrUnitOption;
  @override
  final Option<KtList<UserSummary>> membersOption;
  @override
  final bool isProgressing;

  @override
  String toString() {
    return 'GroupSessionState(failureOrMediaOption: $failureOrMediaOption, groupFailureOrUnitOption: $groupFailureOrUnitOption, fileFailureOrUnitOption: $fileFailureOrUnitOption, storageFailureOrUnitOption: $storageFailureOrUnitOption, membersOption: $membersOption, isProgressing: $isProgressing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupSessionState &&
            const DeepCollectionEquality()
                .equals(other.failureOrMediaOption, failureOrMediaOption) &&
            const DeepCollectionEquality().equals(
                other.groupFailureOrUnitOption, groupFailureOrUnitOption) &&
            const DeepCollectionEquality().equals(
                other.fileFailureOrUnitOption, fileFailureOrUnitOption) &&
            const DeepCollectionEquality().equals(
                other.storageFailureOrUnitOption, storageFailureOrUnitOption) &&
            const DeepCollectionEquality()
                .equals(other.membersOption, membersOption) &&
            const DeepCollectionEquality()
                .equals(other.isProgressing, isProgressing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failureOrMediaOption),
      const DeepCollectionEquality().hash(groupFailureOrUnitOption),
      const DeepCollectionEquality().hash(fileFailureOrUnitOption),
      const DeepCollectionEquality().hash(storageFailureOrUnitOption),
      const DeepCollectionEquality().hash(membersOption),
      const DeepCollectionEquality().hash(isProgressing));

  @JsonKey(ignore: true)
  @override
  _$GroupSessionStateCopyWith<_GroupSessionState> get copyWith =>
      __$GroupSessionStateCopyWithImpl<_GroupSessionState>(this, _$identity);
}

abstract class _GroupSessionState extends GroupSessionState {
  const factory _GroupSessionState(
      {required Option<Either<MediaFailure, Media>> failureOrMediaOption,
      required Option<Either<GroupRepositoryFailure, Unit>>
          groupFailureOrUnitOption,
      required Option<Either<GroupFileRepositoryFailure, Unit>>
          fileFailureOrUnitOption,
      required Option<Either<SynchrowiseUserStorageFailure, Unit>>
          storageFailureOrUnitOption,
      required Option<KtList<UserSummary>> membersOption,
      required bool isProgressing}) = _$_GroupSessionState;
  const _GroupSessionState._() : super._();

  @override
  Option<Either<MediaFailure, Media>> get failureOrMediaOption;
  @override
  Option<Either<GroupRepositoryFailure, Unit>> get groupFailureOrUnitOption;
  @override
  Option<Either<GroupFileRepositoryFailure, Unit>> get fileFailureOrUnitOption;
  @override
  Option<Either<SynchrowiseUserStorageFailure, Unit>>
      get storageFailureOrUnitOption;
  @override
  Option<KtList<UserSummary>> get membersOption;
  @override
  bool get isProgressing;
  @override
  @JsonKey(ignore: true)
  _$GroupSessionStateCopyWith<_GroupSessionState> get copyWith =>
      throw _privateConstructorUsedError;
}
