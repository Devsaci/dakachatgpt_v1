import 'package:flutter/material.dart';

class MyTheme{
  static ThemeData themeData(
      { required bool isDarkTheme,
        required BuildContext context,
      })
  {
    return isDarkTheme ?
      ThemeData(
      scaffoldBackgroundColor: const ²Color(0xFF343541),
      primarySwatch: Colors.purple
    )
    : ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade300,
        primarySwatch: Colors.purple
    );
  }
}