import 'package:flutter/material.dart';

import 'icons.dart';
import 'model/game.dart';
import 'item_game_box.dart';
import 'item_header_diagonal.dart';
import 'item_rating.dart';

class GameDetailHeader extends StatelessWidget {
  GameDetailHeader(this.game);

  final Game game;

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Padding(
          padding: const EdgeInsets.only(bottom: 150.0),
          child: _buildDiagonalImageBackground(context),
        ),
        new Positioned(
          top: 26.0,
          left: 4.0,
          child: new BackButton(color: Colors.white),
        ),
        new Positioned(
          bottom: 0.0,
          left: 16.0,
          right: 16.0,
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              new Hero(
                  tag: game.name,
                  child: new GameBoxItem(
                    context,
                    game,
                    width: 150.0,
                  )
              ),
              new Expanded(
                child: new Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      new Text(
                        game.name,
                        style: Theme.of(context).textTheme.subhead,
                        maxLines: 3,
                        overflow: TextOverflow.fade,
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: new RatingInformation(game),
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: new Row(
                          children: [
                            new OutlineButton(
                              onPressed: () => {},
                              child: new Row(
                                children: <Widget>[
                                  new Icon(
                                    playOutlineIcon,
                                    color: Theme
                                        .of(context)
                                        .textTheme
                                        .display2
                                        .color,
                                  ),
                                  new Text("Trailer",
                                      style:
                                      Theme.of(context).textTheme.display2),
                                ],
                              ),
                              padding: const EdgeInsets.fromLTRB(
                                  6.0, 0.0, 12.0, 0.0),
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                  new BorderRadius.circular(30.0)),
                              borderSide: new BorderSide(
                                  color: Colors.black54, width: 2.0),
                              highlightColor: Colors.white70,
                              splashColor: Colors.black12,
                              highlightElevation: 0.0,
                            ),
                            new Padding(padding: EdgeInsets.only(left: 8.0)),
                            new OutlineButton(
                              onPressed: () => {},
                              child: new Row(
                                children: <Widget>[
                                  new Icon(
                                    plusIcon,
                                    color: Theme
                                        .of(context)
                                        .textTheme
                                        .display2
                                        .color,
                                  ),
                                  new Text("Wishlist",
                                      style:
                                      Theme.of(context).textTheme.display2),
                                ],
                              ),
                              padding: const EdgeInsets.fromLTRB(
                                  6.0, 0.0, 12.0, 0.0),
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                  new BorderRadius.circular(30.0)),
                              borderSide: new BorderSide(
                                  color: Colors.black54, width: 2.0),
                              highlightColor: Colors.white70,
                              splashColor: Colors.black12,
                              highlightElevation: 0.0,
                            ),
                          ],
                        ),
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

  Widget _buildDiagonalImageBackground(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return new DiagonallyCutColoredImage(
      new Image(
        image: NetworkImage(game.cover),
        width: screenWidth,
        height: 260.0,
        fit: BoxFit.cover,
      ),
      color: const Color(0x00FFFFFF),
    );
  }
}
