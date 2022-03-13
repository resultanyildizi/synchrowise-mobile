import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:synchrowise/application/signin_form_bloc/signin_form_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';
import 'package:synchrowise/presentation/helpers/default_text_field.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SigninFormBloc>(
      create: (context) {
        return getIt<SigninFormBloc>();
      },
      child: BlocConsumer<SigninFormBloc, SigninFormState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: kcWhiteColor,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35.0,
                  vertical: 25.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAnimatedButton(
                      shrinkWrap: true,
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: grayDarkColor,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      "Welcome!",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Text(
                      "Sign in to continue",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const Spacer(),
                    DefaultTextField(
                      icon: Icons.email,
                      hintText: "Email",
                      onChanged: (email) {
                        final signinBloc = context.read<SigninFormBloc>();
                        signinBloc.updateEmailText(email: email);
                      },
                      errorText: state.showErrors
                          ? state.failureOrEmailOption.fold(
                              () => null,
                              (foe) => foe.fold(
                                (l) {
                                  return l.maybeMap(
                                    invalidEmail: (_) {
                                      return "Invalid email";
                                    },
                                    orElse: () {
                                      return null;
                                    },
                                  );
                                },
                                (_) => null,
                              ),
                            )
                          : null,
                    ),
                    const SizedBox(height: 25),
                    DefaultTextField(
                      icon: Icons.lock,
                      hintText: "Password",
                      onChanged: (password) {
                        final signinBloc = context.read<SigninFormBloc>();
                        signinBloc.updatePasswordText(password: password);
                      },
                      errorText: state.showErrors
                          ? state.failureOrPasswordOption.fold(
                              () => null,
                              (fop) => fop.fold(
                                (l) => l.toString(),
                                (_) => null,
                              ),
                            )
                          : null,
                    ),
                    const SizedBox(height: 50),
                    DefaultButton(
                      backgroundColor: primaryColor,
                      borderColor: null,
                      textColor: kcWhiteColor,
                      text: "Sign in",
                      padding: 50,
                      onTap: () {
                        final signinBloc = context.read<SigninFormBloc>();
                        signinBloc.signupWithEmailAndPassword();
                      },
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: Text(
                        "Forgot password?",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: primaryColor),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 85,
                          height: 0.4,
                          color: grayDarkColor,
                        ),
                        Text(
                          "or countinue with",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Container(
                          width: 85,
                          height: 0.4,
                          color: grayDarkColor,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Center(
                      child: CustomAnimatedButton(
                        width: 50,
                        height: 50,
                        onTap: () async {
                          final signinBloc = context.read<SigninFormBloc>();
                          signinBloc.signupWithGoogle();
                        },
                        child: SvgPicture.asset("assets/svg/Google.svg"),
                        decoration: BoxDecoration(
                          border: Border.all(color: grayColor.withOpacity(0.4)),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't Have an Account?",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const SizedBox(width: 2),
                        CustomAnimatedButton(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, '/signup');
                          },
                          child: Text(
                            "Sign up",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: primaryColor),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
