part of 'share_content_bloc.dart';

@freezed
class ShareContentEvent with _$ShareContentEvent {
  const factory ShareContentEvent.share({
    required String text,
    String? subject,
  }) = _ShareEvent;
}
