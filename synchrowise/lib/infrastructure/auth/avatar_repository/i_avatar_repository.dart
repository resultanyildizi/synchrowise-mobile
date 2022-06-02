import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:synchrowise/domain/auth/avatar.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/auth/avatar_repository/failure/avatar_failure.dart';

abstract class IAvatarRepository {
  ///* Uploads the `avatar` image file to the server.
  ///* The server automatically updates the avatar image of the user for given `synchrowiseUser` model.
  ///*
  ///* Returns `Avatar` if it is successful
  ///* Returns `AvatarRepositoryFailure` if an exception occurs
  Future<Either<AvatarRepositoryFailure, Avatar>> upload({
    required File avatar,
    required SynchrowiseUser owner,
  });

  ///* Deletes the avatar image of the user for given `synchrowiseUser` model.
  ///*
  ///* Returns `Avatar` if it is successful
  ///* Returns `AvatarRepositoryFailure` if an exception occurs
  Future<Either<AvatarRepositoryFailure, Avatar>> delete({
    required SynchrowiseUser owner,
  });
}
