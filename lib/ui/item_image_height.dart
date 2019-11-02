import 'package:flutter/material.dart';

class ImageHeightItem extends StatelessWidget {
  ImageHeightItem(this.buildContext, this.image, this.height,
      {this.imageRatio = 1.50});
  final BuildContext buildContext;
  final String image;
  final double height;
  final double imageRatio;

  @override
  Widget build(BuildContext context) {
    double width = imageRatio * height;

    return Material(
      borderRadius: BorderRadius.circular(4.0),
      clipBehavior: Clip.hardEdge,
      elevation: 8.0,
      shadowColor: Color(0xCC000000),
      child: FadeInImage.assetNetwork(
        image: image,
        placeholder: "assets/placeholder_cover.jpg",
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
