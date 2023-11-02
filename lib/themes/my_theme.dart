import 'package:flutter/material.dart';

class MyTheme{
  static ThemeData themeData(
      { required bool isDarkTheme,
        required BuildContext context,
      })
  {
    return ThemeData(
      scaffoldBackgroundColor: const Color(0xFF343541),
      primarySwatch: Colors.purple
    );
  }
}