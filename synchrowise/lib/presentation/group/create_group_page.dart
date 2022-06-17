import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:synchrowise/application/group_bloc/create_group/create_group_bloc.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/core/functions/show_toast.dart';
import 'package:synchrowise/presentation/core/widgets/thin_line_stepper.dart';
import 'package:synchrowise/presentation/group/widgets/create_group_steps_0.dart';
import 'package:synchrowise/presentation/group/widgets/create_group_steps_1.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';
import 'package:synchrowise/route/synchrowise_route_arguments.dart';

class CreateGroupPage extends StatefulWidget {
  final void Function() onSuccess;

  const CreateGroupPage({
    Key? key,
    required this.onSuccess,
  }) : super(key: key);

  @override
  State<CreateGroupPage> createState() => _CreateGroupPageState();
}

class _CreateGroupPageState extends State<CreateGroupPage> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  void _animateToPage(int page) {
    if (_pageController.hasClients) {
      _pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  BlocListener get _getCreateGroupFailureBlocListener {
    return BlocListener<CreateGroupBloc, CreateGroupState>(
      listenWhen: (previous, current) {
        return current.submitFailureOrUnitOption.isSome() ||
            current.storageFailureOrUnitOption.isSome();
      },
      listener: (context, state) {
        if (state.storageFailureOrUnitOption.isSome()) {
          final failureOrUnit = state.storageFailureOrUnitOption
              .getOrElse(() => throw AssertionError());

          failureOrUnit.fold(
            (f) {
              f.maybeMap(
                get: (_) {
                  SynchrowiseNavigator.pushNamedAndRemoveUntil(
                    context,
                    "/welcome",
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
        } else if (state.submitFailureOrUnitOption.isSome()) {
          final failureOrUnit = state.submitFailureOrUnitOption
              .getOrElse(() => throw AssertionError());

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
      },
    );
  }

  BlocListener get _getCreateGroupSuccessBlocListener {
    return BlocListener<CreateGroupBloc, CreateGroupState>(
      listenWhen: (previous, current) {
        return current.submitFailureOrUnitOption.isSome() &&
            current.storageFailureOrUnitOption.isSome();
      },
      listener: (context, state) {
        final storageSuccess = state.storageFailureOrUnitOption
            .fold(() => throw AssertionError(), (fos) => fos.isRight());

        final groupNameSuccess = state.submitFailureOrUnitOption
            .fold(() => throw AssertionError(), (foa) => foa.isRight());

        final success = groupNameSuccess && storageSuccess;

        if (success) {
          widget.onSuccess();
        }
      },
    );
  }

  BlocListener get _getCreateGroupPageAnimatorListener {
    return BlocListener<CreateGroupBloc, CreateGroupState>(
      listenWhen: (previous, current) => previous.step != current.step,
      listener: (context, state) {
        _animateToPage(state.step);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CreateGroupBloc>(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: MultiBlocListener(
              listeners: [
                _getCreateGroupPageAnimatorListener,
                _getCreateGroupFailureBlocListener,
                _getCreateGroupSuccessBlocListener
              ],
              child: BlocBuilder<CreateGroupBloc, CreateGroupState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: ThinLineStepper(
                          lineCount: 2,
                          activeLineIndex: {state.step},
                        ),
                      ),
                      Expanded(
                        child: PageView(
                          physics: const NeverScrollableScrollPhysics(),
                          controller: _pageController,
                          children: const [
                            CreateGroupSteps0(),
                            CreateGroupSteps1(),
                          ],
                        ),
                      ),
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
