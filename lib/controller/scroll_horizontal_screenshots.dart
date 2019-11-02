import 'package:flutter/material.dart';
import 'package:stream_games/component/item_screenshot_container.dart';

class HorizontalScreenshotController extends StatelessWidget {
  HorizontalScreenshotController(this.screenshots);
  final List<String> screenshots;

  @override
  Widget build(BuildContext context) {
    const double height = 272;

    return SizedBox.fromSize(
      size: const Size.fromHeight(height),
      child: ListView.builder(
          itemCount: screenshots.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 12),
          itemBuilder: (BuildContext context, int position) {
            return ScreenshotContainerItem(context, screenshots[position],
                height: height - 16);
          }),
    );
  }
}
