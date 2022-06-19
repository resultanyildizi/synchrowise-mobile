import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:synchrowise/application/group/group_session_bloc/group_session_bloc.dart';
import 'package:synchrowise/domain/group/group_data.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/auth/welcome_page.dart';
import 'package:synchrowise/presentation/core/functions/show_toast.dart';
import 'package:synchrowise/presentation/group/widgets/group_buttons.dart';
import 'package:synchrowise/presentation/group/widgets/group_header.dart';
import 'package:synchrowise/presentation/group/widgets/group_participant.dart';
import 'package:synchrowise/presentation/group/widgets/media_player.dart';
import 'package:synchrowise/presentation/main/main_page.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';
import 'package:synchrowise/route/synchrowise_route_arguments.dart';

class GroupSessionPage extends StatelessWidget {
  static const routeName = '/main/group-session';
  const GroupSessionPage({Key? key, required this.groupData}) : super(key: key);

  final GroupData groupData;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GroupSessionBloc>(
      create: (context) {
        final bloc = getIt<GroupSessionBloc>();
        return bloc;
      },
      child: Provider<GroupData>(
        create: (context) => groupData,
        child: WillPopScope(
          onWillPop: () async => false,
          child: Scaffold(
            body: SafeArea(
              child: BlocConsumer<GroupSessionBloc, GroupSessionState>(
                listenWhen: (previous, current) {
                  return current.failureOrMediaOption.isSome() ||
                      current.fileFailureOrUnitOption.isSome() ||
                      current.groupFailureOrUnitOption.isSome() ||
                      current.storageFailureOrUnitOption.isSome();
                },
                listener: (context, state) {
                  _handleStorageFailure(context, state);
                  _handleGroupFailure(context, state);
                  _handleFileFailure(state);
                  _handleMediaFailure(state);
                },
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      MediaPlayer(),
                      SizedBox(height: 30),
                      GroupHeader(),
                      SizedBox(height: 20),
                      GroupParticipant(),
                      GroupButtons(),
                      SizedBox(height: 10),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void _handleMediaFailure(GroupSessionState state) {
  final failureOrUnit =
      state.failureOrMediaOption.getOrElse(() => throw AssertionError());

  failureOrUnit.fold(
    (f) {
      f.maybeMap(
        pickFailure: (_) {
          showErrorToast("pick_error".tr(), ToastGravity.BOTTOM);
        },
        sizeFailure: (_) {
          showErrorToast("size_error".tr(), ToastGravity.BOTTOM);
        },
        unsupportedFailure: (_) {
          showErrorToast("unsupported_error".tr(), ToastGravity.BOTTOM);
        },
        orElse: () {
          showErrorToast("unknown_error".tr(), ToastGravity.BOTTOM);
        },
      );
    },
    (_) {},
  );
}

void _handleFileFailure(GroupSessionState state) {
  final failureOrUnit =
      state.fileFailureOrUnitOption.getOrElse(() => throw AssertionError());

  failureOrUnit.fold(
    (f) {
      f.maybeMap(
        connection: (_) {
          showErrorToast("connection_error".tr(), ToastGravity.BOTTOM);
        },
        server: (_) {
          showErrorToast("server_error".tr(), ToastGravity.BOTTOM);
        },
        orElse: () {
          showErrorToast("unknown_error".tr(), ToastGravity.BOTTOM);
        },
      );
    },
    (_) {},
  );
}

void _handleGroupFailure(BuildContext context, GroupSessionState state) {
  final failureOrUnit =
      state.groupFailureOrUnitOption.getOrElse(() => throw AssertionError());

  failureOrUnit.fold(
    (f) {
      f.maybeMap(
        connection: (_) {
          showErrorToast("connection_error".tr(), ToastGravity.BOTTOM);
        },
        server: (_) {
          showErrorToast("server_error".tr(), ToastGravity.BOTTOM);
        },
        notFound: (_) {
          showErrorToast("not_found".tr(), ToastGravity.BOTTOM);
        },
        orElse: () {
          showErrorToast("unknown_error".tr(), ToastGravity.BOTTOM);
        },
      );
    },
    (_) {
      SynchrowiseNavigator.pushNamed(context, MainPage.routeName);
    },
  );
}

void _handleStorageFailure(BuildContext context, GroupSessionState state) {
  final failureOrUnit =
      state.storageFailureOrUnitOption.getOrElse(() => throw AssertionError());

  failureOrUnit.fold(
    (f) {
      f.maybeMap(
        get: (_) {
          SynchrowiseNavigator.pushNamedAndRemoveUntil(
            context,
            WelcomePage.routeName,
            (route) => false,
            arguments: SynchrowiseRouteArguments(context),
          );
        },
        orElse: () {
          showErrorToast("unknown_error".tr(), ToastGravity.BOTTOM);
        },
      );
    },
    (_) {},
  );
}
