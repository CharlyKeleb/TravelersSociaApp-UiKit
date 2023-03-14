import 'package:flutter/material.dart';

class Constants {
  //App related strings
  static String appName = "Manga App";

  //Colors for theme
  static Color lightPrimary = Color(0xfff3f4f9);
  static Color darkPrimary = Color(0xff2B2B2B);
  static Color lightAccent = Colors.red;
  static Color darkAccent = Colors.red;
  static Color lightBG = Color(0xfff3f4f9);
  static Color darkBG = Color(0xff2B2B2B);

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      color: lightBG,
      iconTheme: const IconThemeData(color: Colors.black),
      elevation: 0,
      toolbarTextStyle: TextTheme(
        titleLarge: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ).bodyMedium,
      titleTextStyle: TextTheme(
        titleLarge: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ).titleLarge,
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      elevation: 0,
      color: Color(0xfff3f4f9),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: lightAccent,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: darkPrimary,
    scaffoldBackgroundColor: darkBG,
    appBarTheme: AppBarTheme(
      color: darkBG,

      elevation: 0,
      toolbarTextStyle: TextTheme(
        titleLarge: TextStyle(
          color: lightBG,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ).bodyMedium,
      titleTextStyle: TextTheme(
        titleLarge: TextStyle(
          color: lightBG,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ).titleLarge,
    ),
    bottomAppBarTheme: BottomAppBarTheme(elevation: 0, color: darkBG),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: darkAccent,
    ),
  );
}
