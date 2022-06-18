import 'package:dartz/dartz.dart';
import 'package:synchrowise/infrastructure/core/share_facade/failure/share_failure.dart';

abstract class IShareFacade {
  Future<Either<ShareFailure, Unit>> share({
    required String text,
    String? subject,
  });
}
