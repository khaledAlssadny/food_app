import 'package:flutter/material.dart';
import 'package:food_app1/common_widget/round_textfield.dart';

class FoodSearchBar extends StatelessWidget {
  final TextEditingController controller;
  const FoodSearchBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: RoundTextfield(
        hintText: "Search Food",
        controller: controller,
        left: Container(
          alignment: Alignment.center,
          width: 30,
          child: Image.asset("assets/img/search.png", width: 20, height: 20),
        ),
      ),
    );
  }
}
