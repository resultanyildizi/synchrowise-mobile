import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:synchrowise/domain/group/group_data.dart';
import 'package:synchrowise/domain/group/group_file.dart';
import 'package:synchrowise/infrastructure/group/group_file_repository/failure/group_file_repository_failure.dart';

abstract class IGroupFileRepository {
  ///* Adds the file with given `media` and `owner`.
  ///*
  ///* Returns `Unit` if it is successful.
  ///* Returns `GroupFileRepositoryFailure` if an exception occurs.
  Future<Either<GroupFileRepositoryFailure, GroupFile>> create({
    required File media,
    required GroupData groupData,
  });
}
