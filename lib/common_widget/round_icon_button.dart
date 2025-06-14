import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class RoundIConButton extends StatelessWidget {
  const RoundIConButton(
      {super.key,
      required this.title,
      this.icon = "",
      required this.color,
      required this.onPressed,
      this.fontSize = 12});
  final VoidCallback onPressed;
  final String title;
  final Color color;
  final String icon;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        alignment: Alignment.center,
        // Color(0xff367FC0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(28)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon.isNotEmpty)
              Image.asset(
                icon,
                width: 15,
                height: 15,
                fit: BoxFit.contain,
              ),
            const SizedBox(
              width: 8,
            ),
            Text(
              title,
              style: TextStyle(
                  color: TColor.white,
                  fontSize: fontSize,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
