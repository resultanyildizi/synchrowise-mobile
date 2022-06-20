import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:synchrowise/domain/core/media.dart';
import 'package:synchrowise/infrastructure/core/media_facade/failure/media_failure.dart';
import 'package:dartz/dartz.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:synchrowise/infrastructure/core/media_facade/i_media_picker_facade.dart';

class MediaPickerFacade implements IMediaPickerFacade {
  final FilePicker _filePicker;
  final Client _client;

  MediaPickerFacade(this._filePicker, this._client);

  @override
  Future<Either<MediaFailure, Media>> uploadFromDevice() async {
    final result = await _filePicker.pickFiles(
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

  @override
  Future<Either<MediaFailure, Media>> downloadFromUrl({
    required String url,
  }) async {
    try {
      final result = await _client.get(Uri.parse(url));

      final dir = await getApplicationDocumentsDirectory();

      final file = File(join(dir.path, basename(url)));

      await file.writeAsBytes(result.bodyBytes);

      final media = Media(file: file);
      return right(media);
    } catch (_) {
      return Future.value(left(const MediaFailure.downloadFailure()));
    }
  }

  double _getImageSizeMB(PlatformFile file) {
    return file.size / 1024 / 1024;
  }
}
