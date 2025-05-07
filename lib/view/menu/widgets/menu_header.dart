import 'package:flutter/material.dart';
import 'package:food_app1/common/color_extension.dart';

class MenuHeader extends StatelessWidget {
  final String title;
  const MenuHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Image.asset("assets/img/btn_back.png", width: 20, height: 20),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: TColor.primaryText,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/img/shopping_cart.png",
                width: 25, height: 25),
          ),
        ],
      ),
    );
  }
}
