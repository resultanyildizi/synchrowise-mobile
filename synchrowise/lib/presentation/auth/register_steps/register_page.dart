import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:synchrowise/application/register_steps_bloc/register_steps_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/auth/register_steps/register_steps_0.dart';
import 'package:synchrowise/presentation/auth/register_steps/register_steps_1.dart';
import 'package:synchrowise/presentation/auth/register_steps/register_steps_2.dart';
import 'package:synchrowise/presentation/core/functions/show_toast.dart';
import 'package:synchrowise/presentation/core/widgets/thin_line_stepper.dart';

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
                showErrorToast("username_is_taken", ToastGravity.BOTTOM);
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
            padding: const EdgeInsets.symmetric(
              horizontal: 35.0,
              vertical: 25.0,
            ),
            child: MultiBlocListener(
              listeners: [
                _getRegisterFailureBlocListener,
                _getRegisterPageAnimatorListener,
              ],
              child: BlocBuilder<RegisterStepsBloc, RegisterStepsState>(
                builder: (context, state) {
                  log(state.toString());
                  log(state.step.toString());

                  return Column(
                    children: [
                      ThinLineStepper(
                        lineCount: 3,
                        activeLineIndex: {state.step},
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
