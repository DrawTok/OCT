import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  final SharedPreferences sharedPreferences;
  var theme = 'system';

  ThemeController({required this.sharedPreferences}) {
    getThemeState();
  }

  void getThemeState() {
    if (sharedPreferences.getString('theme') != null) {
      setTheme(sharedPreferences.getString('theme')!);
    } else {
      setTheme('system');
    }
  }

  void setTheme(String value) {
    theme = value;
    sharedPreferences.setString('theme', value);

    if (value == 'system') {
      Get.changeThemeMode(ThemeMode.system);
    } else if (value == 'light') {
      Get.changeThemeMode(ThemeMode.light);
    } else if (value == 'dark') {
      Get.changeThemeMode(ThemeMode.dark);
    }

    update();
  }
}
