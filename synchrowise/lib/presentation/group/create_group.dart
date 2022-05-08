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

class CreateGroup extends StatefulWidget {
  const CreateGroup({Key? key}) : super(key: key);

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
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
        return current.groupNameFailureOrUnitOption.isSome() ||
            current.groupDescFailureOrUnitOption.isSome() ||
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
                  // Todo : logout user
                },
                orElse: () {
                  showErrorToast("unknown_error".tr(), ToastGravity.BOTTOM);
                },
              );
            },
            (_) {},
          );
        } else if (state.groupNameFailureOrUnitOption.isSome()) {
          final failureOrUnit = state.groupNameFailureOrUnitOption
              .getOrElse(() => throw AssertionError());

          failureOrUnit.fold(
            (f) {
              f.map(
                connection: (_) {
                  showErrorToast("connection_error".tr(), ToastGravity.BOTTOM);
                },
                server: (_) {
                  showErrorToast("server_error".tr(), ToastGravity.BOTTOM);
                },
                unknown: (_) {
                  showErrorToast("unknown_error".tr(), ToastGravity.BOTTOM);
                },
                notFound: (_) {
                  showErrorToast("not_found_error".tr(), ToastGravity.BOTTOM);
                },
              );
            },
            (_) {},
          );
        } else if (state.groupDescFailureOrUnitOption.isSome()) {
          final failureOrUnit = state.groupDescFailureOrUnitOption
              .getOrElse(() => throw AssertionError());

          failureOrUnit.fold(
            (f) {
              f.map(
                connection: (_) {
                  showErrorToast("connection_error".tr(), ToastGravity.BOTTOM);
                },
                server: (_) {
                  showErrorToast("server_error".tr(), ToastGravity.BOTTOM);
                },
                unknown: (_) {
                  showErrorToast("unknown_error".tr(), ToastGravity.BOTTOM);
                },
                notFound: (_) {
                  showErrorToast("not_found_error".tr(), ToastGravity.BOTTOM);
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
        return current.failureOrGroupDescOption.isSome() &&
            current.failureOrGroupNameOption.isSome() &&
            current.storageFailureOrUnitOption.isSome();
      },
      listener: (context, state) {
        final groupDescSuccess = state.failureOrGroupDescOption
            .fold(() => throw AssertionError(), (fou) => fou.isRight());

        final storageSuccess = state.storageFailureOrUnitOption
            .fold(() => throw AssertionError(), (fos) => fos.isRight());

        final groupNameSuccess = state.failureOrGroupNameOption
            .fold(() => throw AssertionError(), (foa) => foa.isRight());

        final success = groupNameSuccess && storageSuccess && groupDescSuccess;

        if (success) {
          // TODO : go to group info page
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
