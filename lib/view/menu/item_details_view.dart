import 'package:flutter/material.dart';
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
                child: Column(
                  children: [
                    SizedBox(height: media.width - 60),
                    
                    // Main content container
                    DetailsContentContainer(
                      width: media.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Tandoori Chicken Pizza",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w800,
                              ),
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
                            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada",
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
                          
                          const SizedBox(height: 50),
                        ],
                      ),
                    ),
                  ],
                ),
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
