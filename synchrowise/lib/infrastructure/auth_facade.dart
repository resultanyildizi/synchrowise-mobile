import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:synchrowise/infrastructure/failures/auth_failure.dart';

import 'package:synchrowise/infrastructure/i_auth_facade.dart';

class AuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  const AuthFacade(this._firebaseAuth, this._googleSignIn);

  Future<Either<AuthFailure, UserCredential>> signInWithGoogleAuth() async {
    try {
      if (_googleSignIn.currentUser != null) await _googleSignIn.signOut();

      final googleAcc = await _googleSignIn.signIn();

      if (googleAcc != null) {
        final googleAuth = await googleAcc.authentication;

        final googleCred = GoogleAuthProvider.credential(
          idToken: googleAuth.idToken,
          accessToken: googleAuth.accessToken,
        );

        final userCredential =
            await _firebaseAuth.signInWithCredential(googleCred);

        return right(userCredential);
      } else {
        return left(const UserCancelledFailure());
      }
    } on PlatformException catch (_) {
      await _googleSignIn.signOut();
      return left(const UknownAuthFailure());
    } on FirebaseAuthException catch (e) {
      await _googleSignIn.signOut();
      if (e.code == "account-exists-with-different-credential") {
        return left(const EmailAlreadyInUseFailure());
      } else if (e.code == "user-disabled") {
        return left(const UserDisabledFailure());
      } else if (e.code == "user-not-found" || e.code == "wrong-password") {
        return left(const InvalidCredentialsFailure());
      } else if (e.code == "weak-password") {
        return left(const WeakPasswordFailure());
      } else {
        return left(const UknownAuthFailure());
      }
    }
  }

  Future<Either<AuthFailure, UserCredential>> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return right(userCredential);
    } on FirebaseAuthException catch (e) {
      if (e.code == "invalid-email") {
        return left(const InvalidEmailFailure());
      } else if (e.code == "email-already-in-use") {
        return left(const EmailAlreadyInUseFailure());
      } else if (e.code == "weak-password") {
        return left(const WeakPasswordFailure());
      } else {
        return left(const UknownAuthFailure());
      }
    }
  }

  Future<Either<AuthFailure, UserCredential>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return right(userCredential);
    } on FirebaseAuthException catch (e) {
      if (e.code == "invalid-email") {
        return left(const InvalidEmailFailure());
      } else if (e.code == "user-disabled") {
        return left(const UserDisabledFailure());
      } else if (e.code == "user-not-found" || e.code == "wrong-password") {
        return left(const InvalidCredentialsFailure());
      } else {
        return left(const UknownAuthFailure());
      }
    }
  }

  Future<Either<AuthFailure, Unit>> deleteAccount() async {
    try {
      _firebaseAuth.currentUser?.delete();
      _googleSignIn.signOut();
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "requires-recent-login") {
        return left(const InvalidEmailFailure());
      } else {
        return left(const UknownAuthFailure());
      }
    }
  }

  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "invalid-email") {
        return left(const InvalidEmailFailure());
      } else if (e.code == "user-disabled") {
        return left(const UserDisabledFailure());
      } else if (e.code == "user-not-found" || e.code == "wrong-password") {
        return left(const InvalidCredentialsFailure());
      } else {
        return left(const UknownAuthFailure());
      }
    }
  }
}
