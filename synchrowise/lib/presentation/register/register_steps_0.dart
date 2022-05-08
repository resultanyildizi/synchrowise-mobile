import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/register_steps_bloc/register_steps_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';

class RegisterSteps0 extends StatelessWidget {
  const RegisterSteps0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/image_2.png",
              width: 350,
              height: 358,
            ),
            Text("almost_done".tr(),
                style: Theme.of(context).textTheme.headline2),
            const SizedBox(height: 8),
            Text(
              "almost_done_desc".tr(),
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const Spacer(),
            DefaultButton(
              backgroundColor: primaryColor,
              borderColor: null,
              textColor: kcWhiteColor,
              text: "continue".tr(),
              padding: 0,
              onTap: () {
                final registerStepsBloc = context.read<RegisterStepsBloc>();
                registerStepsBloc.goNext();
              },
            ),
          ],
        ),
      ),
    );
  }
}
