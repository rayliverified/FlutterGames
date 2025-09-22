import 'package:flutter/material.dart';
import 'package:flutter_games/models/game.dart';
import 'package:flutter_games/ui/item_game_box.dart';
import 'package:flutter_games/ui/item_image_width.dart';

class GameDetailHeader extends StatelessWidget {
  const GameDetailHeader(this.game, {super.key});

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _buildCoverImage(),
        _buildGameBox(),
        _buildGameTitle(),
      ],
    );
  }

  Widget _buildCoverImage() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 100),
      child: WidthImage(game.coverUrl),
    );
  }

  Widget _buildGameBox() {
    return Padding(
      padding: const EdgeInsets.only(top: 100, left: 32),
      child: GameBoxItem(
        game: game,
        height: 200,
        width: 150,
      ),
    );
  }

  Widget _buildGameTitle() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(200, 180, 32, 0),
      child: Text(
        game.name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
    );
  }
}
