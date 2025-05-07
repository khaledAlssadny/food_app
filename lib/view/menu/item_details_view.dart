import 'package:flutter/material.dart';
import 'package:food_app1/view/menu/widgets/custom_app_bar.dart';
import 'package:food_app1/view/menu/widgets/details_picture.dart';
import 'package:food_app1/view/menu/widgets/gradient_effect.dart';

class ItemDetailsView extends StatefulWidget {
  const ItemDetailsView({super.key});

  @override
  State<ItemDetailsView> createState() => _ItemDetailsViewState();
}

class _ItemDetailsViewState extends State<ItemDetailsView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            DetailsPicture(media: media),
            GradientEffect(media: media),
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
