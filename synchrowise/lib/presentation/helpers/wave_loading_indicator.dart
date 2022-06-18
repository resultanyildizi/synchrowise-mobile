import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class WaveLoadingIndicator extends StatelessWidget {
  const WaveLoadingIndicator({
    Key? key,
    this.color = Colors.white,
    this.size = 14,
  }) : super(key: key);

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SpinKitWave(
      color: color,
      itemCount: 3,
      size: size,
      duration: const Duration(milliseconds: 1500),
    );
  }
}
