import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/auth/auth_facade/failure/auth_facade_failure.dart';

abstract class IAuthFacade {
  ///* Deletes the user account
  ///*
  ///* Returns `unit` if it is successful
  ///* Returns `AuthFailure` if an exception occurs
  Future<Either<AuthFacadeFailure, Unit>> deleteAccount();

  ///* Signs out the user
  ///*
  ///* Returns `unit` if it is successful
  ///* Returns `AuthFailure` if an exception occurs
  Future<Either<AuthFacadeFailure, Unit>> signOut();

  ///* Signs in with Google Auth service
  ///*
  ///* Returns `SynchrowiseUser` if it is successful
  ///* Returns `AuthFailure` if an exception occurs
  Future<Either<AuthFacadeFailure, SynchrowiseUser>> signInWithGoogleAuth();

  ///* Creates a user with `email` and `password`
  ///*
  ///* Returns `SynchrowiseUser` if it is successful
  ///* Returns `AuthFailure` if an exception occurs
  Future<Either<AuthFacadeFailure, SynchrowiseUser>>
      signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  ///* Signs in with `email` and `password`
  ///*
  ///* Returns `SynchrowiseUser` if it is successful
  ///* Returns `AuthFailure` if an exception occurs
  Future<Either<AuthFacadeFailure, SynchrowiseUser>>
      signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  ///* Gets the signed in user account
  ///*
  ///* Returns `SynchrowiseUser` if it is successful
  ///* Returns `AuthFailure` if an exception occurs
  Future<Either<AuthFacadeFailure, Unit>> checkUserExists();
}
