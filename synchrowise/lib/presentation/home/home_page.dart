import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/application/bottom_navbar_bloc/bottom_navbar_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
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
          child: WaveProgressIndicator(),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  Scaffold _buildSomethingWentWrongPage(BuildContext context) {
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

  void _pageViewListener() {
    final page = _pageController.page?.toInt();
    if (page != null) {
      _bottomNavBarBloc.add(BottomNavbarEvent.openTab(index: page));
    }
  }

  @override
  void initState() {
    _bottomNavBarBloc = BottomNavbarBloc();

    _pageController = PageController(initialPage: 1, keepPage: true);

    _pageController.addListener(_pageViewListener);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.removeListener(_pageViewListener);
    _pageController.dispose();
    _bottomNavBarBloc.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BottomNavbarBloc>(
      create: (context) => _bottomNavBarBloc,
      child: Provider<SynchrowiseUser>(
        create: (_) => widget.synchrowiseUser,
        child: BlocListener<BottomNavbarBloc, BottomNavbarState>(
          listener: (context, state) {
            _pageController.jumpToPage(state.index);
          },
          child: Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    const AppLogoAndName(),
                    Expanded(
                      child: PageView(
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
            ),
            bottomNavigationBar: const BottomNavBar(),
          ),
        ),
      ),
    );
  }
}
