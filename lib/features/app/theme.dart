import 'package:flutter/material.dart';

abstract class HotelAppTheme {
  HotelAppTheme._();

  static const textStyle = TextStyle(
    height: 1.2,
  );

  static const primaryBlue = Color(0xFF0D72FF);

  static final theme = ThemeData(
    fontFamily: 'SF Pro Display',
    scaffoldBackgroundColor: const Color(0xFFF6F6F9),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'SF Pro Display',
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        height: 1.2,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      centerTitle: true,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: primaryBlue,
    ),
  );
}
