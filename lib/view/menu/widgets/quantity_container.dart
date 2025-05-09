import 'package:flutter/material.dart';
import 'package:food_app1/common/color_extension.dart';

class QuantityContainer extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;

  const QuantityContainer({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 25,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor ?? TColor.primary,
          borderRadius: BorderRadius.circular(12.5),
          border: backgroundColor == Colors.white 
              ? Border.all(color: TColor.primary, width: 1)
              : null,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: backgroundColor == Colors.white ? TColor.primary : TColor.white,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
} 