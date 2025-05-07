import 'package:flutter/material.dart';
import 'package:food_app1/common/color_extension.dart';
import 'package:food_app1/view/menu/menu_items_view.dart';

class MenuItemTile extends StatelessWidget {
  final Map mObj;

  const MenuItemTile({super.key, required this.mObj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MenuItemsView(mObj: mObj),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            alignment: Alignment.centerRight,
            margin:
                const EdgeInsets.only(top: 0, bottom: 20, left: 30, right: 20),
            width: media.width - 100,
            height: 90,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                bottomLeft: Radius.circular(25),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 7,
                  offset: Offset(0, 4),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                mObj["image"],
                width: 90,
                height: 90,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mObj["name"],
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "${mObj["items_count"]} items",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(17.5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/img/btn_next.png",
                  width: 15,
                  height: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
