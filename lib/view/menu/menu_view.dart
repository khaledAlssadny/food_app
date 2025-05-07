import 'package:flutter/material.dart';
// import 'package:food_app1/view/menu/menu_top_bar.dart';
// import 'package:food_app1/view/menu/menu_category_list.dart';
import 'package:food_app1/common_widget/round_textfield.dart';
import 'package:food_app1/common/color_extension.dart';
import 'package:food_app1/view/menu/widgets/menu_category_list.dart';
import 'package:food_app1/view/menu/widgets/menu_top_bar.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  TextEditingController txtSearch = TextEditingController();

  List menuArr = [
    {
      "name": "Food",
      "image": "assets/img/menu_1.png",
      "items_count": "120",
    },
    {
      "name": "Beverages",
      "image": "assets/img/menu_2.png",
      "items_count": "220",
    },
    {
      "name": "Desserts",
      "image": "assets/img/menu_3.png",
      "items_count": "155",
    },
    {
      "name": "Promotions",
      "image": "assets/img/menu_4.png",
      "items_count": "25",
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            margin: EdgeInsets.only(top: 180),
            width: media.width * 0.20,
            height: media.height * 0.6,
            decoration: BoxDecoration(
              color: TColor.primary,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 46),
                  // Menu Top Bar
                  const MenuTopBar(),
                  const SizedBox(height: 20),
                  // Search Bar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RoundTextfield(
                      hintText: "Search Food",
                      controller: txtSearch,
                      left: Container(
                        alignment: Alignment.center,
                        width: 30,
                        child: Image.asset(
                          "assets/img/search.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Menu Category List
                  MenuCategoryList(menuArr: menuArr),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


/*import 'package:flutter/material.dart';
import 'package:food_app1/view/menu/menu_items_view.dart';

import '../../common/color_extension.dart';
import '../../common_widget/round_textfield.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  TextEditingController txtSearch = TextEditingController();
  List menuArr = [
    {
      "name": "Food",
      "image": "assets/img/menu_1.png",
      "items_count": "120",
    },
    {
      "name": "Beverages",
      "image": "assets/img/menu_2.png",
      "items_count": "220",
    },
    {
      "name": "Desserts",
      "image": "assets/img/menu_3.png",
      "items_count": "155",
    },
    {
      "name": "Promotions",
      "image": "assets/img/menu_4.png",
      "items_count": "25",
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            // alignment: Alignment.topRight,
            //margin width height decoration
            margin: EdgeInsets.only(
              top: 180,
            ),
            width: media.width * 0.20,
            height: media.height * 0.6,
            decoration: BoxDecoration(
              color: TColor.primary,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35),
                  bottomRight: Radius.circular(35)),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 46,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Menu",
                            style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/img/shopping_cart.png",
                              width: 25,
                              height: 25,
                            ),
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RoundTextfield(
                      hintText: "Search Food",
                      controller: txtSearch,
                      left: Container(
                        alignment: Alignment.center,
                        width: 30,
                        child: Image.asset(
                          "assets/img/search.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ListView.builder(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 20),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: menuArr.length,
                      itemBuilder: (context, index) {
                        var mObj = menuArr[index] as Map ?? {};
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        MenuItemsView(mObj: mObj)));
                          },
                          child: Stack(
                            children: [
                              Container(
                                alignment: Alignment.centerRight,
                                //margin width height decoration
                                margin: EdgeInsets.only(
                                    top: 0, bottom: 20, left: 30, right: 20),
                                width: media.width - 100,
                                height: 90,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        bottomLeft: Radius.circular(25),
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 7,
                                          offset: Offset(0, 4))
                                    ]),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    // alignment: Alignment.bottomCenter,
                                    mObj["image"],
                                    width: 90,
                                    height: 90,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          mObj["name"],
                                          style: TextStyle(
                                              color: TColor.primaryText,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "${mObj["item_count"].toString()} items",
                                          style: TextStyle(
                                            color: TColor.secondaryText,
                                            fontSize: 11,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(17.5),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 4,
                                              offset: Offset(0, 2))
                                        ]),
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      "assets/img/btn_next.png",
                                      width: 15,
                                      height: 15,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/