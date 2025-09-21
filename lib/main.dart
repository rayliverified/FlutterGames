import 'package:flutter/material.dart';
import 'package:flutter_games/pages/home.dart';
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
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
