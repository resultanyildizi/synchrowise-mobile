// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bottom_navbar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BottomNavbarEventTearOff {
  const _$BottomNavbarEventTearOff();

  _OpenTab openTab({required int index}) {
    return _OpenTab(
      index: index,
    );
  }
}

/// @nodoc
const $BottomNavbarEvent = _$BottomNavbarEventTearOff();

/// @nodoc
mixin _$BottomNavbarEvent {
  int get index => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) openTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? openTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? openTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenTab value) openTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenTab value)? openTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenTab value)? openTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavbarEventCopyWith<BottomNavbarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavbarEventCopyWith<$Res> {
  factory $BottomNavbarEventCopyWith(
          BottomNavbarEvent value, $Res Function(BottomNavbarEvent) then) =
      _$BottomNavbarEventCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$BottomNavbarEventCopyWithImpl<$Res>
    implements $BottomNavbarEventCopyWith<$Res> {
  _$BottomNavbarEventCopyWithImpl(this._value, this._then);

  final BottomNavbarEvent _value;
  // ignore: unused_field
  final $Res Function(BottomNavbarEvent) _then;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$OpenTabCopyWith<$Res>
    implements $BottomNavbarEventCopyWith<$Res> {
  factory _$OpenTabCopyWith(_OpenTab value, $Res Function(_OpenTab) then) =
      __$OpenTabCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class __$OpenTabCopyWithImpl<$Res> extends _$BottomNavbarEventCopyWithImpl<$Res>
    implements _$OpenTabCopyWith<$Res> {
  __$OpenTabCopyWithImpl(_OpenTab _value, $Res Function(_OpenTab) _then)
      : super(_value, (v) => _then(v as _OpenTab));

  @override
  _OpenTab get _value => super._value as _OpenTab;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_OpenTab(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OpenTab implements _OpenTab {
  const _$_OpenTab({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'BottomNavbarEvent.openTab(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenTab &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$OpenTabCopyWith<_OpenTab> get copyWith =>
      __$OpenTabCopyWithImpl<_OpenTab>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) openTab,
  }) {
    return openTab(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? openTab,
  }) {
    return openTab?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? openTab,
    required TResult orElse(),
  }) {
    if (openTab != null) {
      return openTab(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenTab value) openTab,
  }) {
    return openTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenTab value)? openTab,
  }) {
    return openTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenTab value)? openTab,
    required TResult orElse(),
  }) {
    if (openTab != null) {
      return openTab(this);
    }
    return orElse();
  }
}

abstract class _OpenTab implements BottomNavbarEvent {
  const factory _OpenTab({required int index}) = _$_OpenTab;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$OpenTabCopyWith<_OpenTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BottomNavbarStateTearOff {
  const _$BottomNavbarStateTearOff();

  _BottomNavbarState call({required int index}) {
    return _BottomNavbarState(
      index: index,
    );
  }
}

/// @nodoc
const $BottomNavbarState = _$BottomNavbarStateTearOff();

/// @nodoc
mixin _$BottomNavbarState {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavbarStateCopyWith<BottomNavbarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavbarStateCopyWith<$Res> {
  factory $BottomNavbarStateCopyWith(
          BottomNavbarState value, $Res Function(BottomNavbarState) then) =
      _$BottomNavbarStateCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$BottomNavbarStateCopyWithImpl<$Res>
    implements $BottomNavbarStateCopyWith<$Res> {
  _$BottomNavbarStateCopyWithImpl(this._value, this._then);

  final BottomNavbarState _value;
  // ignore: unused_field
  final $Res Function(BottomNavbarState) _then;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$BottomNavbarStateCopyWith<$Res>
    implements $BottomNavbarStateCopyWith<$Res> {
  factory _$BottomNavbarStateCopyWith(
          _BottomNavbarState value, $Res Function(_BottomNavbarState) then) =
      __$BottomNavbarStateCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class __$BottomNavbarStateCopyWithImpl<$Res>
    extends _$BottomNavbarStateCopyWithImpl<$Res>
    implements _$BottomNavbarStateCopyWith<$Res> {
  __$BottomNavbarStateCopyWithImpl(
      _BottomNavbarState _value, $Res Function(_BottomNavbarState) _then)
      : super(_value, (v) => _then(v as _BottomNavbarState));

  @override
  _BottomNavbarState get _value => super._value as _BottomNavbarState;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_BottomNavbarState(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BottomNavbarState implements _BottomNavbarState {
  const _$_BottomNavbarState({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'BottomNavbarState(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BottomNavbarState &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$BottomNavbarStateCopyWith<_BottomNavbarState> get copyWith =>
      __$BottomNavbarStateCopyWithImpl<_BottomNavbarState>(this, _$identity);
}

abstract class _BottomNavbarState implements BottomNavbarState {
  const factory _BottomNavbarState({required int index}) = _$_BottomNavbarState;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$BottomNavbarStateCopyWith<_BottomNavbarState> get copyWith =>
      throw _privateConstructorUsedError;
}
