import 'package:flutter/material.dart';

abstract class Themes {
  static get darkTheme {
    final dark = ThemeData.dark();

    return ThemeData(
      fontFamily: 'Montserrat',
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: dark.scaffoldBackgroundColor,
      ),
      splashColor: dark.splashColor,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: dark.splashColor,
      ),
    );
  }
}

class Colors {
  Colors._();
}
