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
                    Icon(
                      settingSectionList[i].icon,
                      size: 25,
                      color: grayDarkColor2,
                    ),
                    const SizedBox(width: 12),
                    Text(
                      settingSectionList[i].btnText,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(color: Colors.black),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      size: 25,
                      color: grayDarkColor,
                    ),
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
  final IconData icon;
  final String btnText;
  final Function() onTap;

  SettingsSectionModel({
    required this.icon,
    required this.btnText,
    required this.onTap,
  });
}
