import 'package:flutter/material.dart';
import 'package:food_app1/common/color_extension.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            "assets/img/btn_back.png",
            width: 20,
            height: 20,
            color: TColor.white,
          ),
        ),
        Expanded(
            child: const SizedBox(
          width: 8,
        )),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/img/shopping_cart.png",
            width: 25,
            height: 25,
            color: TColor.white,
          ),
        )
      ]),
    );
  }
}
