import 'package:flutter/material.dart';

import 'model/game.dart';

class GameBoxItem extends StatelessWidget {
  static const IMAGE_RATIO = 1.50;

  GameBoxItem(this.buildContext, this.game, {this.width = 120.0});
  final BuildContext buildContext;
  final Game game;
  final double width;

  @override
  Widget build(BuildContext context) {
    double height = IMAGE_RATIO * width;

    return new Material(
      borderRadius: new BorderRadius.circular(4.0),
      elevation: 8.0,
      shadowColor: new Color(0xCC000000),
      child: new Image(
        image: new NetworkImage(game.box),
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
