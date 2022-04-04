import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:synchrowise/application/register_steps_bloc/register_steps_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/core/widgets/default_back_button.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';

class RegisterSteps2 extends StatelessWidget {
  const RegisterSteps2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterStepsBloc, RegisterStepsState>(
      builder: (context, state) {
        final registerStepsBloc = context.read<RegisterStepsBloc>();

        final showSuccessDialog = state.registerFailureOrUnitOption.fold(
          () => false,
          (failureOrUnit) => failureOrUnit.fold(
            (failure) => false,
            (unit) => true,
          ),
        );

        return Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 32),
                DefaultBackButton(onTap: () {
                  registerStepsBloc.goBack();
                }),
                const SizedBox(height: 32),
                Text(
                  "avatar".tr(),
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text(
                  "avatar_description".tr(),
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                const SizedBox(height: 30),
                state.failureOrImageOption.fold(
                  () => CustomAnimatedButton(
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
                    onTap: () {
                      registerStepsBloc.updateAvatarImage();
                    },
                  ),
                  (failureOrImage) => failureOrImage.fold(
                    (failure) => Text(failure.toString()),
                    (image) {
                      return Container(
                        height: MediaQuery.of(context).size.width - 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Image.asset(
                          image.path,
                          height: MediaQuery.of(context).size.width - 70,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 35),
                DefaultButton(
                  backgroundColor: primaryColor,
                  borderColor: null,
                  textColor: kcWhiteColor,
                  text: "complete".tr(),
                  padding: 0,
                  onTap: () {
                    registerStepsBloc.registerFields();
                  },
                ),
              ],
            ),
            if (showSuccessDialog) ...[
              Container(color: Colors.black.withOpacity(0.6)),
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
                          textColor: kcWhiteColor,
                          text: "lets_get_started".tr(),
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
        );
      },
    );
  }
}
