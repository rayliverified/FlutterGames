import 'package:flutter/material.dart';
import 'package:flutter_games/controller/scroll_horizontal_game.dart';
import 'package:flutter_games/model/repository.dart';

class GamesPage extends StatefulWidget {
  GamesPage({Key key}) : super(key: key);

  @override
  _GamesPageState createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 6, 8, 8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Releases",
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  InkWell(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: Text(
                        "Browse All",
                        style: Theme.of(context).textTheme.display2,
                      ),
                    ),
                  ),
                ]),
          ),
          HorizontalGameController(newGamesList),
          Divider(height: 2, indent: 8),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 8, 8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Popular",
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  InkWell(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: Text(
                        "Browse All",
                        style: Theme.of(context).textTheme.display2,
                      ),
                    ),
                  ),
                ]),
          ),
          HorizontalGameController(popularGamesList),
        ],
      ),
    );
  }
}
