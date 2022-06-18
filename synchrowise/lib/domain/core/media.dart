import 'dart:developer';
import 'dart:io';
import 'package:equatable/equatable.dart';
import 'package:path/path.dart';

class Media extends Equatable {
  final File file;

  const Media({required this.file});

  MediaType get type {
    final videoexts = ['.mp4', '.mov', '.m4v', '.avi', '.flv', '.wmv'];
    final audioexts = ['.mp3', '.wav', '.aac'];

    final ext = extension(file.path);

    if (videoexts.contains(ext)) {
      return MediaType.video;
    } else if (audioexts.contains(ext)) {
      return MediaType.audio;
    } else {
      return MediaType.unknown;
    }
  }

  @override
  List<Object?> get props => [];
}

enum MediaType { audio, video, unknown }
