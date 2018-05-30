import 'package:flutter/material.dart';

import 'main_page.dart';
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