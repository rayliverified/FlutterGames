import 'package:flutter/material.dart';

final ThemeData defaultTheme = _buildDefaultTheme();

ThemeData _buildDefaultTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _buildDefaultTextTheme(base.textTheme),
    primaryTextTheme: _buildDefaultTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildDefaultTextTheme(base.accentTextTheme),
  );
}

TextTheme _buildDefaultTextTheme(TextTheme base) {
  return base.copyWith(
    headline3: base.headline3.copyWith(
      fontSize: 14,
    ),
    headline4: base.headline4.copyWith(
      color: Colors.black87,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    headline5: base.headline5.copyWith(
      fontWeight: FontWeight.w500,
    ),
    headline6: base.headline6.copyWith(
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontSize: 30,
    ),
    subtitle1: base.subtitle1.copyWith(
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontSize: 22,
    ),
    bodyText1: base.bodyText1.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    bodyText2: base.bodyText2.copyWith(
      fontSize: 16,
    ),
    caption: base.caption.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
  );
}
