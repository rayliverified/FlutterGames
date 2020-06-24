import 'package:flutter/material.dart';
import 'package:flutter_games/icons.dart';
import 'package:flutter_games/model/game.dart';
import 'package:flutter_games/ui/item_game_box.dart';
import 'package:flutter_games/ui/item_header_diagonal.dart';
import 'package:flutter_games/ui/item_rating.dart';

class GameDetailHeader extends StatelessWidget {
  GameDetailHeader(this.game);

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 150),
          child: _buildDiagonalImageBackground(context),
        ),
        Positioned(
          top: 26,
          left: 4,
          child: BackButton(color: Colors.white),
        ),
        Positioned(
          bottom: 0,
          left: 16,
          right: 16,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Hero(
                  tag: game.name,
                  child: GameBoxItem(
                    context,
                    game,
                    width: 150,
                  )),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
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
                        padding: const EdgeInsets.only(top: 8),
                        child: RatingInformation(game),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
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
                              padding: const EdgeInsets.fromLTRB(6, 0, 12, 0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              borderSide:
                                  BorderSide(color: Colors.black54, width: 2),
                              highlightColor: Colors.white70,
                              splashColor: Colors.black12,
                              highlightElevation: 0,
                            ),
                            Padding(padding: EdgeInsets.only(left: 8)),
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
                              padding: const EdgeInsets.fromLTRB(6, 0, 12, 0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              borderSide:
                                  BorderSide(color: Colors.black54, width: 2),
                              highlightColor: Colors.white70,
                              splashColor: Colors.black12,
                              highlightElevation: 0,
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
        height: 260,
        fit: BoxFit.cover,
      ),
      color: const Color(0x00FFFFFF),
    );
  }
}
