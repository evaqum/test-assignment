import 'package:flutter/material.dart';

abstract class HotelAppTheme {
  HotelAppTheme._();

  static const textStyle = TextStyle(
    fontFamily: 'SF Pro Display',
    height: 1.2,
  );

  static const primaryBlue = Color(0xFF0D72FF);

  static final theme = ThemeData(
    // platform: TargetPlatform.iOS,
    fontFamily: 'SF Pro Display',
    colorSchemeSeed: primaryBlue,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF0D72FF),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 5.0,
        ),
        foregroundColor: Colors.white,
        minimumSize: const Size.fromHeight(48),
        fixedSize: const Size.fromHeight(48),
        textStyle: const TextStyle(
          fontFamily: 'SF Pro Display',
          height: 1.1,
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      ).copyWith(
        elevation: const MaterialStatePropertyAll(0.0),
      ),
    ),
    scaffoldBackgroundColor: const Color(0xFFF6F6F9),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 16.0,
        color: Color(0xFF14142B),
        fontWeight: FontWeight.w400,
      ),
      titleLarge: TextStyle(
        fontFamily: 'SF Pro Display',
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        height: 1.2,
      ),
    ),
    actionIconTheme: ActionIconThemeData(
      backButtonIconBuilder: (context) => const Icon(Icons.arrow_back_ios_new_rounded),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      centerTitle: true,
      iconTheme: IconThemeData(
        size: 16.0,
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: primaryBlue,
    ),
    snackBarTheme: const SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 10.0,
      ),
      filled: true,
      fillColor: Color(0xFFF6F6F9),
      border: UnderlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      labelStyle: TextStyle(
        fontSize: 17.0,
        fontFamily: 'SF Pro Display',
        color: Color(0xFFA9ABB7),
      ),
      floatingLabelStyle: TextStyle(
        color: Color(0xFFA9ABB7),
      ),
    ),
  );
}
