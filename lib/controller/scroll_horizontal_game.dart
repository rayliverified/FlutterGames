import 'package:flutter/material.dart';
import 'package:stream_games/component/item_game_container.dart';
import 'package:stream_games/model/game.dart';

class HorizontalGameController extends StatelessWidget {
  HorizontalGameController(this.gameItems);
  final List<Game> gameItems;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size.fromHeight(240.0),
      child: ListView.builder(
          itemCount: gameItems.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 12.0, top: 4.0),
          itemBuilder: (BuildContext context, int position) {
            return GameContainerItem(context, gameItems[position]);
          }),
    );
  }
}
