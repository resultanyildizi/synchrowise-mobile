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
      listener: (context, state) {
        state.registerFailureOrUnitOption.fold(
          () => null,
          (failureOrUnit) {
            failureOrUnit.fold(
              (failure) {
                failure.maybeMap(
                  server: (_) {
                    showErrorToast(
                        "connection_error".tr(), ToastGravity.BOTTOM);
                  },
                  unknown: (_) {
                    showErrorToast("unknown_error".tr(), ToastGravity.BOTTOM);
                  },
                  // : (_) {
                  //   showErrorToast(
                  //       "username_is_taken".tr(), ToastGravity.BOTTOM);
                  // },
                  orElse: () {},
                );
              },
              (_) => null,
            );
          },
        );

        state.failureOrImageOption.fold(
          () => null,
          (failureOrUnit) {
            failureOrUnit.fold(
              (failure) {
                failure.maybeMap(
                  imagePick: (_) {
                    showErrorToast(
                        "image_pick_failed".tr(), ToastGravity.BOTTOM);
                  },
                  imageCrop: (_) {
                    showErrorToast(
                        "image_cropper_failed".tr(), ToastGravity.BOTTOM);
                  },
                  imageSize: (_) {
                    showErrorToast("image_too_large".tr(), ToastGravity.BOTTOM);
                  },
                  orElse: () {},
                );
              },
              (_) => null,
            );
          },
        );
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
