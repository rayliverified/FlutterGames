import 'package:flutter/material.dart';
import 'package:stream_games/ui/item_image_height.dart';

class ScreenshotContainerItem extends StatelessWidget {
  ScreenshotContainerItem(this.buildContext, this.screenshot,
      {this.height = 400.0});
  final BuildContext buildContext;
  final String screenshot;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: InkWell(
        onTap: () => {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageHeightItem(context, screenshot, height),
          ],
        ),
      ),
    );
  }
}
