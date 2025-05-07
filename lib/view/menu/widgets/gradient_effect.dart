import 'package:flutter/material.dart';

class GradientEffect extends StatelessWidget {
  const GradientEffect({
    super.key,
    required this.media,
  });

  final Size media;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: media.width,
      height: media.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.black, Colors.transparent, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
    );
  }
}
