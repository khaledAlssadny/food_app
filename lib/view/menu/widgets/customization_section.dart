import 'package:flutter/material.dart';
import 'package:food_app1/common/color_extension.dart';
import 'package:food_app1/view/menu/widgets/custom_dropdown.dart';

class CustomizationSection extends StatelessWidget {
  final String? selectedSize;
  final String? selectedIngredient;
  final Function(String?) onSizeChanged;
  final Function(String?) onIngredientChanged;

  const CustomizationSection({
    super.key,
    required this.selectedSize,
    required this.selectedIngredient,
    required this.onSizeChanged,
    required this.onIngredientChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Customize your Order",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 20),
        CustomDropdown(
          hint: "- Select the size of portion -",
          items: ["Small", "Big"],
          selectedValue: selectedSize,
          onChanged: onSizeChanged,
        ),
        const SizedBox(height: 15),
        CustomDropdown(
          hint: "- Select the ingredients -",
          items: ["Cheese", "Mushrooms", "Pepperoni"],
          selectedValue: selectedIngredient,
          onChanged: onIngredientChanged,
        ),
      ],
    );
  }
} 