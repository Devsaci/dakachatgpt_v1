import 'package:flutter/material.dart';

class MyThemeProvider extends ChangeNotifier{
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;
}