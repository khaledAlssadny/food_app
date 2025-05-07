import 'package:flutter/material.dart';

class DetailsPicture extends StatelessWidget {
  const DetailsPicture({
    super.key,
    required this.media,
  });

  final Size media;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/img/detail_top.png",
      width: media.width,
      height: media.width,
      fit: BoxFit.cover,
    );
  }
}
