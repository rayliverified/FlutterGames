import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stream_games/component/item_description.dart';
import 'package:stream_games/component/item_header_game.dart';
import 'package:stream_games/controller/scroll_horizontal_screenshots.dart';
import 'package:stream_games/model/game.dart';

class GameDetailsPage extends StatefulWidget {
  GameDetailsPage(this.game, {Key key}) : super(key: key);

  final Game game;

  @override
  _GameDetailsPageState createState() => _GameDetailsPageState();
}

class _GameDetailsPageState extends State<GameDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8.0),
      clipBehavior: Clip.hardEdge,
      child: SingleChildScrollView(
        child: Column(
          children: [
            GameDetailHeader(widget.game),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 0.0),
              child: SizedBox(
                width: double.infinity,
                // height: double.infinity,
                child: RaisedButton(
                  onPressed: () => {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.adjust,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Rent",
                        style: Theme.of(context)
                            .textTheme
                            .subhead
                            .apply(color: Colors.white),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0)),
                  padding: const EdgeInsets.all(12.0),
                  color: Colors.green,
                  highlightColor: Colors.green.shade400,
                  splashColor: Colors.green.shade400,
                  elevation: 8.0,
                  highlightElevation: 10.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
              child: SizedBox(
                width: double.infinity,
                // height: double.infinity,
                child: OutlineButton(
                  onPressed: () => {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.archive,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        "Buy",
                        style: Theme.of(context)
                            .textTheme
                            .subhead
                            .apply(color: Colors.green),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0)),
                  padding: const EdgeInsets.all(12.0),
                  borderSide: BorderSide(color: Colors.green, width: 4.0),
                  color: Colors.white,
                  highlightColor: Colors.white70,
                  splashColor: Colors.green.shade200,
                  highlightElevation: 0.0,
                  highlightedBorderColor: Colors.green.shade400,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                child: DescriptionText(widget.game.description)),
            Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: HorizontalScreenshotController(widget.game.screenshots)),
          ],
        ),
      ),
    );
  }
}
