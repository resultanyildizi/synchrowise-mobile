import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
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

        final showSuccessDialog = true;

        // state.registerFailureOrUnitOption.fold(
        //   () => false,
        //   (failureOrUnit) => failureOrUnit.fold(
        //     (failure) => false,
        //     (unit) => true,
        //   ),
        // );

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
                  () => _ImageSectionEmpty(
                    showLoadingIndicator: state.uploadingImage,
                  ),
                  (failureOrImage) => failureOrImage.fold(
                    (failure) {
                      return _ImageSectionEmpty(
                        showLoadingIndicator: state.uploadingImage,
                      );
                    },
                    (image) {
                      return _ImageSection(image: image);
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
                    final authState = context.read<AuthBloc>().state;

                    authState.maybeMap(
                      authorized: (state) {
                        registerStepsBloc.registerFields(
                          synchrowiseUser: state.user,
                        );
                      },
                      orElse: () => null,
                    );
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

class _ImageSection extends StatelessWidget {
  const _ImageSection({
    required this.image,
    Key? key,
  }) : super(key: key);

  final File image;

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedButton(
      onTap: () => _uploadImage(context),
      height: MediaQuery.of(context).size.width - 70,
      width: MediaQuery.of(context).size.width - 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.file(image, fit: BoxFit.cover),
          ),
          Positioned(
            right: 12,
            top: 12,
            child: CustomAnimatedButton(
              onTap: () {
                final registerStepsBloc = context.read<RegisterStepsBloc>();
                registerStepsBloc.removeAvatarImage();
              },
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(20),
              ),
              width: 25,
              height: 25,
              child: const Icon(Icons.close, color: Colors.white, size: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class _ImageSectionEmpty extends StatelessWidget {
  const _ImageSectionEmpty({
    Key? key,
    required this.showLoadingIndicator,
  }) : super(key: key);

  final bool showLoadingIndicator;

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedButton(
      height: MediaQuery.of(context).size.width - 70,
      decoration: BoxDecoration(
        color: grayLightColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: showLoadingIndicator
          ? const SizedBox(
              height: 30,
              width: 30,
              child: CircularProgressIndicator(color: primaryColor),
            )
          : const Icon(Icons.add_photo_alternate, color: grayColor, size: 48),
      onTap: () {
        if (showLoadingIndicator) {
          return;
        } else {
          return _uploadImage(context);
        }
      },
    );
  }
}

void _uploadImage(BuildContext context) {
  final registerStepsBloc = context.read<RegisterStepsBloc>();
  registerStepsBloc.updateAvatarImage(
    androidUiSettings: AndroidUiSettings(
      toolbarColor: primaryColor,
      toolbarTitle: "clip".tr(),
    ),
    iosUiSettings: const IOSUiSettings(),
  );
}
