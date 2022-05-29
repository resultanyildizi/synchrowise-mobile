import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/application/register_steps_bloc/registeration_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/core/functions/handle_syncrowise_failure.dart';
import 'package:synchrowise/presentation/core/something_went_wrong_page.dart';
import 'package:synchrowise/presentation/core/widgets/default_back_button.dart';
import 'package:synchrowise/presentation/core/widgets/image_section.dart';
import 'package:synchrowise/presentation/core/widgets/image_section_empty.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';

class ProfileUpdateAvatarPage extends StatelessWidget {
  const ProfileUpdateAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, authState) {
      return authState.maybeMap(
        authorized: (authorized) {
          return BlocProvider<RegisterationBloc>(
            create: (context) => getIt<RegisterationBloc>(),
            child: MultiBlocListener(
              listeners: [
                BlocListener<RegisterationBloc, RegisterationState>(
                  listenWhen: (previous, current) {
                    return previous.imageFailureOrImageOption.isNone() &&
                        current.imageFailureOrImageOption.isSome();
                  },
                  listener: (context, state) {
                    state.imageFailureOrImageOption.fold(
                      () {},
                      (foi) {
                        foi.fold(
                          (f) => handleImageFailure(f),
                          (_) => null,
                        );
                      },
                    );
                  },
                ),
                BlocListener<RegisterationBloc, RegisterationState>(
                  listenWhen: (_, current) {
                    return current.avatarFailureOrAvatarOption.isSome() ||
                        current.storageFailureOrUnitOption.isSome();
                  },
                  listener: (context, state) {
                    if (state.hasAvatarFailed) {
                      state.avatarFailureOrAvatarOption.fold(
                        () => null,
                        (foa) {
                          foa.fold(
                            (f) => handleSynchrowiseFailure(context, f),
                            (_) => null,
                          );
                        },
                      );
                    } else if (state.hasStorageFailed) {
                      state.storageFailureOrUnitOption.fold(
                        () => null,
                        (fou) {
                          fou.fold(
                            (f) => handleSynchrowiseFailure(context, f),
                            (_) => null,
                          );
                        },
                      );
                    }
                  },
                ),
              ],
              child: BlocBuilder<RegisterationBloc, RegisterationState>(
                builder: (context, state) {
                  final registerationBloc = context.read<RegisterationBloc>();

                  return Scaffold(
                    body: SingleChildScrollView(
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          child: Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 35.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DefaultBackButton(onTap: () {
                                  SynchrowiseNavigator.pop(context);
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
                                    showLoadingIndicator: state.progressing,
                                    currentAvatarUrl:
                                        authorized.user.avatar.getHttpsPath,
                                    onCloseButtonTap: () {},
                                    onUploadButton: () {
                                      _uploadImage(context);
                                    },
                                  ),
                                  (failureOrImage) => failureOrImage.fold(
                                    (failure) {
                                      return ImageSectionEmpty(
                                        showLoadingIndicator: state.progressing,
                                        onCloseButtonTap: () {},
                                        currentAvatarUrl:
                                            authorized.user.avatar.getHttpsPath,
                                        onUploadButton: () {
                                          _uploadImage(context);
                                        },
                                      );
                                    },
                                    (image) {
                                      return ImageSection(
                                        image: image,
                                        uploadImageButton: () {
                                          _uploadImage(context);
                                        },
                                        removeImageButton: () {
                                          final registerationBloc =
                                              context.read<RegisterationBloc>();
                                          registerationBloc.removeAvatarImage();
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
                                  text: "save".tr(),
                                  padding: 0,
                                  showProgress: state.progressing,
                                  onTap: () {
                                    if (state.progressing) return;

                                    final authState =
                                        context.read<AuthBloc>().state;

                                    authState.maybeMap(
                                      authorized: (state) {
                                        registerationBloc.registerFields();
                                      },
                                      orElse: () => null,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
        orElse: () => const SomethingWentWrongPage(),
      );
    });
  }
}

void _uploadImage(BuildContext context) {
  final registerStepsBloc = context.read<RegisterationBloc>();
  registerStepsBloc.updateAvatarImage(
    androidUiSettings: cropAndroidUiSettings,
    iosUiSettings: cropIOSUiSettings,
  );
}
