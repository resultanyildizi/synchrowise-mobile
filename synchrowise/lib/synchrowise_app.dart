import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/splash/splash.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';

class SynchrowiseApp extends StatelessWidget {
  const SynchrowiseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) {
            final authBloc = getIt<AuthBloc>();
            authBloc.check();
            return authBloc;
          },
        ),
      ],
      child: MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            brightness: Brightness.light,
            primaryColor: primaryColor,
            fontFamily: "Poppins",
            textTheme: const TextTheme(
              headline1: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w700,
                color: grayDarkColor,
              ),
              headline2: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w700,
                color: grayDarkColor,
              ),
              headline3: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                color: grayDarkColor,
              ),
              headline4: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
                color: grayDarkColor,
              ),
              headline5: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w700,
                color: grayDarkColor,
              ),
              headline6: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: grayDarkColor,
              ),
              subtitle1: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: grayColor,
              ),
              subtitle2: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w300,
                color: grayDarkColor,
              ),
              bodyText1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300),
              bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300),
            ),
          ),
          initialRoute: SplashPage.routeName,
          onGenerateRoute: (settings) {
            return SynchrowiseNavigator.onGenerateRoute(settings);
          }),
    );
  }
}
