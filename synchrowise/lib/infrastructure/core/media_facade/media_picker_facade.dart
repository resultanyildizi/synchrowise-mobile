import 'package:synchrowise/domain/core/media.dart';
import 'package:synchrowise/infrastructure/core/media_facade/failure/media_failure.dart';
import 'package:dartz/dartz.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:synchrowise/infrastructure/core/media_facade/i_media_picker_facade.dart';

class MediaPickerFacade implements IMediaPickerFacade {
  final FilePicker filePicker;

  MediaPickerFacade(this.filePicker);

  @override
  Future<Either<MediaFailure, Media>> uploadFromDevice() async {
    final result = await filePicker.pickFiles(
      type: FileType.audio,
      allowMultiple: false,
    );

    if (result != null && result.files.single.path != null) {
      final file = result.files.single;

      final fileSize = _getImageSizeMB(file);
      if (fileSize > 100) {
        return left(MediaFailure.sizeFailure(fileSize));
      }

      final path = file.path!;

      return right(Media(file: File(path)));
    } else {
      return left(const MediaFailure.pickFailure(null));
    }
  }

  double _getImageSizeMB(PlatformFile file) {
    return file.size / 1024 / 1024;
  }
}
