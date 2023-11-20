import 'package:flutter/cupertino.dart';

enum BottomMenu {
  games,
  movies,
  browse,
  my,
  more,
}

String menuItemName(BottomMenu layoutType) {
  switch (layoutType) {
    case BottomMenu.games:
      return 'Games';
    case BottomMenu.movies:
      return 'Movies';
    case BottomMenu.browse:
      return 'Browse';
    case BottomMenu.my:
      return 'My Stuff';
    case BottomMenu.more:
      return 'More';
    default:
      return '';
  }
}

IconData menuIcon(BottomMenu layoutType) {
  switch (layoutType) {
    case BottomMenu.games:
      return CupertinoIcons.game_controller_solid;
    case BottomMenu.movies:
      return CupertinoIcons.film;
    case BottomMenu.browse:
      return CupertinoIcons.circle_grid_3x3_fill;
    case BottomMenu.my:
      return CupertinoIcons.profile_circled;
    case BottomMenu.more:
      return CupertinoIcons.ellipsis;
  }
}
