import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/language_bloc/language_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/core/widgets/default_back_button.dart';
import 'package:synchrowise/presentation/core/widgets/setting_sections.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';

class LanguageSettingsPage extends StatelessWidget {
  static const routeName = '/main/language-settings';
  const LanguageSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 35.0),
            child: BlocProvider<LanguageBloc>(
              create: (_) {
                return getIt<LanguageBloc>()
                  ..setLanguageCode(context.locale.languageCode);
              },
              child: BlocBuilder<LanguageBloc, LanguageState>(
                builder: (context, state) {
                  final langCode =
                      state.languageCodeOption.fold(() => null, id);

                  List<SettingsSectionModel> settingsSection = [
                    SettingsSectionModel(
                      suffixIcon: Icons.check,
                      suffixIconColor:
                          langCode == 'tr' ? primaryColor : grayLightColor,
                      btnText: 'turkish'.tr(),
                      onTap: () {
                        context.read<LanguageBloc>().setLanguageCode('tr');
                      },
                    ),
                    SettingsSectionModel(
                      suffixIcon: Icons.check,
                      suffixIconColor:
                          langCode == 'en' ? primaryColor : grayLightColor,
                      btnText: 'english'.tr(),
                      onTap: () {
                        context.read<LanguageBloc>().setLanguageCode('en');
                      },
                    )
                  ];

                  return Column(
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
                        onTap: () {
                          return state.languageCodeOption.fold(
                            () {},
                            (languageCode) {
                              context.setLocale(Locale(languageCode));
                            },
                          );
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
