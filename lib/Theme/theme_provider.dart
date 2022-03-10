import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ThemeProvider with ChangeNotifier {
  final darkTheme = ThemeData(
      primaryColor: Colors.black,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: HexColor('#1B262C'),
      secondaryHeaderColor: Colors.grey.shade300,
      // Elevated Button
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.black,
      )),
      progressIndicatorTheme:
          ProgressIndicatorThemeData(circularTrackColor: Colors.blue));

  final lightTheme = ThemeData(
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.red,
      brightness: Brightness.dark,
      // Elevated Button
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.red,
      )),
      progressIndicatorTheme:
          ProgressIndicatorThemeData(circularTrackColor: Colors.red.shade700));
}
