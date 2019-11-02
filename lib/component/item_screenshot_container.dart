import 'package:flutter/material.dart';
import 'package:stream_games/ui/item_image_height.dart';

class ScreenshotContainerItem extends StatelessWidget {
  ScreenshotContainerItem(this.buildContext, this.screenshot,
      {this.height = 400});
  final BuildContext buildContext;
  final String screenshot;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 12, bottom: 16),
      child: InkWell(
        onTap: () => {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageHeightItem(context, screenshot, height - 32),
          ],
        ),
      ),
    );
  }
}
