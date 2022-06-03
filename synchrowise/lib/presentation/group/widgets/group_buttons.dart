import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';

class MediaButtons extends StatelessWidget {
  MediaButtons({
    Key? key,
    required this.isAdmin,
  }) : super(key: key);

  final bool isAdmin;

  final List<Button> buttonList = [
    Button(() => null, Icons.file_upload),
    Button(() => null, Icons.settings),
    Button(() => null, Icons.close),
  ];

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: isAdmin
              ? CustomAnimatedButton(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width - 80,
                    height: 60,
                    decoration: BoxDecoration(
                      color: primaryExtraLightColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.logout,
                          size: 35,
                          color: primaryColor,
                        ),
                        const SizedBox(width: 15),
                        Text(
                          "Leave",
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (var i = 0; i < buttonList.length; i++)
                      CustomAnimatedButton(
                        onTap: buttonList[i].onTap,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: secondaryLightColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            buttonList[i].icon,
                            size: 35,
                            color: secondaryDarkColor,
                          ),
                        ),
                      ),
                  ],
                ),
        ),
      ),
    );
  }
}

class Button {
  final Function() onTap;
  final IconData icon;

  Button(this.onTap, this.icon);
}
