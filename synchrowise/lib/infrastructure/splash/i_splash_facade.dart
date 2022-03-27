import 'package:dartz/dartz.dart';
import 'package:synchrowise/infrastructure/splash/failure/splash_failure.dart';

abstract class ISplashFacade {
  ///* Checks if application needs updating
  ///* Returns `true` if application needs updating
  ///* Returns `SplashFailure` if an exception occurs
  Future<Either<SplashFailure, bool>> isUpdateNeeded();
}
