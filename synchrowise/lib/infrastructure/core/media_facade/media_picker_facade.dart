import 'package:path/path.dart';
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
      type: FileType.any,
      allowMultiple: false,
    );

    if (result != null && result.files.single.path != null) {
      final file = result.files.single;

      final fileSize = _getImageSizeMB(file);
      if (fileSize > 300) {
        return left(MediaFailure.sizeFailure(fileSize));
      }

      final path = file.path!;

      final media = Media(file: File(path));

      if (media.type == MediaType.unknown) {
        return left(
          MediaFailure.unsupportedFailure(extension(media.file.path)),
        );
      }

      return right(media);
    } else {
      return left(const MediaFailure.pickFailure(null));
    }
  }

  double _getImageSizeMB(PlatformFile file) {
    return file.size / 1024 / 1024;
  }
}
