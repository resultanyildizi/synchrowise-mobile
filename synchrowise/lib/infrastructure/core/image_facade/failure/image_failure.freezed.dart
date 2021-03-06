// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ImageFacadeFailureTearOff {
  const _$ImageFacadeFailureTearOff();

  _ImagePick imagePick(String? message) {
    return _ImagePick(
      message,
    );
  }

  _ImageCrop imageCrop(String? message) {
    return _ImageCrop(
      message,
    );
  }

  _ImageSize imageSize(double imageSize) {
    return _ImageSize(
      imageSize,
    );
  }

  _ImageCancel imageCancel() {
    return const _ImageCancel();
  }
}

/// @nodoc
const $ImageFacadeFailure = _$ImageFacadeFailureTearOff();

/// @nodoc
mixin _$ImageFacadeFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) imagePick,
    required TResult Function(String? message) imageCrop,
    required TResult Function(double imageSize) imageSize,
    required TResult Function() imageCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? imagePick,
    TResult Function(String? message)? imageCrop,
    TResult Function(double imageSize)? imageSize,
    TResult Function()? imageCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? imagePick,
    TResult Function(String? message)? imageCrop,
    TResult Function(double imageSize)? imageSize,
    TResult Function()? imageCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_ImageCrop value) imageCrop,
    required TResult Function(_ImageSize value) imageSize,
    required TResult Function(_ImageCancel value) imageCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_ImageCrop value)? imageCrop,
    TResult Function(_ImageSize value)? imageSize,
    TResult Function(_ImageCancel value)? imageCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_ImageCrop value)? imageCrop,
    TResult Function(_ImageSize value)? imageSize,
    TResult Function(_ImageCancel value)? imageCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageFacadeFailureCopyWith<$Res> {
  factory $ImageFacadeFailureCopyWith(
          ImageFacadeFailure value, $Res Function(ImageFacadeFailure) then) =
      _$ImageFacadeFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImageFacadeFailureCopyWithImpl<$Res>
    implements $ImageFacadeFailureCopyWith<$Res> {
  _$ImageFacadeFailureCopyWithImpl(this._value, this._then);

  final ImageFacadeFailure _value;
  // ignore: unused_field
  final $Res Function(ImageFacadeFailure) _then;
}

/// @nodoc
abstract class _$ImagePickCopyWith<$Res> {
  factory _$ImagePickCopyWith(
          _ImagePick value, $Res Function(_ImagePick) then) =
      __$ImagePickCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$ImagePickCopyWithImpl<$Res>
    extends _$ImageFacadeFailureCopyWithImpl<$Res>
    implements _$ImagePickCopyWith<$Res> {
  __$ImagePickCopyWithImpl(_ImagePick _value, $Res Function(_ImagePick) _then)
      : super(_value, (v) => _then(v as _ImagePick));

  @override
  _ImagePick get _value => super._value as _ImagePick;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ImagePick(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ImagePick implements _ImagePick {
  const _$_ImagePick(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'ImageFacadeFailure.imagePick(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImagePick &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ImagePickCopyWith<_ImagePick> get copyWith =>
      __$ImagePickCopyWithImpl<_ImagePick>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) imagePick,
    required TResult Function(String? message) imageCrop,
    required TResult Function(double imageSize) imageSize,
    required TResult Function() imageCancel,
  }) {
    return imagePick(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? imagePick,
    TResult Function(String? message)? imageCrop,
    TResult Function(double imageSize)? imageSize,
    TResult Function()? imageCancel,
  }) {
    return imagePick?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? imagePick,
    TResult Function(String? message)? imageCrop,
    TResult Function(double imageSize)? imageSize,
    TResult Function()? imageCancel,
    required TResult orElse(),
  }) {
    if (imagePick != null) {
      return imagePick(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_ImageCrop value) imageCrop,
    required TResult Function(_ImageSize value) imageSize,
    required TResult Function(_ImageCancel value) imageCancel,
  }) {
    return imagePick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_ImageCrop value)? imageCrop,
    TResult Function(_ImageSize value)? imageSize,
    TResult Function(_ImageCancel value)? imageCancel,
  }) {
    return imagePick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_ImageCrop value)? imageCrop,
    TResult Function(_ImageSize value)? imageSize,
    TResult Function(_ImageCancel value)? imageCancel,
    required TResult orElse(),
  }) {
    if (imagePick != null) {
      return imagePick(this);
    }
    return orElse();
  }
}

