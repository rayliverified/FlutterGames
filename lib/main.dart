import 'package:flutter/material.dart';

import 'page_main.dart';
import 'themes.dart';

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
