import 'package:flutter/material.dart';

class AppThemeController extends ChangeNotifier {
  final ThemeData darkTheme = ThemeData(brightness: Brightness.dark);
  final ThemeData lightTheme = ThemeData(brightness: Brightness.light);
  ThemeMode themeMode;

  AppThemeController({this.themeMode = ThemeMode.light});

  void changeAppTheme() {
    if (themeMode == ThemeMode.light) {
      themeMode = ThemeMode.dark;
    } else {
      themeMode = ThemeMode.light;
    }
    notifyListeners();
  }
}