abstract class _ImagePick implements ImageFacadeFailure {
  const factory _ImagePick(String? message) = _$_ImagePick;

  String? get message;
  @JsonKey(ignore: true)
  _$ImagePickCopyWith<_ImagePick> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ImageCropCopyWith<$Res> {
  factory _$ImageCropCopyWith(
          _ImageCrop value, $Res Function(_ImageCrop) then) =
      __$ImageCropCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$ImageCropCopyWithImpl<$Res>
    extends _$ImageFacadeFailureCopyWithImpl<$Res>
    implements _$ImageCropCopyWith<$Res> {
  __$ImageCropCopyWithImpl(_ImageCrop _value, $Res Function(_ImageCrop) _then)
      : super(_value, (v) => _then(v as _ImageCrop));

  @override
  _ImageCrop get _value => super._value as _ImageCrop;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ImageCrop(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ImageCrop implements _ImageCrop {
  const _$_ImageCrop(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'ImageFacadeFailure.imageCrop(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImageCrop &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ImageCropCopyWith<_ImageCrop> get copyWith =>
      __$ImageCropCopyWithImpl<_ImageCrop>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) imagePick,
    required TResult Function(String? message) imageCrop,
    required TResult Function(double imageSize) imageSize,
    required TResult Function() imageCancel,
  }) {
    return imageCrop(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? imagePick,
    TResult Function(String? message)? imageCrop,
    TResult Function(double imageSize)? imageSize,
    TResult Function()? imageCancel,
  }) {
    return imageCrop?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? imagePick,
    TResult Function(String? message)? imageCrop,
    TResult Function(double imageSize)? imageSize,
    TResult Function()? imageCancel,
    required TResult orElse(),
  }) {
    if (imageCrop != null) {
      return imageCrop(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_ImageCrop value) imageCrop,
    required TResult Function(_ImageSize value) imageSize,
    required TResult Function(_ImageCancel value) imageCancel,
  }) {
    return imageCrop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_ImageCrop value)? imageCrop,
    TResult Function(_ImageSize value)? imageSize,
    TResult Function(_ImageCancel value)? imageCancel,
  }) {
    return imageCrop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_ImageCrop value)? imageCrop,
    TResult Function(_ImageSize value)? imageSize,
    TResult Function(_ImageCancel value)? imageCancel,
    required TResult orElse(),
  }) {
    if (imageCrop != null) {
      return imageCrop(this);
    }
    return orElse();
  }
}

abstract class _ImageCrop implements ImageFacadeFailure {
  const factory _ImageCrop(String? message) = _$_ImageCrop;

