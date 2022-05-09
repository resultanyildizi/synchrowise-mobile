import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';

void showRegisterSuccessfulBottomSheet(BuildContext context) {
  showModalBottomSheet(
    isDismissible: false,
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(32.0),
    ),
    builder: (
      BuildContext context,
    ) {
      return SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 45),
              SvgPicture.asset(
                "assets/svg/Successful.svg",
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.width / 3,
              ),
              const SizedBox(height: 35),
              Text(
                "registered_successfully".tr(),
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                "now_you_can_use_synchrowise".tr(),
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              DefaultButton(
                backgroundColor: primaryColor,
                borderColor: null,
                textColor: Colors.white,
                text: "lets_get_started".tr(),
                padding: 35,
                onTap: () {
                  context.read<AuthBloc>().check();
                },
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      );
    },
  );
}
