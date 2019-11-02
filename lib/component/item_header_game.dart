import 'package:flutter/material.dart';
import 'package:stream_games/icons.dart';
import 'package:stream_games/model/game.dart';
import 'package:stream_games/ui/item_game_box.dart';
import 'package:stream_games/ui/item_header_diagonal.dart';
import 'package:stream_games/ui/item_rating.dart';

class GameDetailHeader extends StatelessWidget {
  GameDetailHeader(this.game);

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 150.0),
          child: _buildDiagonalImageBackground(context),
        ),
        Positioned(
          top: 26.0,
          left: 4.0,
          child: BackButton(color: Colors.white),
        ),
        Positioned(
          bottom: 0.0,
          left: 16.0,
          right: 16.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Hero(
                  tag: game.name,
                  child: GameBoxItem(
                    context,
                    game,
                    width: 150.0,
                  )),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        game.name,
                        style: Theme.of(context).textTheme.subhead,
                        maxLines: 3,
                        overflow: TextOverflow.fade,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: RatingInformation(game),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Row(
                          children: [
                            OutlineButton(
                              onPressed: () => {},
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    playOutlineIcon,
                                    color: Theme.of(context)
                                        .textTheme
                                        .display2
                                        .color,
                                  ),
                                  Text("Trailer",
                                      style:
                                          Theme.of(context).textTheme.display2),
                                ],
                              ),
                              padding: const EdgeInsets.fromLTRB(
                                  6.0, 0.0, 12.0, 0.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              borderSide:
                                  BorderSide(color: Colors.black54, width: 2.0),
                              highlightColor: Colors.white70,
                              splashColor: Colors.black12,
                              highlightElevation: 0.0,
                            ),
                            Padding(padding: EdgeInsets.only(left: 8.0)),
                            OutlineButton(
                              onPressed: () => {},
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    plusIcon,
                                    color: Theme.of(context)
                                        .textTheme
                                        .display2
                                        .color,
                                  ),
                                  Text("Wishlist",
                                      style:
                                          Theme.of(context).textTheme.display2),
                                ],
                              ),
                              padding: const EdgeInsets.fromLTRB(
                                  6.0, 0.0, 12.0, 0.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              borderSide:
                                  BorderSide(color: Colors.black54, width: 2.0),
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

    return DiagonallyCutColoredImage(
      FadeInImage.assetNetwork(
        image: game.cover,
        placeholder: "assets/placeholder_cover.jpg",
        width: screenWidth,
        height: 260.0,
        fit: BoxFit.cover,
      ),
      color: const Color(0x00FFFFFF),
    );
  }
}
