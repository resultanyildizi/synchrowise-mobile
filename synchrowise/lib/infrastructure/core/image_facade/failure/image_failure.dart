import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';

part 'image_failure.freezed.dart';

@freezed
abstract class ImageFailure extends SynchrowiseFailure with _$ImageFailure {
  const factory ImageFailure.imagePick(String? message) = _ImagePick;
  const factory ImageFailure.imageCrop(String? message) = _ImageCrop;
  const factory ImageFailure.imageSize(double imageSize) = _ImageSize;
  const factory ImageFailure.imageCancel() = _ImageCancel;
}
