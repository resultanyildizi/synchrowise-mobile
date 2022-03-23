import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/register_steps_bloc/register_steps_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/auth/register_steps/register_steps_2.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';
import 'package:synchrowise/presentation/helpers/default_text_field.dart';

class RegisterSteps1 extends StatelessWidget {
  const RegisterSteps1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterStepsBloc, RegisterStepsState>(
      listener: (context, state) {},
      builder: (context, state) {
        final registerStepsBloc = context.read<RegisterStepsBloc>();
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 35.0,
                vertical: 25.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 64),
                  Text(
                    "Username",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  const SizedBox(height: 30),
                  DefaultTextField(
                      icon: null,
                      hintText: "Username",
                      onChanged: (username) {
                        registerStepsBloc.updateUsernameText(
                            username: username);
                      },
                      errorText: state.failureOrUsernameOption.fold(
                        () => state.showErrors ? "Username is not empty" : null,
                        (fou) => fou.fold(
                          (l) {
                            return l.maybeMap(
                              invalidUsername: (_) {
                                return "Invalid username";
                              },
                              minLength: (value) {
                                return "Username must be at least ${value.length} characters.";
                              },
                              orElse: () {
                                return null;
                              },
                            );
                          },
                          (_) => null,
                        ),
                      )),
                  const SizedBox(height: 35),
                  DefaultButton(
                    backgroundColor: primaryColor,
                    borderColor: null,
                    textColor: kcWhiteColor,
                    text: "Continue",
                    padding: 0,
                    onTap: () {
                      state.failureOrUsernameOption.fold(
                        () => null,
                        (failureOrUnit) => failureOrUnit.fold(
                          (failure) => null,
                          (_) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterSteps2(),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
