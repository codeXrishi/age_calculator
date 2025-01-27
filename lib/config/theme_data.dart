import 'package:age_calc/config/colors.dart';
import 'package:flutter/material.dart';

var lighTheme = ThemeData(
  scaffoldBackgroundColor: lightBgColor,
  brightness: Brightness.light,
  useMaterial3: true,
  textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      labelSmall: TextStyle(
        color: lightLabelColor,
        fontSize: 12,
      )),
  appBarTheme: AppBarTheme(
    backgroundColor: lightDivColor.withOpacity(.8),
    elevation: 3,
    centerTitle: true,
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: lightBgColor,
    onPrimary: lightFontColor,
    secondary: lightDivColor,
    onSecondary: lightBgColor,
    error: Colors.red,
    onError: lightFontColor,
    surface: lightPrimaryColor,
    onSurface: lightFontColor,
    primaryContainer: lightDivColor,
    onPrimaryContainer: lightFontColor,
    onSecondaryContainer: lightLabelColor,
  ),
);

var darkTheme = ThemeData(
  scaffoldBackgroundColor: darkBgColor,
  brightness: Brightness.dark,
  useMaterial3: true,
  textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      labelSmall: TextStyle(
        color: darkLabelColor,
        fontSize: 12,
      )),
  appBarTheme: const AppBarTheme(
    backgroundColor: darkDivColor,
    centerTitle: true,
    elevation: 3,
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: darkDivColor,
    onPrimary: darkFontColor,
    secondary: darkDivColor,
    onSecondary: darkBgColor,
    error: Colors.red,
    onError: darkFontColor,
    surface: darkPrimaryColor,
    onSurface: darkFontColor,
    primaryContainer: darkDivColor,
    onPrimaryContainer: darkFontColor,
    onSecondaryContainer: darkLabelColor,
  ),
);
