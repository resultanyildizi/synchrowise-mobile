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
  const AuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

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

        final user = await userCredential.toSynchrowiseUser();

        if (user == null) {
          return left(const AuthFacadeFailure.signInRequired());
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
      _firebaseAuth.currentUser?.delete();
      _googleSignIn.signOut();

      // Todo send request to backend api

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "requires-recent-login") {
        return left(const AuthFacadeFailure.invalidEmail());
      } else {
        return left(const AuthFacadeFailure.unknown());
      }
    }
  }

  @override
  Future<Either<AuthFacadeFailure, Unit>> signOut() async {
    try {
      await Future.wait([_firebaseAuth.signOut(), _googleSignIn.signOut()]);
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

  // Future<Either<AuthFacadeFailure, Unit>> _createUser(
  //   UserCredential userCredential,
  // ) async {
  //   final additionalUserInfo = userCredential.additionalUserInfo;
  //   final credential = userCredential.credential;
  //   final user = userCredential.user;

  //   if (user != null) {
  //     log("user is not null");

  //     final firebaseToken = await user.getIdToken();

  //     final uri = Uri.parse("${dotenv.get("BACKEND_URL")}/api/User");

  //     final requestBody = {
  //       'firebase_uid': user.uid,
  //       'firebase_id_token': firebaseToken,
  //       'email': user.email,
  //       'email_verified': user.emailVerified,
  //       'is_New_user': additionalUserInfo?.isNewUser,
  //       'signin_method': credential?.signInMethod ?? 'null',
  //       'firebase_Creation_Time':
  //           user.metadata.creationTime?.millisecondsSinceEpoch,
  //       'firebase_Last_Signin_Time':
  //           user.metadata.lastSignInTime?.millisecondsSinceEpoch,
  //     };

  //     log("sending post request to '${dotenv.get("BACKEND_URL")}/api/User'");

  //     final result = await _client.post(
  //       uri,
  //       body: jsonEncode(requestBody),
  //       headers: {HeaderKeys.contentType: HeaderValues.contentType},
  //     );

  //     // log result status and result body
  //     log("result status: ${result.statusCode}");
  //     log("result body: ${result.body}");

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

  //       log("writing user to storage: " + data.toString());

  //       await _localStorage.setItem(LocalStorageKeys.synchrowiseUser, data);

  //       return right(unit);
  //     } else if (result.statusCode == 500) {
  //       return left(const AuthFacadeFailure.serverInternal());
  //     } else if (result.statusCode == 404) {
  //       return left(const AuthFacadeFailure.unknown());
  //     } else {
  //       log(result.body);
  //       final body = jsonDecode(result.body) as Map<String, dynamic>;
  //       final error = body["error"] as Map<String, dynamic>;
  //       final errorList = (error['errors'] as List<dynamic>).cast();

  //       if (errorList.contains('This is user is exist')) {
  //         return left(const AuthFacadeFailure.emailAlreadyInUse());
  //       }
  //     }
  //   }

  //   return left(const AuthFacadeFailure.unknown());
  // }

  // Future<Either<AuthFacadeFailure, Unit>> _getUserFromApi(
  //   UserCredential userCredential,
  // ) async {
  //   final credential = userCredential.credential;
  //   final user = userCredential.user;

  //   if (user != null) {
  //     final firebaseToken = await user.getIdToken();

  //     final uri = Uri.parse(
  //         "${dotenv.get("BACKEND_URL")}/api/User/firebase/${user.uid}");

  //     final result = await _client.get(
  //       uri,
  //       headers: {HeaderKeys.contentType: HeaderValues.contentType},
  //     );

  //     log(result.statusCode.toString());

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

  //       log("writing user to storage: " + data.toString());

  //       await _localStorage.setItem(LocalStorageKeys.synchrowiseUser, data);

  //       return right(unit);
  //     } else if (result.statusCode == 500) {
  //       return left(const AuthFacadeFailure.unknown());
  //     } else if (result.statusCode == 404) {
  //       return left(const AuthFacadeFailure.unknown());
  //     } else {
  //       final body = jsonDecode(result.body) as Map<String, dynamic>;
  //       final error = body["error"] as Map<String, dynamic>;
  //       final errorList = (error['errors'] as List<dynamic>).cast();

  //       if (errorList.contains('This is user is exist')) {
  //         return left(const AuthFacadeFailure.emailAlreadyInUse());
  //       }
  //     }
  //   }
  //   return left(const AuthFacadeFailure.unknown());
  // }
}
