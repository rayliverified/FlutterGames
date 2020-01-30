import 'package:flutter/material.dart';

class ImageFixedWidth extends StatelessWidget {
  ImageFixedWidth(this.image, this.width,
      {this.imageRatio = 1.618, this.placeholder = ""});
  final String image;
  final double width;
  final double imageRatio;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    double height = imageRatio == null ? width : imageRatio * width;

    return FadeInImage.assetNetwork(
      image: image,
      placeholder: placeholder,
      width: width,
      height: height,
      fit: BoxFit.cover,
      fadeOutDuration: Duration(milliseconds: 100),
      fadeInDuration: Duration(milliseconds: 200),
    );
  }
}

class ImageFixedWidthRounded extends StatelessWidget {
  ImageFixedWidthRounded(this.image, this.width,
      {this.imageRatio = 1.618,
      this.radius = 4,
      this.elevation = 8,
      this.placeholder = ""});
  final String image;
  final double width;
  final double imageRatio;
  final double radius;
  final double elevation;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    double height = imageRatio * width;

    return Material(
      borderRadius: BorderRadius.circular(radius),
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      shadowColor: Color(0xCC000000),
      child: FadeInImage.assetNetwork(
        image: image,
        placeholder: placeholder,
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
