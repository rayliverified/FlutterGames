import 'package:flutter/material.dart';
import 'package:flutter_games/model/game.dart';

class RatingInformation extends StatelessWidget {
  RatingInformation(this.game);

  final Game game;

  _buildRatingBar(ThemeData theme) {
    var stars = <Widget>[];

    for (var i = 1; i <= 5; i++) {
      var color =
          i <= game.rating ? theme.colorScheme.secondary : Colors.black12;
      var star = Icon(
        Icons.star,
        color: color,
      );

      stars.add(star);
    }

    return Row(children: stars);
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    var ratingCaptionStyle =
        textTheme.bodySmall!.copyWith(color: Colors.black45);

    var numericRating = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          game.rating.toString(),
          style: textTheme.headlineSmall!.copyWith(
            fontWeight: FontWeight.w400,
            color: theme.colorScheme.secondary,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            'Rating',
            style: ratingCaptionStyle,
          ),
        ),
      ],
    );

    var starRating = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildRatingBar(theme),
//        Padding(
//          padding: const EdgeInsets.only(top: 4, left: 4),
//          child: Text(
//            'Tap to Rate',
//            style: ratingCaptionStyle,
//          ),
//        ),
      ],
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        numericRating,
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: starRating,
        ),
      ],
    );
  }
}
