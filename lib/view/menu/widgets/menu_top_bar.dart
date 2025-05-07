import 'package:flutter/material.dart';
import 'package:food_app1/common/color_extension.dart';

class MenuTopBar extends StatelessWidget {
  const MenuTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Menu",
            style: TextStyle(
              color: TColor.primaryText,
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/img/shopping_cart.png",
              width: 25,
              height: 25,
            ),
          ),
        ],
      ),
    );
  }
}
