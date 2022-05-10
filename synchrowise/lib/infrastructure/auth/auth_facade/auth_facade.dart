import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/extensions/user_credential_ext.dart';
import 'package:synchrowise/infrastructure/auth/auth_facade/failure/auth_facade_failure.dart';
import 'package:synchrowise/infrastructure/auth/auth_facade/i_auth_facade.dart';

class AuthFacade implements IAuthFacade {
  ///* Dependencies
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  ///* Constructor
  const AuthFacade(this._firebaseAuth, this._googleSignIn);

  ///* Method implementations
  @override
  Future<Either<AuthFacadeFailure, Unit>> checkUserExists() async {
    try {
      final currentUser = _firebaseAuth.currentUser;

      if (currentUser == null) {
        return left(const AuthFacadeFailure.signInRequired());
      } else {
        return right(unit);
      }
    } catch (_) {
      return left(const AuthFacadeFailure.unknown());
    }
  }

  @override
  Future<Either<AuthFacadeFailure, SynchrowiseUser>>
      signInWithGoogleAuth() async {
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

        if (userCredential.additionalUserInfo?.isNewUser ?? false) {
          await userCredential.user?.delete();
          return left(const AuthFacadeFailure.userNotFound());
        }

        final user = await userCredential.toSynchrowiseUser();

        if (user == null) {
          return left(const AuthFacadeFailure.unknown());
        }

        return right(user);
      } else {
        return left(const AuthFacadeFailure.userCancelled());
      }
    } on PlatformException catch (_) {
      await _googleSignIn.signOut();

      return left(const AuthFacadeFailure.unknown());
    } on FirebaseAuthException catch (e) {
      await _googleSignIn.signOut();
      if (e.code == "account-exists-with-different-credential") {
        return left(const AuthFacadeFailure.emailAlreadyInUse());
      } else if (e.code == "user-disabled") {
        return left(const AuthFacadeFailure.userDisabled());
      } else if (e.code == "user-not-found" || e.code == "wrong-password") {
        return left(const AuthFacadeFailure.invalidCredentials());
      } else {
        return left(const AuthFacadeFailure.unknown());
      }
    }
  }

  @override
  Future<Either<AuthFacadeFailure, SynchrowiseUser>>
      signUpWithGoogleAuth() async {
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

        final user = await userCredential.toSynchrowiseUser();

        if (user == null) {
          return left(const AuthFacadeFailure.unknown());
        }

        return right(user);
      } else {
        return left(const AuthFacadeFailure.userCancelled());
      }
    } on PlatformException catch (_) {
      await _googleSignIn.signOut();

      return left(const AuthFacadeFailure.unknown());
    } on FirebaseAuthException catch (e) {
      await _googleSignIn.signOut();
      if (e.code == "account-exists-with-different-credential") {
        return left(const AuthFacadeFailure.emailAlreadyInUse());
      } else if (e.code == "user-disabled") {
        return left(const AuthFacadeFailure.userDisabled());
      } else if (e.code == "user-not-found" || e.code == "wrong-password") {
        return left(const AuthFacadeFailure.invalidCredentials());
      } else {
        return left(const AuthFacadeFailure.unknown());
      }
    }
  }

  @override
  Future<Either<AuthFacadeFailure, SynchrowiseUser>>
      signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = await userCredential.toSynchrowiseUser();

      if (user == null) {
        return left(const AuthFacadeFailure.signInRequired());
      }

      return right(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == "invalid-email") {
        return left(const AuthFacadeFailure.invalidEmail());
      } else if (e.code == "email-already-in-use") {
        return left(const AuthFacadeFailure.emailAlreadyInUse());
      } else if (e.code == "weak-password") {
        return left(const AuthFacadeFailure.weakPassword());
      } else {
        return left(const AuthFacadeFailure.unknown());
      }
    } catch (_) {
      return left(const AuthFacadeFailure.unknown());
    }
  }

  @override
  Future<Either<AuthFacadeFailure, SynchrowiseUser>>
      signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = await userCredential.toSynchrowiseUser();

      if (user == null) {
        return left(const AuthFacadeFailure.signInRequired());
      }

      return right(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == "invalid-email") {
        return left(const AuthFacadeFailure.invalidEmail());
      } else if (e.code == "user-disabled") {
        return left(const AuthFacadeFailure.userDisabled());
      } else if (e.code == "user-not-found" || e.code == "wrong-password") {
        return left(const AuthFacadeFailure.invalidCredentials());
      } else {
        return left(const AuthFacadeFailure.unknown());
      }
    }
  }

  @override
  Future<Either<AuthFacadeFailure, Unit>> deleteAccount() async {
    try {
      await _googleSignIn.signOut();
      await _firebaseAuth.currentUser?.delete();

      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFacadeFailure.unknown());
    }
  }

  @override
  Future<Either<AuthFacadeFailure, Unit>> signOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "invalid-email") {
        return left(const AuthFacadeFailure.invalidEmail());
      } else if (e.code == "user-disabled") {
        return left(const AuthFacadeFailure.userDisabled());
      } else if (e.code == "user-not-found" || e.code == "wrong-password") {
        return left(const AuthFacadeFailure.invalidCredentials());
      } else {
        return left(const AuthFacadeFailure.unknown());
      }
    }
  }
}
