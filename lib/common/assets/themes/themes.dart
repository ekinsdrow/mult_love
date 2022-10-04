import 'package:flutter/material.dart';

abstract class Themes {
  static get darkTheme => ThemeData(
        fontFamily: 'Montserrat',
        brightness: Brightness.dark,
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: ThemeData.dark().primaryColor,
        ),
      );
}

class Colors {
  Colors._();
}
