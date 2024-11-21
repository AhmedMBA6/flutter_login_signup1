import 'package:flutter/material.dart';
import 'package:flutter_login_signup1/src/utils/themes/widget_themes/text_field_theme.dart';

class TeamAppTheme {
  TeamAppTheme ._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    inputDecorationTheme: TeamTextFieldTheme.lightInputDecorationTheme
  );
}