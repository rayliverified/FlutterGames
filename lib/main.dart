import 'package:flutter/material.dart';
import 'package:flutter_games/page/page_main.dart';
import 'package:flutter_games/themes.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() => runApp(FlutterGames());

class FlutterGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, child),
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(450, name: MOBILE),
          ResponsiveBreakpoint.autoScale(650, name: TABLET, scaleFactor: 1.25),
          ResponsiveBreakpoint.autoScale(800, name: TABLET, scaleFactor: 1.4),
          ResponsiveBreakpoint.autoScale(1000, name: TABLET, scaleFactor: 1.8),
        ],
        background: Container(color: Color(0xFFF5F5F5)),
      ),
      title: 'Flutter Games',
      theme: defaultTheme,
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
