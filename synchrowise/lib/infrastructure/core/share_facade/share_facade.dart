import 'package:dartz/dartz.dart';
import 'package:share_plus/share_plus.dart';
import 'package:synchrowise/infrastructure/core/share_facade/failure/share_failure.dart';
import 'package:synchrowise/infrastructure/core/share_facade/i_share_facade.dart';

class ShareFacade implements IShareFacade {
  @override
  Future<Either<ShareFailure, Unit>> share({
    required String text,
    String? subject,
  }) async {
    try {
      await Share.share(text, subject: subject);
      return right(unit);
    } catch (_) {
      return left(const ShareFailure.unknown());
    }
  }
}
