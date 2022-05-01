import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';

part 'image_failure.freezed.dart';

@freezed
abstract class ImageFailure extends SynchrowiseFailure with _$ImageFailure {
  const factory ImageFailure.imagePick() = _ImagePick;
  const factory ImageFailure.imageCrop() = _ImageCrop;
  const factory ImageFailure.imageSize() = _ImageSize;
}
