import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:synchrowise/domain/auth/avatar.dart';
import 'package:synchrowise/infrastructure/auth/avatar_repository/failure/avatar_failure.dart';

abstract class IAvatarRepository {
  Future<Either<AvatarRepositoryFailure, Avatar>> create({
    required File avatar,
    required String ownerId,
  });
}
