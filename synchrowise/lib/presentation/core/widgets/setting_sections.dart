import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';

class SettingSections extends StatelessWidget {
  final List<SettingsSectionModel> settingSectionList;
  const SettingSections({
    Key? key,
    required this.settingSectionList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: grayLightColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        child: Column(
          children: [
            for (int i = 0; i < settingSectionList.length; i++) ...[
              CustomAnimatedButton(
                onTap: () => settingSectionList[i].onTap(),
                child: Row(
                  children: [
                    settingSectionList[i].prefixIcon != null
                        ? Icon(
                            settingSectionList[i].prefixIcon,
                            size: 25,
                            color: grayDarkColor2,
                          )
                        : const SizedBox(),
                    const SizedBox(width: 12),
                    Text(
                      settingSectionList[i].btnText,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(color: Colors.black),
                    ),
                    const Spacer(),
                    settingSectionList[i].suffixIcon != null
                        ? Icon(
                            settingSectionList[i].suffixIcon,
                            size: 25,
                            color: settingSectionList[i].suffixIconColor ??
                                grayDarkColor,
                          )
                        : Transform.scale(
                            alignment: Alignment.centerRight,
                            scale: 0.7,
                            child: settingSectionList[i].suffixWidget,
                          ),
                    const SizedBox(width: 4),
                  ],
                ),
              ),
              if (i != settingSectionList.length - 1) ...[
                const SizedBox(height: 12),
                const Divider(
                  color: Colors.white,
                  height: 0,
                  thickness: 1,
                ),
                const SizedBox(height: 12),
              ]
            ]
          ],
        ),
      ),
    );
  }
}

class SettingsSectionModel {
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Widget? suffixWidget;
  final Color? suffixIconColor;
  final String btnText;
  final Function() onTap;

  SettingsSectionModel({
    this.prefixIcon,
    this.suffixIcon,
    this.suffixWidget,
    this.suffixIconColor,
    required this.btnText,
    required this.onTap,
  }) : assert(!(suffixIcon != null && suffixWidget != null));
}
