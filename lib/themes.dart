import 'package:flutter/material.dart';

final ThemeData defaultTheme = _buildDefaultTheme();

ThemeData _buildDefaultTheme() {
  final ThemeData base = ThemeData.light();
  final TextTheme textTheme = base.textTheme;

  return ThemeData(
    textTheme: TextTheme(
      displaySmall: textTheme.displaySmall!.copyWith(fontSize: 14),
      headlineMedium: textTheme.headlineMedium!.copyWith(
        color: Colors.black87,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      headlineSmall: textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w500,
      ),
      titleLarge: textTheme.titleLarge!.copyWith(
          color: Colors.black, fontWeight: FontWeight.w700, fontSize: 30),
      titleMedium: textTheme.titleMedium!.copyWith(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 22,
      ),
      bodyLarge: textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      bodyMedium: textTheme.bodyMedium!.copyWith(
        fontSize: 16,
      ),
      bodySmall: textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
    ),
  );
}
