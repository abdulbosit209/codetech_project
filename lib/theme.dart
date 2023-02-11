import 'package:flutter/material.dart';

enum AppTheme {
  light,
  dark,
}

final appThemeData = {
  AppTheme.light: ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFFFBFBFB),
    scaffoldBackgroundColor: const Color(0xFFFBFBFB),
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: Color(0xFF0065E0))
    )
  ),
  AppTheme.dark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF001A48),
      scaffoldBackgroundColor: const Color(0xFF001A48)
  ),
};