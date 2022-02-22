import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:synchrowise/infrastructure/failures/auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, UserCredential>> signInWithGoogleAuth();
}
