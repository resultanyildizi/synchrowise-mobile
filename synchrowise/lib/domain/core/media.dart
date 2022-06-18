import 'dart:developer';
import 'dart:io';
import 'package:equatable/equatable.dart';
import 'package:path/path.dart';

class Media extends Equatable {
  final File file;

  const Media({required this.file});

  MediaType get type {
    final ext = extension(file.path);

    log(ext);

    if (ext == '.mp4' ||
        ext == '.mov' ||
        ext == '.avi' ||
        ext == '.mpg' ||
        ext == '.mpeg') {
      return MediaType.video;
    } else if (ext == '.mp3' || ext == '.wav') {
      return MediaType.audio;
    } else {
      return MediaType.unknown;
    }
  }

  @override
  List<Object?> get props => [];
}

enum MediaType { audio, video, unknown }
