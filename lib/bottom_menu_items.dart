import 'package:flutter/material.dart';
import 'package:flutter_games/page/page_coming_soon.dart';
import 'package:flutter_games/page/page_games.dart';
import 'package:flutter_games/page/page_movies.dart';

List<BottomNavigationBarItem> get bottomMenuItems {
  return [
    BottomNavigationBarItem(
      icon: Icon(Icons.gamepad),
      label: 'Games',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.movie),
      label: 'Movies',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.timelapse),
      label: 'Coming Soon',
    ),
  ];
}

List<Widget> get bottomMenuPages {
  return [
    GamesPage(),
    MoviesPage(),
    ComingSoonPage(),
  ];
}

List<Text> get bottomMenuTitles {
  return [
    Text(
      'Games',
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    Text(
      'Movies',
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    Text(
      'Coming Soon',
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  ];
}
