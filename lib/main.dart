import 'package:flutter/material.dart';

import 'package:stream_games/page/page_main.dart';
import 'package:stream_games/themes.dart';

void main() => runApp(new FlutterGames());

class FlutterGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Games',
      theme: defaultTheme,
      home: new MainPage(),
    );
  }
}
