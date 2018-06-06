import 'package:flutter/material.dart';

import 'item_image_height.dart';

class ScreenshotContainerItem extends StatelessWidget {
  ScreenshotContainerItem(this.buildContext, this.screenshot, {this.height = 400.0});
  final BuildContext buildContext;
  final String screenshot;
  final double height;

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: new InkWell(
        onTap: () => {},
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            new ImageHeightItem(context, screenshot, height),
          ],
        ),
      ),
    );
  }
}