import 'package:flutter/material.dart';
import 'package:flutter_games/page/page_main.dart';
import 'package:flutter_games/themes.dart';

void main() {
  runApp(const FlutterGames());
}

class FlutterGames extends StatelessWidget {
  const FlutterGames({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Games',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
