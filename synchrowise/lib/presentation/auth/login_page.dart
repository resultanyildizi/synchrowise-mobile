import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/application/sign_form_bloc/signin_form_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';
import 'package:synchrowise/presentation/helpers/default_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                onChanged: (email) => context
                    .read<SigninFormBloc>()
                    .add(SigninFormEvent.updateEmailText(email: email)),
              ),
              const SizedBox(height: 25),
              DefaultTextField(
                icon: Icons.lock,
                hintText: "Password",
                onChanged: (password) => context.read<SigninFormBloc>().add(
                      SigninFormEvent.updatePasswordText(password: password),
                    ),
              ),
              const SizedBox(height: 50),
              DefaultButton(
                backgroundColor: primaryColor,
                borderColor: null,
                textColor: kcWhiteColor,
                text: "Login",
                padding: 50,
                onTap: () => context.read<SigninFormBloc>().add(
                      const SigninFormEvent.signinWithEmailAndPassword(),
                    ),
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
                    final authBloc = context.read<AuthBloc>();
                    authBloc.signinWithGoogle();
                  },
                  child: SvgPicture.asset(
                    "assets/svg/Google.svg",
                  ),
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
                      "Sign Up",
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
  }
}
