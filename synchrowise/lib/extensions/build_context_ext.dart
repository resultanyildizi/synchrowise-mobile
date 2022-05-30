import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/error/unexpected_case_error.dart';

extension BuildContextExt on BuildContext {
  SynchrowiseUser get synchrowiseUser {
    final authState = read<AuthBloc>().state;

    return authState.maybeMap(
      authorized: (authState) => authState.user,
      orElse: () => throw UnexpectedCaseError("AuthState is not authorized"),
    );
  }
}
