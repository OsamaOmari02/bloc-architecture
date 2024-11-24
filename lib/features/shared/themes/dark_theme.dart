import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const Color darkPrimaryColor = Color(0xFFE0115F);

final darkTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'MuseoModerno',
  appBarTheme: const AppBarTheme(
    backgroundColor: darkPrimaryColor,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness:
          Brightness.light, //<-- For Android SEE HERE (dark icons)
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarDividerColor: Colors.black,
    ),
    centerTitle: true,
  ),
  brightness: Brightness.dark,
  primaryColor: darkPrimaryColor,
  colorScheme: const ColorScheme.dark(
    primary: darkPrimaryColor,
  ),
  // progressIndicatorTheme: const ProgressIndicatorThemeData(color: darkPrimaryColor),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: darkPrimaryColor,
  ),
  inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: const TextStyle(color: darkPrimaryColor),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      )),
);
