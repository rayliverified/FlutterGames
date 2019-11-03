import 'package:flutter/material.dart';

class ImageHeightItem extends StatelessWidget {
  ImageHeightItem(this.buildContext, this.image, this.height,
      {this.imageRatio = 1.50, this.onTap});
  final BuildContext buildContext;
  final String image;
  final double height;
  final double imageRatio;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    double width = imageRatio * height;

    return Material(
      borderRadius: BorderRadius.circular(4),
      clipBehavior: Clip.hardEdge,
      elevation: 8,
      shadowColor: Color(0xCC000000),
      child: Ink.image(
        image: NetworkImage(image),
        width: width,
        height: height,
        fit: BoxFit.cover,
        child: InkWell(
          onTap: onTap ?? () {},
          splashColor: Colors.white12,
        ),
      ),
    );
  }
}
