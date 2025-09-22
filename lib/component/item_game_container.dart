import 'package:flutter/material.dart';
import 'package:flutter_games/models/game.dart';
import 'package:flutter_games/ui/item_game_box.dart';
import 'package:flutter_games/ui/item_header_diagonal.dart';
import 'package:flutter_games/ui/item_image_height.dart';

class ItemGameContainer extends StatelessWidget {
  const ItemGameContainer({
    super.key,
    required this.game,
    required this.onTap,
  });

  final Game game;
  final Function(Game) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(game),
      child: Stack(
        children: [
          _buildDiagonalHeader(),
          _buildGameBox(),
        ],
      ),
    );
  }

  Widget _buildGameBox() {
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: GameBoxItem(
        game: game,
        height: 200,
        width: 200,
      ),
    );
  }

  Widget _buildDiagonalHeader() {
    return Padding(
      padding: const EdgeInsets.only(top: 80, right: 32),
      child: DiagonalHeader(
        child: HeightImage(
          game.coverUrl,
          height: 180,
        ),
      ),
    );
  }
}
