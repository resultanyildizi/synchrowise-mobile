import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:synchrowise/constants.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Center(
                child: Stack(
                  children: [
                    Transform.rotate(
                      angle: -math.pi / 4,
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              offset: const Offset(0, 4),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18, top: 18),
                      child: Image.asset(
                        'assets/synchrowise-logo.png',
                        width: 115,
                        height: 115,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(bottom: 32.0),
              child: Text(
                "synchrowise",
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: "Open Sans",
                  fontWeight: FontWeight.w700,
                  color: whiteColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
