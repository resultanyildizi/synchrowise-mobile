import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/home/widgets/group_action_cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    this.username,
  }) : super(key: key);
  final String? username;

  @override
  Widget build(BuildContext context) {
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
                "Hi Selim 👋",
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 28),
              ),
              Text(
                "Ne yapmak istersin?",
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
                  desc: "Open your group",
                  color: primaryColor,
                  onTap: () {},
                )
              else
                GroupActionCards(
                  cardBackgroundImage: redCardImagePath,
                  title: "New Group",
                  desc: "Create new group to invite a friends!",
                  onTap: () {},
                ),
              GroupActionCards(
                cardBackgroundImage: blueCardImagePath,
                title: "Join Group",
                desc: "Join a group to meet your friends!",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}
