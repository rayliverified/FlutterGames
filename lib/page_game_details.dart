import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'icons.dart';
import 'model/game.dart';
import 'item_game.dart';
import 'item_header_game.dart';

class GameDetailsPage extends StatefulWidget {
  GameDetailsPage(this.game, {Key key}) : super(key: key);

  final Game game;

  @override
  _GameDetailsPageState createState() => new _GameDetailsPageState();
}

class _GameDetailsPageState extends State<GameDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return new Material(
      borderRadius: new BorderRadius.circular(8.0),
      child: new SingleChildScrollView(
        child: new Column(
          children: [
            new GameDetailHeader(widget.game),
          ],
        ),
      ),
    );
  }

  Widget _buildGameDetailsPage() {
    return new Stack(
      children: [
        new Positioned(
          bottom: 0.0,
          left: 16.0,
          right: 16.0,
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              new GameItem(context, widget.game, width: 180.0),
              new Expanded(
                child: new Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      new Text(
                        widget.game.name,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
