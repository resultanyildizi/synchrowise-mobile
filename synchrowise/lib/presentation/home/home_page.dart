import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/presentation/core/widgets/bottom_nav_bar.dart';
import 'package:synchrowise/presentation/core/widgets/wave_progress_indicator.dart';
import 'package:synchrowise/presentation/home/widgets/group_action_cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: ((context, state) {
        state.maybeMap(
          unauthorized: (_) {
            Navigator.pushReplacementNamed(context, "/welcome");
          },
          orElse: () {},
        );
      }),
      builder: (context, state) {
        return state.map(
          authorized: (authorizedState) {
            final username = authorizedState.user.username;
            if (username == null) {
              return _buildSomethingWentWrongPage(context);
            }

            return _buildLoggedInPage(context, authorizedState.user);
          },
          unauthorized: (_) => _buildSomethingWentWrongPage(context),
          initial: (_) => _buildInitialPage(context),
        );
      },
    );
  }

  Scaffold _buildInitialPage(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: WaveProgressIndicator()),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  Scaffold _buildSomethingWentWrongPage(BuildContext context) {
    // Todo bize bildir butonu, Bir şeyler ters gitti ikonu
    // Todo aynı zamanda uygulamayı baştan başlatacak
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Center(
            child: Text("Bir şeyler ters giti"),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  Scaffold _buildLoggedInPage(
      BuildContext context, SynchrowiseUser synchrowiseUser) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  appLogoSmall,
                  const SizedBox(width: 12),
                  Text(
                    appName,
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: primaryColor, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Text(
                "hi_wave_icon"
                    .tr(namedArgs: {"username": synchrowiseUser.username!}),
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
              if (true)
                GroupActionCards(
                  cardBackgroundImage: whiteCardImagePath,
                  title: "r123cKl14",
                  desc: "open_your_group".tr(),
                  color: primaryColor,
                  onTap: () {},
                )
              else
                GroupActionCards(
                  cardBackgroundImage: redCardImagePath,
                  title: "create_a_group".tr(),
                  desc: "create_a_group_description".tr(),
                  onTap: () {},
                ),
              GroupActionCards(
                cardBackgroundImage: blueCardImagePath,
                title: "join_a_group".tr(),
                desc: "join_a_group_description".tr(),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
