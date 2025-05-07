import 'package:flutter/material.dart';
// import 'package:food_app1/view/menu/menu_item_tile.dart';
import 'package:food_app1/view/menu/widgets/menu_item_tile.dart';

class MenuCategoryList extends StatelessWidget {
  final List menuArr;

  const MenuCategoryList({super.key, required this.menuArr});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: menuArr.length,
      itemBuilder: (context, index) {
        var mObj = menuArr[index] as Map? ?? {};
        return MenuItemTile(mObj: mObj);
      },
    );
  }
}
