import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      elevation: 20,
      iconSize: 26,
      currentIndex: 1,
      selectedItemColor: primaryColor,
      unselectedItemColor: grayColor,
      unselectedFontSize: 12,
      selectedFontSize: 13,
    );
  }
}
