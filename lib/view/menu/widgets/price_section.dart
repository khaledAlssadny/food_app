import 'package:flutter/material.dart';
import 'package:food_app1/common/color_extension.dart';

class PriceSection extends StatelessWidget {
  final double price;

  const PriceSection({
    super.key,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "\$${price.toStringAsFixed(2)}",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 31,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          "/per Portion",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 11,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
} 