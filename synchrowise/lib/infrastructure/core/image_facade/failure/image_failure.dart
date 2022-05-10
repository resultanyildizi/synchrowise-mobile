import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';

part 'image_failure.freezed.dart';

@freezed
abstract class ImageFacadeFailure extends SynchrowiseFailure
    with _$ImageFacadeFailure {
  const factory ImageFacadeFailure.imagePick(String? message) = _ImagePick;
  const factory ImageFacadeFailure.imageCrop(String? message) = _ImageCrop;
  const factory ImageFacadeFailure.imageSize(double imageSize) = _ImageSize;
  const factory ImageFacadeFailure.imageCancel() = _ImageCancel;
}
