import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:synchrowise/domain/core/media.dart';
import 'package:synchrowise/infrastructure/core/media_facade/failure/media_failure.dart';

abstract class IMediaPickerFacade {
  Future<Either<MediaFailure, Media>> uploadFromDevice();
}
