part of 'share_content_bloc.dart';

@freezed
class ShareContentState with _$ShareContentState {
  const factory ShareContentState({
    required Option<Either<ShareFailure, Unit>> failureOrUnitOption,
  }) = _ShareContentState;

  factory ShareContentState.initial() {
    return ShareContentState(
      failureOrUnitOption: none(),
    );
  }
}
