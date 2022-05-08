import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/application/register_steps_bloc/registeration_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/core/widgets/default_back_button.dart';
import 'package:synchrowise/presentation/core/widgets/image_section.dart';
import 'package:synchrowise/presentation/core/widgets/image_section_empty.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';

class RegisterSteps2 extends StatelessWidget {
  const RegisterSteps2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterationBloc, RegisterationState>(
      builder: (context, state) {
        final registerStepsBloc = context.read<RegisterationBloc>();

        return Container(
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
                "avatar_desc".tr(),
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(height: 30),
              state.imageFailureOrImageOption.fold(
                () => ImageSectionEmpty(
                  currentAvatarUrl: null,
                  onCloseButtonTap: null,
                  showLoadingIndicator: state.progressing,
                  onUploadButton: () => _uploadImage(context),
                ),
                (failureOrImage) => failureOrImage.fold(
                  (failure) {
                    return ImageSectionEmpty(
                      currentAvatarUrl: null,
                      onCloseButtonTap: null,
                      showLoadingIndicator: state.progressing,
                      onUploadButton: () => _uploadImage(context),
                    );
                  },
                  (image) {
                    return ImageSection(
                      image: image,
                      uploadImageButton: () => _uploadImage(context),
                      removeImageButton: () {
                        final registerStepsBloc =
                            context.read<RegisterationBloc>();
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
                textColor: Colors.white,
                text: "complete".tr(),
                padding: 0,
                showProgress: state.progressing,
                onTap: () {
                  if (state.progressing) return;

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
        );
      },
    );
  }
}

void _uploadImage(BuildContext context) {
  final registerStepsBloc = context.read<RegisterationBloc>();
  registerStepsBloc.updateAvatarImage(
    androidUiSettings: cropAndroidUiSettings,
    iosUiSettings: cropIOSUiSettings,
  );
}
