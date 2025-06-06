import 'package:flutter/material.dart';
import 'package:food_app1/common/color_extension.dart';
import 'package:food_app1/common_widget/round_icon_button.dart';
import 'package:food_app1/view/menu/widgets/custom_app_bar.dart';
import 'package:food_app1/view/menu/widgets/details_picture.dart';
import 'package:food_app1/view/menu/widgets/gradient_effect.dart';
import 'package:food_app1/view/menu/widgets/rating.dart';
import 'package:food_app1/view/menu/widgets/price_section.dart';
import 'package:food_app1/view/menu/widgets/quantity_selector.dart';
import 'package:food_app1/view/menu/widgets/details_content_container.dart';
import 'package:food_app1/view/menu/widgets/description_section.dart';
import 'package:food_app1/view/menu/widgets/customization_section.dart';

class ItemDetailsView extends StatefulWidget {
  const ItemDetailsView({super.key});

  @override
  State<ItemDetailsView> createState() => _ItemDetailsViewState();
}

class _ItemDetailsViewState extends State<ItemDetailsView> {
  double price = 15;
  int quantity = 1;
  bool isFav = false;
  String? selectedSize;
  String? selectedIngredient;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            // Background elements
            DetailsPicture(media: media),
            GradientEffect(media: media),

            // Main scrollable content
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Stack(alignment: Alignment.topCenter, children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: media.width - 60),

                      // Main content container
                      DetailsContentContainer(
                        width: media.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Title
                            Text(
                              "Tandoori Chicken Pizza",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(height: 8),

                            // Rating and Price
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Rating(rating: 4),
                                const Spacer(),
                                PriceSection(price: price),
                              ],
                            ),
                            const SizedBox(height: 15),

                            // Description
                            DescriptionSection(
                              description:
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada",
                            ),
                            const SizedBox(height: 20),

                            // Customization
                            CustomizationSection(
                              selectedSize: selectedSize,
                              selectedIngredient: selectedIngredient,
                              onSizeChanged: (value) {
                                setState(() => selectedSize = value);
                              },
                              onIngredientChanged: (value) {
                                setState(() => selectedIngredient = value);
                              },
                            ),
                            const SizedBox(height: 25),

                            // Quantity Selector
                            QuantitySelector(
                              quantity: quantity,
                              onQuantityChanged: (newQuantity) {
                                setState(() => quantity = newQuantity);
                              },
                            ),
                            const SizedBox(height: 30),
                          ],
                        ),
                      ),

                      Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          // orange container
                          Container(
                            margin: EdgeInsets.only(right: 350),
                            height: 180,
                            width: media.width,
                            // color: TColor.primary,
                            decoration: BoxDecoration(
                                color: TColor.primary,
                                borderRadius: BorderRadius.only(
                                    // topLeft: Radius.circular(35),
                                    // bottomLeft: Radius.circular(35),
                                    topRight: Radius.circular(40),
                                    bottomRight: Radius.circular(40))),
                          ),
                          // white container with total price and add to cart button
                          Container(
                            margin: EdgeInsets.only(
                                left: 10, right: 40, top: 8, bottom: 8),
                            height: 140,
                            width: media.width - 80,
                            // color: TColor.primary,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    bottomLeft: Radius.circular(40),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 12,
                                      offset: Offset(0, 4))
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Total Price",
                                  style: TextStyle(
                                      color: TColor.primaryText,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "\$${(price * quantity).toString()}",
                                  style: TextStyle(
                                      color: TColor.primaryText,
                                      fontSize: 21,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                // - add to cart button
                                SizedBox(
                                  width: 130,
                                  height: 25,
                                  child: RoundIConButton(
                                      title: "Add to cart",
                                      icon: "assets/img/shopping_add.png",
                                      color: TColor.primary,
                                      onPressed: () {}),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              /* Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MyOrderView()))*/
                            },
                            // - Shopping cart icon
                            child: Container(
                              margin: EdgeInsets.only(
                                right: 20,
                              ),
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(22.5),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        offset: Offset(0, 2))
                                  ]),
                              alignment: Alignment.center,
                              child: Image.asset("assets/img/shopping_cart.png",
                                  width: 20, height: 20, color: TColor.primary),
                            ),
                          ),
                          // const SizedBox(
                          //       height: 20,
                          //     ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      )
                    ],
                  ),
                  // - Favorite button
                  Container(
                    height: media.width - 20,
                    alignment: Alignment.bottomRight,
                    margin: const EdgeInsets.only(right: 4),
                    child: InkWell(
                        onTap: () {
                          isFav = !isFav;
                          setState(() {});
                        },
                        child: Image.asset(
                            isFav
                                ? "assets/img/favorites_btn.png"
                                : "assets/img/favorites_btn_2.png",
                            width: 70,
                            height: 70)),
                  ),
                ]),
              ),
            ),

            // App Bar
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
