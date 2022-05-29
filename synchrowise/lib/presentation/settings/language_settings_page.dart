import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/core/widgets/default_back_button.dart';
import 'package:synchrowise/presentation/core/widgets/setting_sections.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';

class LanguageSettingsPage extends StatelessWidget {
  const LanguageSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late bool isCheck = true;
    List<SettingsSectionModel> settingsSection = [
      SettingsSectionModel(
        suffixIcon: Icons.check,
        suffixIconColor: !isCheck ? primaryColor : grayLightColor,
        btnText: "turkish".tr(),
        onTap: () {},
      ),
      SettingsSectionModel(
        suffixIcon: Icons.check,
        suffixIconColor: isCheck ? primaryColor : grayLightColor,
        btnText: "english".tr(),
        onTap: () {},
      )
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    DefaultBackButton(
                      onTap: () {
                        SynchrowiseNavigator.pop(context);
                      },
                    ),
                    const Spacer(),
                    Text(
                      "language".tr(),
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontSize: 20),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: 24),
                SettingSections(settingSectionList: settingsSection),
                const SizedBox(height: 32),
                DefaultButton(
                  backgroundColor: primaryColor,
                  borderColor: null,
                  textColor: Colors.white,
                  text: "save".tr(),
                  padding: 0,
                  showProgress: false,
                  onTap: () => {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
