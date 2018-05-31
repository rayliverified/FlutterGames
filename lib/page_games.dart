import 'package:flutter/material.dart';

import 'horizontal_game_scroller.dart';
import 'model/repository.dart';

class GamesPage extends StatefulWidget {
  GamesPage({Key key}) : super(key: key);

  @override
  _GamesPageState createState() => new _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 6.0, 16.0, 8.0),
            child: new Text(
              "New Releases",
              style: Theme.of(context).textTheme.subhead,
            ),
          ),
          new HorizontalGameController(newGamesList),
          new Divider(height: 2.0, indent: 8.0),
          new Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
            child: new Text(
              "Most Popular",
              style: Theme.of(context).textTheme.subhead,
            ),
          ),
          new HorizontalGameController(popularGamesList),
        ],
      ),
    );
  }
}
