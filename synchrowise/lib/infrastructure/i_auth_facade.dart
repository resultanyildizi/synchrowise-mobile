import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/failures/auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithGoogleAuth();
  Future<Either<AuthFailure, SynchrowiseUser>> getSignedInUser();
  Future<Either<AuthFailure, UserCredential>> createUserWithEmailAndPassword({
    required String email,
    required String password,
  });
}
