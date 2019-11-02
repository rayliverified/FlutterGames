import 'package:flutter/material.dart';

class ImageWidthItem extends StatelessWidget {
  ImageWidthItem(this.buildContext, this.image, this.width,
      {this.imageRatio = 1.50});
  final BuildContext buildContext;
  final String image;
  final double width;
  final double imageRatio;

  @override
  Widget build(BuildContext context) {
    double height = imageRatio * width;

    return Material(
      borderRadius: BorderRadius.circular(4.0),
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
