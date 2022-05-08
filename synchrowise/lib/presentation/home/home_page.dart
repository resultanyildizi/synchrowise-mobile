import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/application/bottom_navbar_bloc/bottom_navbar_bloc.dart';
import 'package:synchrowise/application/profile_bloc/profile_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/core/something_went_wrong_page.dart';
import 'package:synchrowise/presentation/core/widgets/app_logo_and_name.dart';
import 'package:synchrowise/presentation/core/widgets/bottom_nav_bar.dart';
import 'package:synchrowise/presentation/core/widgets/wave_progress_indicator.dart';
import 'package:synchrowise/presentation/home/tabs/home_tab.dart';
import 'package:synchrowise/presentation/home/tabs/settings_tab.dart';
import 'package:synchrowise/presentation/home/tabs/profile_tab.dart';

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
          authorized: (authorized) {
            if (authorized.user.username == null) {
              Navigator.pushReplacementNamed(context, "/register");
            }
          },
          orElse: () {},
        );
      }),
      builder: (context, state) {
        return state.map(
          authorized: (authorizedState) {
            final username = authorizedState.user.username;
            if (username == null) {
              return const SomethingWentWrongPage();
            }

            return _buildLoggedInPage(context, authorizedState.user);
          },
          unauthorized: (_) => const SomethingWentWrongPage(),
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
          child: WaveProgressIndicator(),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  Widget _buildLoggedInPage(
      BuildContext context, SynchrowiseUser synchrowiseUser) {
    return HomePageTabView(synchrowiseUser: synchrowiseUser);
  }
}

class HomePageTabView extends StatefulWidget {
  const HomePageTabView({
    Key? key,
    required this.synchrowiseUser,
  }) : super(key: key);

  final SynchrowiseUser synchrowiseUser;

  @override
  State<HomePageTabView> createState() => _HomePageTabViewState();
}

class _HomePageTabViewState extends State<HomePageTabView>
    with TickerProviderStateMixin {
  late PageController _pageController;
  late BottomNavbarBloc _bottomNavBarBloc;

  @override
  void initState() {
    _bottomNavBarBloc = BottomNavbarBloc();

    _pageController = PageController(initialPage: 1, keepPage: true);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _bottomNavBarBloc.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavbarBloc>(
          create: (context) => _bottomNavBarBloc,
        ),
        BlocProvider(
          create: (context) => getIt<ProfileBloc>(),
        ),
      ],
      child: Provider<SynchrowiseUser>(
        create: (_) => widget.synchrowiseUser,
        child: BlocListener<BottomNavbarBloc, BottomNavbarState>(
          listener: (context, state) {
            _pageController.animateToPage(state.index,
                curve: Curves.easeIn,
                duration: const Duration(milliseconds: 300));
          },
          child: Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  const AppLogoAndName(),
                  Expanded(
                    child: PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _pageController,
                      children: [
                        ProfileTab(synchrowiseUser: widget.synchrowiseUser),
                        const HomeTab(),
                        const SettingsTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: const BottomNavBar(),
          ),
        ),
      ),
    );
  }
}
