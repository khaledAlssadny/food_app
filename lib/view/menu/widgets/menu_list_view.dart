import 'package:flutter/material.dart';
import 'package:food_app1/common_widget/menu_item_row.dart';
import 'package:food_app1/view/menu/item_details_view.dart';

class MenuListView extends StatelessWidget {
  final List menuItemsArr;
  const MenuListView({super.key, required this.menuItemsArr});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      itemCount: menuItemsArr.length,
      itemBuilder: (context, index) {
        var pObj = menuItemsArr[index] as Map? ?? {};
        return MenuItemRow(
          mObj: pObj,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ItemDetailsView()),
            );
          },
        );
      },
    );
  }
}
