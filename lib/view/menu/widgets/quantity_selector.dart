import 'package:flutter/material.dart';
import 'package:food_app1/common/color_extension.dart';
import 'package:food_app1/view/menu/widgets/quantity_container.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final Function(int) onQuantityChanged;

  const QuantitySelector({
    super.key,
    required this.quantity,
    required this.onQuantityChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Number of Portions",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        const Spacer(),
        QuantityContainer(
          text: "-",
          onPressed: () {
            if (quantity > 1) {
              onQuantityChanged(quantity - 1);
            }
          },
        ),
        const SizedBox(width: 8),
        QuantityContainer(
          text: quantity.toString(),
          onPressed: null,
          backgroundColor: Colors.white,
        ),
        const SizedBox(width: 8),
        QuantityContainer(
          text: "+",
          onPressed: () {
            onQuantityChanged(quantity + 1);
          },
        ),
      ],
    );
  }
} 