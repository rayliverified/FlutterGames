import 'package:flutter/material.dart';

import 'package:stream_games/controller/scroll_horizontal_game.dart';
import 'package:stream_games/model/repository.dart';

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
            padding: const EdgeInsets.fromLTRB(16.0, 6.0, 8.0, 8.0),
            child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Text(
                    "New Releases",
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  new InkWell(
                    onTap: () => {},
                    child: new Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      child: new Text(
                        "Browse All",
                        style: Theme.of(context).textTheme.display2,
                      ),
                    ),
                  ),
                ]),
          ),
          new HorizontalGameController(newGamesList),
          new Divider(height: 2.0, indent: 8.0),
          new Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 12.0, 8.0, 8.0),
            child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Text(
                    "Most Popular",
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  new InkWell(
                    onTap: () => {},
                    child: new Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      child: new Text(
                        "Browse All",
                        style: Theme.of(context).textTheme.display2,
                      ),
                    ),
                  ),
                ]),
          ),
          new HorizontalGameController(popularGamesList),
        ],
      ),
    );
  }
}
