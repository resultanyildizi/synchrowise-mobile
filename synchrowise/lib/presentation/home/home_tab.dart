import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:synchrowise/application/group/get_group_bloc/get_group_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/extensions/build_context_ext.dart';
import 'package:synchrowise/infrastructure/group/group_repository/failure/group_repository_failure.dart';
import 'package:synchrowise/presentation/auth/welcome_page.dart';
import 'package:synchrowise/presentation/core/functions/show_toast.dart';
import 'package:synchrowise/presentation/group/create_group_page.dart';
import 'package:synchrowise/presentation/group/group_session_page.dart';
import 'package:synchrowise/presentation/group/join_group_page.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';
import 'package:synchrowise/presentation/home/widgets/group_action_cards.dart';
import 'package:synchrowise/route/synchrowise_route_arguments.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: BlocBuilder<GetGroupBloc, GetGroupState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "hi_wave_icon".tr(namedArgs: {
                    "username": context.synchrowiseUser.username!
                  }),
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 28),
                ),
                Text(
                  "what_would_you_like_to_do".tr(),
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: grayColor, fontSize: 16),
                ),
                const SizedBox(height: 16),
                ...state.maybeMap(
                  orElse: () {
                    return [
                      GroupActionCards(
                        cardBackgroundImage: redCardImagePath,
                        title: "create_a_group".tr(),
                        desc: "create_a_group_description".tr(),
                        onTap: () {},
                        showProgress: true,
                      ),
                    ];
                  },
                  loaded: (loaded) {
                    return [
                      GroupActionCards(
                        cardBackgroundImage: whiteCardImagePath,
                        title: loaded.groupData.groupKey,
                        desc: "open_your_group".tr(),
                        color: primaryColor,
                        onTap: () {
                          SynchrowiseNavigator.pushNamed(
                            context,
                            GroupSessionPage.routeName,
                            arguments: GroupSessionPageRouteArguments(
                              context,
                              groupData: loaded.groupData,
                            ),
                          );
                        },
                        showProgress: false,
                      )
                    ];
                  },
                  failure: (failureState) {
                    final failure = failureState.failure;
                    if (failure is GroupRepositoryFailure) {
                      return failure.maybeMap(
                        notFound: (_) {
                          return [
                            GroupActionCards(
                              cardBackgroundImage: redCardImagePath,
                              title: "create_a_group".tr(),
                              desc: "create_a_group_description".tr(),
                              onTap: () {
                                SynchrowiseNavigator.pushNamed(
                                  context,
                                  CreateGroupPage.routeName,
                                  arguments: CreateGroupPageRouteArguments(
                                    context,
                                    onSuccess: () {
                                      context.read<GetGroupBloc>().fetch();

                                      SynchrowiseNavigator.pop(context);
                                      showSuccessToast(
                                        "group_created_successfully".tr(),
                                        ToastGravity.BOTTOM,
                                      );
                                    },
                                  ),
                                );
                              },
                              showProgress: false,
                            ),
                          ];
                        },
                        orElse: () {
                          return [
                            GroupActionCards(
                              cardBackgroundImage: redCardImagePath,
                              title: "something_went_wrong".tr(),
                              desc: "something_went_wrong_desc".tr(),
                              onTap: () {
                                context.read<GetGroupBloc>().fetch();
                              },
                              showProgress: false,
                            ),
                          ];
                        },
                      );
                    } else {
                      return [
                        GroupActionCards(
                          cardBackgroundImage: redCardImagePath,
                          title: "something_went_wrong".tr(),
                          desc: "something_went_wrong_desc".tr(),
                          onTap: () {
                            context.read<GetGroupBloc>().fetch();
                          },
                          showProgress: false,
                        ),
                      ];
                    }
                  },
                ),
                GroupActionCards(
                  cardBackgroundImage: blueCardImagePath,
                  title: "join_a_group".tr(),
                  desc: "join_a_group_description".tr(),
                  showProgress: false,
                  onTap: () {
                    state.map(
                      initial: (_) {},
                      loading: (_) {},
                      loaded: (_) {
                        showErrorToast(
                            "already_have_group".tr(), ToastGravity.BOTTOM);
                      },
                      failure: (failureState) {
                        SynchrowiseNavigator.pushNamed(
                          context,
                          JoinGroupPage.routeName,
                          arguments: JoinGroupPageRouteArguments(
                            context,
                            onSuccess: () {
                              context.read<GetGroupBloc>().fetch();

                              context.read<GetGroupBloc>().fetch();

                              SynchrowiseNavigator.pop(context);
                              showSuccessToast(
                                "joined_group_successfully".tr(),
                                ToastGravity.BOTTOM,
                              );
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
