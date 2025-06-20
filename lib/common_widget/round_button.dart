import 'package:flutter/material.dart';

import '../common/color_extension.dart';

enum RoungButtonType { bgPrimary, textPrimary }

class RoundButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final RoungButtonType type;
  const RoundButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.type = RoungButtonType.bgPrimary});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: type == RoungButtonType.bgPrimary
                ? null
                : Border.all(color: TColor.primary, width: 1),
            color: type == RoungButtonType.bgPrimary
                ? TColor.primary
                : TColor.white,
            borderRadius: BorderRadius.circular(28)),
        child: Text(
          title,
          style: TextStyle(
              color: type == RoungButtonType.bgPrimary
                  ? TColor.white
                  : TColor.primary,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
