import 'package:flutter/material.dart';
import 'package:my_apk/src/utils/widget%20themes/elevated_button_theme.dart';
import 'package:my_apk/src/utils/widget%20themes/outline_button_theme.dart';
import 'package:my_apk/src/utils/widget%20themes/text_theme.dart';

class THealthTheme {
  THealthTheme._();

  static ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    textTheme: TAppTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlineButtonTheme.lightOutlineButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
  );
  static ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    textTheme: TAppTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlineButtonTheme.darkOutlineButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
  );
}
