import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    this.username,
  }) : super(key: key);
  final String? username;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(username ?? ""),
    );
  }
}
