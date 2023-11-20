import 'package:flutter/material.dart';
import 'package:flutter_games/model/game.dart';
import "package:flutter_games/page/page_game_details.dart";
import "package:flutter_games/ui/item_game_box.dart";

class GameContainerItem extends StatelessWidget {
  GameContainerItem(this.buildContext, this.game);
  final BuildContext buildContext;
  final Game game;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: InkWell(
        onTap: () => _goGameDetailsPage(context, game),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: game.name,
              child: GameBoxItem(context, game, width: 120),
            ),
            Padding(padding: const EdgeInsets.only(top: 6)),
            ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 120),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(game.name,
                        style: Theme.of(context).textTheme.headlineMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                    Text(game.getPlatforms(),
                        style: Theme.of(context).textTheme.bodySmall,
                        maxLines: 1,
                        overflow: TextOverflow.fade),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  void _goGameDetailsPage(BuildContext context, Game game) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (c) {
          return GameDetailsPage(game);
        },
      ),
    );
  }
}
