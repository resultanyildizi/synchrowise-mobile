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
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settigns',
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
