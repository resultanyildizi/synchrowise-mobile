import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';

class RegisterSteps2 extends StatefulWidget {
  const RegisterSteps2({Key? key}) : super(key: key);

  @override
  State<RegisterSteps2> createState() => _RegisterSteps2State();
}

class _RegisterSteps2State extends State<RegisterSteps2> {
  late bool isSuccesfull;

  @override
  void initState() {
    isSuccesfull = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcWhiteColor,
      body: Stack(
        children: [
          SafeArea(
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
                  Text("Image", style: Theme.of(context).textTheme.headline2),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  const SizedBox(height: 30),
                  CustomAnimatedButton(
                    height: MediaQuery.of(context).size.width - 70,
                    decoration: BoxDecoration(
                      color: grayLightColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Icon(
                      Icons.add_photo_alternate,
                      color: grayColor,
                      size: 48,
                    ),
                  ),
                  const SizedBox(height: 35),
                  DefaultButton(
                    backgroundColor: primaryColor,
                    borderColor: null,
                    textColor: kcWhiteColor,
                    text: "Complete",
                    padding: 0,
                    onTap: () {
                      setState(() {
                        isSuccesfull = true;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          if (isSuccesfull) ...[
            Container(
              color: Colors.black.withOpacity(0.6),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
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
                      SvgPicture.asset(
                        "assets/svg/Successful.svg",
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.width / 3,
                      ),
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
              ),
            )
          ]
        ],
      ),
    );
  }
}
