import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyThemeProvider extends ChangeNotifier{
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value)  {
    _darkTheme = value;
       saveThemeToSharedPreferences(value: value);

  }

  void saveThemeToSharedPreferences({required bool value}) {
    final SharedPreferences sharedPreferences = SharedPreferences.getInstance() as SharedPreferences;
        sharedPreferences.setBool("themeStatus", value);
  }
}