import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/application/register_steps_bloc/register_steps_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/core/widgets/default_back_button.dart';
import 'package:synchrowise/presentation/core/widgets/image_section.dart';
import 'package:synchrowise/presentation/core/widgets/image_section_empty.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';

class RegisterSteps2 extends StatelessWidget {
  const RegisterSteps2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterStepsBloc, RegisterStepsState>(
      builder: (context, state) {
        final registerStepsBloc = context.read<RegisterStepsBloc>();

        return Stack(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
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
                    () => ImageSectionEmpty(
                      showLoadingIndicator: state.uploadingImage,
                      uploadImageButton: () => _uploadImage(context),
                    ),
                    (failureOrImage) => failureOrImage.fold(
                      (failure) {
                        return ImageSectionEmpty(
                          showLoadingIndicator: state.uploadingImage,
                          uploadImageButton: () => _uploadImage(context),
                        );
                      },
                      (image) {
                        return ImageSection(
                          image: image,
                          uploadImageButton: () => _uploadImage(context),
                          removeImageButton: () {
                            final registerStepsBloc =
                                context.read<RegisterStepsBloc>();
                            registerStepsBloc.removeAvatarImage();
                          },
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
            ),
          ],
        );
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
