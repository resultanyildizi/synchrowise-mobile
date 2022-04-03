import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';
import 'package:localstorage/localstorage.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/env.dart';
import 'package:synchrowise/infrastructure/auth/failure/auth_failure.dart';
import 'package:synchrowise/infrastructure/core/local_storage_keys.dart';
import 'package:synchrowise/infrastructure/core/string_values.dart';
import 'package:synchrowise/infrastructure/auth/i_auth_facade.dart';

class AuthFacade implements IAuthFacade {
  ///* Dependencies
  final LocalStorage _localStorage;
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final Client _client;

  ///* Constructor
  const AuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
    this._localStorage,
    this._client,
  );

  @override
  Future<Either<AuthFailure, SynchrowiseUser>> getSignedInUser() async {
    try {
      final currentUser = _firebaseAuth.currentUser;

      log(currentUser.toString());

      if (currentUser == null) {
        return left(const AuthFailure.signInRequired());
      } else {
        final synchrowiseUserMap = await _localStorage.getItem(
          LocalStorageKeys.synchrowiseUser,
        ) as Map<String, dynamic>?;

        log(synchrowiseUserMap.toString());

        if (synchrowiseUserMap != null) {
          final synchrowiseUser = SynchrowiseUser.fromMap(synchrowiseUserMap);
          return right(synchrowiseUser);
        } else {
          return left(const AuthFailure.signInRequired());
        }
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

        final isNewUser = userCredential.additionalUserInfo?.isNewUser ?? false;

        if (isNewUser) {
          return _createUser(userCredential);
        }
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
      } else {
        return left(const AuthFailure.unknown());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return _createUser(userCredential);
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
    } catch (_) {
      return left(const AuthFailure.unknown());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

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

  Future<Either<AuthFailure, Unit>> deleteAccount() async {
    try {
      _firebaseAuth.currentUser?.delete();
      _googleSignIn.signOut();

      // Todo send request to backend api

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

  Future<Either<AuthFailure, Unit>> _createUser(
    UserCredential userCredential,
  ) async {
    final additionalUserInfo = userCredential.additionalUserInfo;
    final credential = userCredential.credential;
    final user = userCredential.user;

    if (user != null) {
      final firebaseToken = await user.getIdToken();

      final uri = Uri.parse("$baseApiUrl/api/User");

      final requestBody = {
        'firebase_uid': user.uid,
        'firebase_id_token': firebaseToken,
        'email': user.email,
        'email_verified': user.emailVerified,
        'is_New_user': additionalUserInfo?.isNewUser,
        'signin_method': credential?.signInMethod ?? 'null',
        'firebase_Creation_Time':
            user.metadata.creationTime?.millisecondsSinceEpoch,
        'firebase_Last_Signin_Time':
            user.metadata.lastSignInTime?.millisecondsSinceEpoch,
      };

      final result = await _client.post(
        uri,
        body: jsonEncode(requestBody),
        headers: {HeaderKeys.contentType: HeaderValues.contentType},
      );

      if (result.statusCode == 200) {
        final body = jsonDecode(result.body) as Map<String, dynamic>;

        final bodyData = (body['data'] ?? {}) as Map<String, dynamic>;

        final data = Map<String, dynamic>.from(bodyData);

        data.addAll({
          'email': user.email,
          'firebaseId': user.uid,
          'firebaseIdToken': firebaseToken,
          'signInMethod': credential?.signInMethod,
        });

        log("writing user to storage: " + data.toString());

        await _localStorage.setItem(LocalStorageKeys.synchrowiseUser, data);

        return right(unit);
      } else if (result.statusCode == 500) {
        return left(const AuthFailure.serverInternal());
      } else {
        final body = jsonDecode(result.body) as Map<String, dynamic>;
        final error = body["error"] as Map<String, dynamic>;
        final errorList = (error['errors'] as List<dynamic>).cast();

        if (errorList.contains('This is user is exist')) {
          return left(const AuthFailure.emailAlreadyInUse());
        }
      }
    }

    return left(const AuthFailure.unknown());
  }

  // Future<Either<AuthFailure, SynchrowiseUser>> _getUserFromApi(
  //   UserCredential userCredential,
  // ) async {
  //   final credential = userCredential.credential;
  //   final user = userCredential.user;

  //   if (user != null) {
  //     final firebaseToken = await user.getIdToken();

  //     final uri = Uri.parse("$baseApiUrl/api/User/firebase/${user.uid}");

  //     final result = await _client.get(
  //       uri,
  //       headers: {HeaderKeys.contentType: HeaderValues.contentType},
  //     );

  //     if (result.statusCode == 200) {
  //       final body = jsonDecode(result.body) as Map<String, dynamic>;

  //       final bodyData = (body['data'] ?? {}) as Map<String, dynamic>;

  //       final data = Map<String, dynamic>.from(bodyData);

  //       data.addAll({
  //         'email': user.email,
  //         'firebaseId': user.uid,
  //         'firebaseIdToken': firebaseToken,
  //         'signInMethod': credential?.signInMethod,
  //       });

  //       return right(SynchrowiseUser.fromMap(data));
  //     } else if (result.statusCode == 500) {
  //       return left(const AuthFailure.unknown());
  //     } else {
  //       final body = jsonDecode(result.body) as Map<String, dynamic>;
  //     }
  //   }
  //   return left(const AuthFailure.unknown());
  // }
}