  String? get message;
  @JsonKey(ignore: true)
  _$ImageCropCopyWith<_ImageCrop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ImageSizeCopyWith<$Res> {
  factory _$ImageSizeCopyWith(
          _ImageSize value, $Res Function(_ImageSize) then) =
      __$ImageSizeCopyWithImpl<$Res>;
  $Res call({double imageSize});
}

/// @nodoc
class __$ImageSizeCopyWithImpl<$Res>
    extends _$ImageFacadeFailureCopyWithImpl<$Res>
    implements _$ImageSizeCopyWith<$Res> {
  __$ImageSizeCopyWithImpl(_ImageSize _value, $Res Function(_ImageSize) _then)
      : super(_value, (v) => _then(v as _ImageSize));

  @override
  _ImageSize get _value => super._value as _ImageSize;

  @override
  $Res call({
    Object? imageSize = freezed,
  }) {
    return _then(_ImageSize(
      imageSize == freezed
          ? _value.imageSize
          : imageSize // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ImageSize implements _ImageSize {
  const _$_ImageSize(this.imageSize);

  @override
  final double imageSize;

  @override
  String toString() {
    return 'ImageFacadeFailure.imageSize(imageSize: $imageSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImageSize &&
            const DeepCollectionEquality().equals(other.imageSize, imageSize));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageSize));

  @JsonKey(ignore: true)
  @override
  _$ImageSizeCopyWith<_ImageSize> get copyWith =>
      __$ImageSizeCopyWithImpl<_ImageSize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) imagePick,
    required TResult Function(String? message) imageCrop,
    required TResult Function(double imageSize) imageSize,
    required TResult Function() imageCancel,
  }) {
    return imageSize(this.imageSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? imagePick,
    TResult Function(String? message)? imageCrop,
    TResult Function(double imageSize)? imageSize,
    TResult Function()? imageCancel,
  }) {
    return imageSize?.call(this.imageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? imagePick,
    TResult Function(String? message)? imageCrop,
    TResult Function(double imageSize)? imageSize,
    TResult Function()? imageCancel,
    required TResult orElse(),
  }) {
    if (imageSize != null) {
      return imageSize(this.imageSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_ImageCrop value) imageCrop,
    required TResult Function(_ImageSize value) imageSize,
    required TResult Function(_ImageCancel value) imageCancel,
  }) {
    return imageSize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_ImageCrop value)? imageCrop,
    TResult Function(_ImageSize value)? imageSize,
    TResult Function(_ImageCancel value)? imageCancel,
  }) {
    return imageSize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_ImageCrop value)? imageCrop,
    TResult Function(_ImageSize value)? imageSize,
    TResult Function(_ImageCancel value)? imageCancel,
    required TResult orElse(),
  }) {
    if (imageSize != null) {
      return imageSize(this);
    }
    return orElse();
  }
}

abstract class _ImageSize implements ImageFacadeFailure {
  const factory _ImageSize(double imageSize) = _$_ImageSize;

  double get imageSize;
  @JsonKey(ignore: true)
  _$ImageSizeCopyWith<_ImageSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ImageCancelCopyWith<$Res> {
  factory _$ImageCancelCopyWith(
          _ImageCancel value, $Res Function(_ImageCancel) then) =
      __$ImageCancelCopyWithImpl<$Res>;
}

/// @nodoc
class __$ImageCancelCopyWithImpl<$Res>
    extends _$ImageFacadeFailureCopyWithImpl<$Res>
    implements _$ImageCancelCopyWith<$Res> {
  __$ImageCancelCopyWithImpl(
      _ImageCancel _value, $Res Function(_ImageCancel) _then)
      : super(_value, (v) => _then(v as _ImageCancel));

  @override
  _ImageCancel get _value => super._value as _ImageCancel;
}

/// @nodoc

class _$_ImageCancel implements _ImageCancel {
  const _$_ImageCancel();

  @override
  String toString() {
    return 'ImageFacadeFailure.imageCancel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ImageCancel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) imagePick,
    required TResult Function(String? message) imageCrop,
    required TResult Function(double imageSize) imageSize,
    required TResult Function() imageCancel,
  }) {
    return imageCancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? imagePick,
    TResult Function(String? message)? imageCrop,
    TResult Function(double imageSize)? imageSize,
    TResult Function()? imageCancel,
  }) {
    return imageCancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? imagePick,
    TResult Function(String? message)? imageCrop,
    TResult Function(double imageSize)? imageSize,
    TResult Function()? imageCancel,
    required TResult orElse(),
  }) {
    if (imageCancel != null) {
      return imageCancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_ImageCrop value) imageCrop,
    required TResult Function(_ImageSize value) imageSize,
    required TResult Function(_ImageCancel value) imageCancel,
  }) {
    return imageCancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_ImageCrop value)? imageCrop,
    TResult Function(_ImageSize value)? imageSize,
    TResult Function(_ImageCancel value)? imageCancel,
  }) {
    return imageCancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_ImageCrop value)? imageCrop,
    TResult Function(_ImageSize value)? imageSize,
    TResult Function(_ImageCancel value)? imageCancel,
    required TResult orElse(),
  }) {
    if (imageCancel != null) {
      return imageCancel(this);
    }
    return orElse();
  }
}

abstract class _ImageCancel implements ImageFacadeFailure {
  const factory _ImageCancel() = _$_ImageCancel;
}
