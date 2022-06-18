import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/core/share_facade/failure/share_failure.dart';
import 'package:synchrowise/infrastructure/core/share_facade/i_share_facade.dart';

part 'share_content_event.dart';
part 'share_content_state.dart';
part 'share_content_bloc.freezed.dart';

class ShareContentBloc extends Bloc<ShareContentEvent, ShareContentState> {
  final IShareFacade _iShareFacade;

  void share({required String text, String? subject}) {
    add(ShareContentEvent.share(text: text, subject: subject));
  }

  ShareContentBloc(this._iShareFacade) : super(ShareContentState.initial()) {
    on<ShareContentEvent>((event, emit) async {
      await event.map(share: (e) async {
        emit(state.copyWith(failureOrUnitOption: none()));

        final fou = await _iShareFacade.share(
          text: e.text,
          subject: e.subject,
        );

        emit(state.copyWith(failureOrUnitOption: some(fou)));
      });
    });
  }
}
