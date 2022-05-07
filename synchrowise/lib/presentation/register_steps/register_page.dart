import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:synchrowise/application/register_steps_bloc/register_steps_bloc.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/core/functions/show_toast.dart';
import 'package:synchrowise/presentation/core/widgets/thin_line_stepper.dart';
import 'package:synchrowise/presentation/register_steps/register_steps_0.dart';
import 'package:synchrowise/presentation/register_steps/register_steps_1.dart';
import 'package:synchrowise/presentation/register_steps/register_steps_2.dart';
import 'package:synchrowise/presentation/register_steps/widgets/registered_successful_bottom_sheet.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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

  BlocListener get _getRegisterFailureBlocListener {
    return BlocListener<RegisterStepsBloc, RegisterStepsState>(
      listenWhen: (previous, current) {
        return current.failureOrAvatarOption.isSome() ||
            current.failureOrImageOption.isSome() ||
            current.usernameFailureOrUnitOption.isSome() ||
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
        } else if (state.usernameFailureOrUnitOption.isSome()) {
          final failureOrUnit = state.usernameFailureOrUnitOption
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
              );
            },
            (_) {},
          );
        } else if (state.failureOrAvatarOption.isSome()) {
          final failureOrUnit = state.failureOrAvatarOption
              .getOrElse(() => throw AssertionError());

          failureOrUnit.fold(
            (f) {
              f.map(
                server: (_) {
                  showErrorToast("server_error".tr(), ToastGravity.BOTTOM);
                },
              );
            },
            (_) {},
          );
        } else if (state.failureOrImageOption.isSome()) {
          final failureOrUnit = state.failureOrImageOption
              .getOrElse(() => throw AssertionError());

          failureOrUnit.fold(
            (f) {
              f.map(
                imageCrop: (_) {
                  showErrorToast("image_crop_error".tr(), ToastGravity.BOTTOM);
                },
                imagePick: (_) {
                  showErrorToast("image_pick_error".tr(), ToastGravity.BOTTOM);
                },
                imageSize: (_) {
                  showErrorToast("image_size_error".tr(), ToastGravity.BOTTOM);
                },
              );
            },
            (_) {},
          );
        }
      },
    );
  }

  BlocListener get _getRegisterSuccessBlocListener {
    return BlocListener<RegisterStepsBloc, RegisterStepsState>(
      listenWhen: (previous, current) {
        return current.failureOrAvatarOption.isSome() &&
            current.failureOrImageOption.isSome() &&
            current.usernameFailureOrUnitOption.isSome() &&
            current.storageFailureOrUnitOption.isSome();
      },
      listener: (context, state) {
        final imageSuccess = state.failureOrImageOption
            .fold(() => throw AssertionError(), (foi) => foi.isRight());

        final usernameSuccess = state.failureOrImageOption
            .fold(() => throw AssertionError(), (fou) => fou.isRight());

        final storageSuccess = state.storageFailureOrUnitOption
            .fold(() => throw AssertionError(), (fos) => fos.isRight());

        final avatarSuccess = state.failureOrAvatarOption
            .fold(() => throw AssertionError(), (foa) => foa.isRight());

        final success =
            imageSuccess && usernameSuccess && storageSuccess && avatarSuccess;

        if (success) {
          return registeredSuccessfulBottomSheet(context);
        }
      },
    );
  }

  BlocListener get _getRegisterPageAnimatorListener {
    return BlocListener<RegisterStepsBloc, RegisterStepsState>(
      listenWhen: (previous, current) => previous.step != current.step,
      listener: (context, state) {
        _animateToPage(state.step);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterStepsBloc>(
      create: (context) => getIt<RegisterStepsBloc>(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: MultiBlocListener(
              listeners: [
                _getRegisterFailureBlocListener,
                _getRegisterSuccessBlocListener,
                _getRegisterPageAnimatorListener,
              ],
              child: BlocBuilder<RegisterStepsBloc, RegisterStepsState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: ThinLineStepper(
                          lineCount: 3,
                          activeLineIndex: {state.step},
                        ),
                      ),
                      Expanded(
                        child: PageView(
                          physics: const NeverScrollableScrollPhysics(),
                          controller: _pageController,
                          children: const [
                            RegisterSteps0(),
                            RegisterSteps1(),
                            RegisterSteps2(),
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
