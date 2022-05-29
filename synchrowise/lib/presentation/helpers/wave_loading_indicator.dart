import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class WaveLoadingIndicator extends StatelessWidget {
  const WaveLoadingIndicator({
    Key? key,
    this.size = 14,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return SpinKitWave(
      color: Colors.white,
      itemCount: 3,
      size: size,
      duration: const Duration(milliseconds: 1500),
    );
  }
}
