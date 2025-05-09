import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app1/common/color_extension.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
  });

  final MainAxisAlignment mainAxisAlignment;
  final int rating;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: mainAxisAlignment,
          children: List.generate(5, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: index < rating.floor()
                    ? TColor.primary
                    : TColor.placeholder,
                size: 18,
              ),
            );
          }),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          '$rating Star Ratings',
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500,color: TColor.primary),
        )
      ],
    );
  }
}
