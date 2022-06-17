import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/application/bottom_navbar_bloc/bottom_navbar_bloc.dart';
import 'package:synchrowise/application/group_bloc/get_group_bloc/get_group_bloc.dart';
import 'package:synchrowise/application/messaging_bloc/messaging_bloc.dart';
import 'package:synchrowise/application/profile_bloc/profile_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/domain/messaging/media_message.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/core/functions/show_toast.dart';
import 'package:synchrowise/presentation/core/something_went_wrong_page.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';
import 'package:synchrowise/presentation/core/widgets/app_logo_and_name.dart';
import 'package:synchrowise/presentation/core/widgets/bottom_nav_bar.dart';
import 'package:synchrowise/presentation/core/widgets/wave_progress_indicator.dart';
import 'package:synchrowise/presentation/home/home_tab.dart';
import 'package:synchrowise/presentation/settings/settings_tab.dart';
import 'package:synchrowise/presentation/profile/profile_tab.dart';

class MainPage extends StatelessWidget {
  static const routeName = '/main';
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: ((context, state) {
        state.maybeMap(
          unauthorized: (_) {
            SynchrowiseNavigator.pushReplacementNamed(context, "/welcome");
          },
          authorized: (authorized) {
            if (authorized.user.username == null) {
              SynchrowiseNavigator.pushReplacementNamed(context, "/register");
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

            return const HomePageTabView();
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
}

class HomePageTabView extends StatefulWidget {
  const HomePageTabView({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePageTabView> createState() => _HomePageTabViewState();
}

class _HomePageTabViewState extends State<HomePageTabView>
    with TickerProviderStateMixin {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 1, keepPage: true);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetGroupBloc>(
          create: (context) => getIt<GetGroupBloc>()..fetch(),
        ),
        BlocProvider<BottomNavbarBloc>(
          create: (context) => getIt<BottomNavbarBloc>(),
        ),
        BlocProvider<ProfileBloc>(
          create: (context) => getIt<ProfileBloc>(),
        ),
        BlocProvider<MessagingBloc>(
          create: (context) => getIt<MessagingBloc>()..start(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<BottomNavbarBloc, BottomNavbarState>(
            listener: (context, state) {
              _pageController.animateToPage(
                state.index,
                curve: Curves.easeIn,
                duration: const Duration(milliseconds: 300),
              );
            },
          ),
          BlocListener<MessagingBloc, MessagingState>(
            listener: (context, state) {
              state.map(
                initial: (_) {},
                onMessage: (onMessage) {
                  final message = onMessage.message;

                  if (message is MediaMessage) {
                    showSuccessToast(message.senderName, ToastGravity.BOTTOM);
                  }
                },
                onMessageOpenedApp: (onMessageOpenedApp) {
                  final message = onMessageOpenedApp.message;

                  if (message is MediaMessage) {
                    showSuccessToast(message.senderName, ToastGravity.BOTTOM);
                  }
                },
              );
            },
          ),
        ],
        child: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                const AppLogoAndName(),
                Expanded(
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: _pageController,
                    children: const [ProfileTab(), HomeTab(), SettingsTab()],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: const BottomNavBar(),
        ),
      ),
    );
  }
}
