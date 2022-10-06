
import 'package:flutter/material.dart';

const kLabelText=TextStyle(
fontSize: 21.0,
  fontWeight: FontWeight.w500,
);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.deepPurple,
  ),
  switchTheme: SwitchThemeData(
    trackColor: MaterialStateProperty.all<Color>(Color(0x5EB285E0)),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(
        Colors.white,
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        Colors.deepPurple,
      ),
    ),
  ),
);

///TODO DARK THEME
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey.shade900,
  ),
  switchTheme: SwitchThemeData(
    trackColor: MaterialStateProperty.all<Color>(Color(0xB4B3A0B3)),
    thumbColor: MaterialStateProperty.all<Color>(Colors.white),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(
        Colors.black,
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        Color(0xFFEED5FC),
      ),
    ),
  ),
);