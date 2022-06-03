import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/application/core/input_validator.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';
import 'package:synchrowise/infrastructure/failures/value_failure.dart';

part 'contact_us_event.dart';
part 'contact_us_state.dart';
part 'contact_us_bloc.freezed.dart';

class ContactUsBloc extends Bloc<ContactUsEvent, ContactUsState> {
  ContactUsBloc() : super(ContactUsState.initial()) {
    on<ContactUsEvent>((event, emit) {
      event.map(
        send: (event) async {
          ///* Sends the contact form to the server

          final email = state.failureOrEmailOption.fold(
            () => null,
            (failureOrEmail) =>
                failureOrEmail.fold((_) => null, (email) => email),
          );

          final subject = state.failureOrSubjectOption.fold(
            () => null,
            (failureOrSubject) =>
                failureOrSubject.fold((_) => null, (subject) => subject),
          );

          final message = state.failureOrMessageOption.fold(
            () => null,
            (failureOrMessage) =>
                failureOrMessage.fold((_) => null, (message) => message),
          );

          if (email != null && subject != null && message != null) {
            emit(state.copyWith(
              failureOrEmailOption: none(),
              failureOrSubjectOption: none(),
              failureOrMessageOption: none(),
              isSending: true,
              showErrors: true,
            ));

            // TODO: Send contact us email

            const failureOrUnit = Right<SynchrowiseFailure, Unit>(unit);

            emit(state.copyWith(
              sendFailureOrUnitOption: some(failureOrUnit),
              isSending: false,
            ));
          } else {
            emit(state.copyWith(showErrors: true));
          }
        },
        updateEmailText: (event) {
          //* Updates and validates the email text

          emit(state.copyWith(
              failureOrEmailOption: some(validateEmail(email: event.email))));
        },
        updateSubjectText: (event) {
          //* Updates and validates the subject text

          emit(state.copyWith(
              failureOrSubjectOption:
                  some(validateSubject(subject: event.subject.trim()))));
        },
        updateMessageText: (event) {
          //* Updates and validates the message text

          emit(state.copyWith(
              failureOrMessageOption:
                  some(validateMessage(message: event.message.trim()))));
        },
      );
    });
  }
}
