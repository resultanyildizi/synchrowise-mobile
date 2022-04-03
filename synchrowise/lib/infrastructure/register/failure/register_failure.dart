import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_failure.freezed.dart';

@freezed
abstract class RegisterFailure with _$RegisterFailure {
  const factory RegisterFailure.connection() = _ConnectionFailure;
  const factory RegisterFailure.unknown() = _UnknownFailure;
  const factory RegisterFailure.imagePickFailed() = _ImagePickFailedFailure;
  const factory RegisterFailure.imageCropperFailed() =
      _ImageCropperFailedFailure;
  const factory RegisterFailure.imageTooLarge() = _ImageTooLargeFailure;
  const factory RegisterFailure.usernameIsTaken() = _UsernameIsTakenFailure;
}
