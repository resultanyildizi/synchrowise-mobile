import 'package:dartz/dartz.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_repository/failure/synchrowise_user_repository_failure.dart';

abstract class ISynchrowiseUserRepository {
  Future<Either<SynchrowiseUserRepositoryFailure, Unit>> create({
    required SynchrowiseUser synchrowiseUser,
  });

  Future<Either<SynchrowiseUserRepositoryFailure, Unit>> update({
    required SynchrowiseUser synchrowiseUser,
  });

  Future<Either<SynchrowiseUserRepositoryFailure, Unit>> delete({
    required SynchrowiseUser synchrowiseUser,
  });

  Future<Either<SynchrowiseUserRepositoryFailure, SynchrowiseUser>>
      getByCredUser({
    required SynchrowiseUser userFromCred,
  });
}
//  final requestBody = {
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