import 'package:flutter/material.dart';
import 'package:flutter_games/page/page_main.dart';
import 'package:flutter_games/themes.dart';

void main() => runApp(FlutterGames());

class FlutterGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Games',
      theme: defaultTheme,
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
