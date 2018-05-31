import 'package:flutter/material.dart';

import 'model/game.dart';

class GameItem extends StatelessWidget {
  GameItem(this.buildContext, this.game);
  final BuildContext buildContext;
  final Game game;

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          new Material(
            elevation: 8.0,
            shadowColor: new Color(0xCC000000),
            child: new ClipRRect(
              borderRadius: new BorderRadius.circular(4.0),
              child: new Image(
                image: new NetworkImage(game.cover),
                width: 120.0,
                height: 180.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          new Padding(padding: const EdgeInsets.only(top: 6.0)),
          new ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 120.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new Text(game.name,
                      style: Theme.of(context).textTheme.display1,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                  new Text(game.getPlatforms(),
                      style: Theme.of(context).textTheme.caption,
                      maxLines: 1,
                      overflow: TextOverflow.fade),
                ],
              ))
        ],
      ),
    );
  }
}
