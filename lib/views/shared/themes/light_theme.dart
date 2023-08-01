import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final Color lightFirstColor = HexColor('#0D4863');
final Color lightSecondColor = HexColor('#52DACF');
final Color lightThirdColor = HexColor('#9EF5CF');
final Color lightFourthColor = HexColor('#4F4F4F');
final Color lightFifthColor = HexColor('#E7E7E7').withOpacity(0.2);

final lightTheme = ThemeData(
  useMaterial3: true,
  bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.white),

  appBarTheme: const AppBarTheme(
      centerTitle: true,
      surfaceTintColor: Colors.white,
      elevation: 0,
      shadowColor: Colors.white,
      titleTextStyle: TextStyle(color: Colors.black)),
  brightness: Brightness.light,
  primaryColor: lightFirstColor,
  colorScheme: ColorScheme.light(
    primary: lightFirstColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(lightFirstColor),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),
  ),
  progressIndicatorTheme: ProgressIndicatorThemeData(color: lightFirstColor),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: lightFirstColor,
    foregroundColor: lightSecondColor,
  ),
  // inputDecorationTheme: InputDecorationTheme(
  //     floatingLabelStyle: TextStyle(color: lightFirstColor),
  //     iconColor: lightSecondColor,
  //     focusedBorder: OutlineInputBorder(
  //       borderSide: BorderSide(color: lightSecondColor),
  //     ),
  //     border: OutlineInputBorder(
  //       borderSide: BorderSide(color: Colors.grey),
  //     )),
);
