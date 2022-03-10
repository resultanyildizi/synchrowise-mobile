import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/failures/auth_failure.dart';

import 'package:synchrowise/infrastructure/i_auth_facade.dart';

class AuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final Client _client;
  const AuthFacade(this._firebaseAuth, this._googleSignIn, this._client);

  @override
  Future<Either<AuthFailure, SynchrowiseUser>> getSignedInUser() async {
    try {
      final currentUser = _firebaseAuth.currentUser;
      if (currentUser == null) {
        return left(const AuthFailure.signInRequired());
      } else {
        const pathUrl = "backendurl/signIn";
        final fidtoken = await currentUser.getIdToken();

        final response = await _client.post(
          Uri.parse(pathUrl),
          body: {
            "firebase_id": currentUser.uid,
            "firebase_token": fidtoken,
          },
        );

        if (response.statusCode == 200) {
          final data = jsonDecode(response.body) as Map<String, dynamic>;
          return right(SynchrowiseUser.fromMap(data));
        }

        // Todo: handle failures and other status codes
        return left(const AuthFailure.unknown());
      }
    } on SocketException catch (_) {
      return left(const AuthFailure.connection());
    } catch (_) {
      return left(const AuthFailure.unknown());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogleAuth() async {
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

        log(userCredential.toString());

        return right(unit);
      } else {
        return left(const AuthFailure.userCancelled());
      }
    } on PlatformException catch (_) {
      await _googleSignIn.signOut();
      return left(const AuthFailure.unknown());
    } on FirebaseAuthException catch (e) {
      await _googleSignIn.signOut();
      if (e.code == "account-exists-with-different-credential") {
        return left(const AuthFailure.emailAlreadyInUse());
      } else if (e.code == "user-disabled") {
        return left(const AuthFailure.userDisabled());
      } else if (e.code == "user-not-found" || e.code == "wrong-password") {
        return left(const AuthFailure.invalidCredentials());
      } else if (e.code == "weak-password") {
        return left(const AuthFailure.weakPassword());
      } else {
        return left(const AuthFailure.unknown());
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
        return left(const AuthFailure.invalidEmail());
      } else if (e.code == "email-already-in-use") {
        return left(const AuthFailure.emailAlreadyInUse());
      } else if (e.code == "weak-password") {
        return left(const AuthFailure.weakPassword());
      } else {
        return left(const AuthFailure.unknown());
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
        return left(const AuthFailure.invalidEmail());
      } else if (e.code == "user-disabled") {
        return left(const AuthFailure.userDisabled());
      } else if (e.code == "user-not-found" || e.code == "wrong-password") {
        return left(const AuthFailure.invalidCredentials());
      } else {
        return left(const AuthFailure.unknown());
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
        return left(const AuthFailure.invalidEmail());
      } else {
        return left(const AuthFailure.unknown());
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
        return left(const AuthFailure.invalidEmail());
      } else if (e.code == "user-disabled") {
        return left(const AuthFailure.userDisabled());
      } else if (e.code == "user-not-found" || e.code == "wrong-password") {
        return left(const AuthFailure.invalidCredentials());
      } else {
        return left(const AuthFailure.unknown());
      }
    }
  }
}
