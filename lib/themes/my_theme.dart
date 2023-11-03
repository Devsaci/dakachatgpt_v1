import 'package:flutter/material.dart';

class MyTheme{
  static ThemeData themeData(
      { required bool isDarkTheme,
        required BuildContext context,
      })
  {
    return isDarkTheme ?
      ThemeData(
        scaffoldBackgroundColor: const Color(0xFF340000),
        primarySwatch: Colors.purple,
        primaryColorDark: Colors.deepPurple,
        dividerColor: Colors.white,
        disabledColor: Colors.grey,
        cardColor: const Color(0xFF444654),
        canvasColor: Colors.black,
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(color: Color(0xFF444000)),
    )
    : ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade300,
        primarySwatch: Colors.purple
    );
  }
}