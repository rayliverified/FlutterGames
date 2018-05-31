import 'package:flutter/material.dart';
import 'icons.dart';

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
      return controllerIcon;
    case BottomMenu.movies:
      return movieIcon;
    case BottomMenu.browse:
      return browseIcon;
    case BottomMenu.my:
      return profileIcon;
    case BottomMenu.more:
      return moreIcon;
    default:
      return null;
  }
}
