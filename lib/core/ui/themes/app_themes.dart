import 'package:flutter/material.dart';

import 'colors.dart';

enum AppTheme {
  dark,
  light,
}

final appThemeData = {
  AppTheme.dark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: RED_PRIMARY_COLOR,
    scaffoldBackgroundColor: BACKGROUND_COLOR,
    fontFamily: 'DejaVuSans',
    colorScheme: const ColorScheme.dark(
      onSecondary: SECOND_WHITE_COLOR,
      secondary: RED_PRIMARY_COLOR,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      textTheme: TextTheme(
          headline6: TextStyle(
              color: Colors.white, fontSize: 20, fontFamily: 'DejaVuSans')),
      color: Colors.transparent,
      elevation: 0,
      brightness: Brightness.dark,
      iconTheme: IconThemeData(
        color: SECOND_WHITE_COLOR,
      ),
    ),
  ),
  AppTheme.light: ThemeData(
    fontFamily: 'DejaVuSans',
    brightness: Brightness.light,
    inputDecorationTheme:
        const InputDecorationTheme(fillColor: TEXT_FIELD_COLOR),
    colorScheme: const ColorScheme.light(
      onSecondary: TEXT_FIELD_COLOR,
      secondary: RED_PRIMARY_COLOR,
    ),
    primaryColor: RED_PRIMARY_COLOR,
    accentColor: RED_PRIMARY_COLOR,
    canvasColor: BACKGROUND_COLOR,
    scaffoldBackgroundColor: BACKGROUND_COLOR,
    cardColor: BACKGROUND_COLOR,
    backgroundColor: BACKGROUND_COLOR,
    primaryColorLight: LIGHT_TEXT,
    bottomAppBarColor: BLUE_PRIMARY_COLOR,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: RED_PRIMARY_COLOR,
    ),
    splashColor: BLUE_PRIMARY_COLOR,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      textTheme: TextTheme(
          headline6: TextStyle(
              color: Colors.white, fontSize: 20, fontFamily: 'DejaVuSans')),
      color: Colors.transparent,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(
        color: BLUE_PRIMARY_COLOR,
      ),
    ),
  ),
};
