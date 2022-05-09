import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/bottom_navbar_bloc/bottom_navbar_bloc.dart';
import 'package:synchrowise/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavbarBloc, BottomNavbarState>(
      builder: (context, state) {
        return BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: "profile".tr(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: "home".tr(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: "settings".tr(),
            ),
          ],
          onTap: (index) {
            context
                .read<BottomNavbarBloc>()
                .add(BottomNavbarEvent.openTab(index: index));
          },
          elevation: 20,
          iconSize: 26,
          currentIndex: state.index,
          selectedItemColor: primaryColor,
          unselectedItemColor: grayColor,
          unselectedFontSize: 12,
          selectedFontSize: 13,
        );
      },
    );
  }
}
