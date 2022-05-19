import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._(); //Nur eine Instanz dieser Klasse erlaubt

  static final Color _lightPrimaryColor = Colors.blueGrey.shade100;
  static final Color _lightOnPrimaryColor = Colors.blueGrey.shade800;
  static const Color _lightTextColorPrimary = Colors.black87;
  static final Color _lightAppbarColor = Colors.blueAccent.shade400;

  static final Color _darkPrimaryColor = Colors.blueGrey.shade800;
  static final Color _darkOnPrimaryColor = Colors.blueGrey.shade100;
  static const Color _darkTextColorPrimary = Colors.white;
  static final Color _darkAppbarColor = Colors.blueAccent.shade700;

  static const Color _iconColor = Colors.white;

  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: _lightPrimaryColor,
      appBarTheme: AppBarTheme(
        color: _lightAppbarColor,
        iconTheme: const IconThemeData(color: _iconColor),
        toolbarTextStyle: const TextTheme(
          headline6: TextStyle(
            color: _lightTextColorPrimary,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ).bodyText2,
        titleTextStyle: const TextTheme(
          headline6: TextStyle(
            color: _lightTextColorPrimary,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ).headline6,
      ),
      colorScheme: ColorScheme.light(
        primary: _lightPrimaryColor,
        onPrimary: _lightOnPrimaryColor,
      ));

  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: _darkPrimaryColor,
      appBarTheme: AppBarTheme(
        color: _darkAppbarColor,
        iconTheme: const IconThemeData(color: _iconColor),
        toolbarTextStyle: const TextTheme(
          headline6: TextStyle(
            color: _darkTextColorPrimary,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ).bodyText2,
        titleTextStyle: const TextTheme(
          headline6: TextStyle(
            color: _darkTextColorPrimary,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ).headline6,
      ),
      colorScheme: ColorScheme.light(
        primary: _darkPrimaryColor,
        onPrimary: _darkOnPrimaryColor,
      ));
}
