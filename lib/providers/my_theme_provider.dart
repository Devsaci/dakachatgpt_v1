import 'package:dakachatgpt_v1/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyThemeProvider extends ChangeNotifier {
  bool _darkTheme = true;

  bool get themeType => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    saveThemeToSharedPreferences(value: value);
    notifyListeners();
  }

  void saveThemeToSharedPreferences({required bool value}) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(Constants.themeStatus, value);
  }

  getThemeStatus() async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    _darkTheme = sharedPreferences.getBool(Constants.themeStatus) ?? false;
    notifyListeners();
  }
}
