import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  String currentLange = "en";
  ThemeMode currentTheme = ThemeMode.light;
  void changeTheme(ThemeMode newThemeMode) {
    if (newThemeMode == currentTheme) return;
    currentTheme = newThemeMode;
    notifyListeners();
  }

  void changeLanguage(String newLanguage) {
    if (newLanguage == currentLange) return;
    currentLange = newLanguage;
    notifyListeners();
  }

  bool isDarkMode() {
    return currentTheme == ThemeMode.dark;
  }
  String getMainBackGround(){
   return isDarkMode()?"assests/images/background_dark.png":"assests/images/background_pattren.png";
  }
}
