import 'package:flutter/material.dart';

class ImageHeightItem extends StatelessWidget {
  ImageHeightItem(this.buildContext, this.image, this.height,
      {this.imageRatio = 1.618,
      this.onTap,
      this.radius = 4,
      this.elevation = 8});
  final BuildContext buildContext;
  final String image;
  final double height;
  final double imageRatio;
  final Function onTap;
  final double radius;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    double width = imageRatio * height;

    return Material(
      borderRadius: BorderRadius.circular(radius),
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
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
