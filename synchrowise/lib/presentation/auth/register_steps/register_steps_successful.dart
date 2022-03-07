import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';

class RegisterStepsSuccesfull extends StatelessWidget {
  const RegisterStepsSuccesfull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(color: Colors.black.withOpacity(0.6)),
        Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: kcWhiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                SvgPicture.asset("assets/svg/Successful.svg"),
                const SizedBox(height: 35),
                Text(
                  "Register Successful",
                  style: Theme.of(context).textTheme.headline3,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                Text(
                  "Now, you can start to synchrowise.",
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                DefaultButton(
                  backgroundColor: primaryColor,
                  borderColor: null,
                  textColor: kcWhiteColor,
                  text: "Let's start",
                  padding: 35,
                  onTap: () {},
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        )
      ],
    );
  }
}
