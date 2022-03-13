import 'package:dartz/dartz.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/failures/auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, SynchrowiseUser>> signInWithGoogleAuth();
  Future<Either<AuthFailure, SynchrowiseUser>> getSignedInUser();
  Future<Either<AuthFailure, SynchrowiseUser>> createUserWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<AuthFailure, SynchrowiseUser>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
}
