import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;
  void toggleTheme(bool isOn) async {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;

    notifyListeners();
  }

  // MyThemes() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   preferences.getBool(prefer_key);
  //   final darkTheme = ThemeData(
  //     scaffoldBackgroundColor: Colors.grey.shade900,
  //     colorScheme: const ColorScheme.dark(),
  //   );
  //   final lightTheme = ThemeData(
  //       scaffoldBackgroundColor: Colors.white,
  //       colorScheme: const ColorScheme.light());
  // }
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: const ColorScheme.dark(),
  );
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light());
}
