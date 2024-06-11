import 'dart:ui';

import 'package:bai3/controllers/localization_controller.dart';
import 'package:bai3/controllers/theme_controller.dart';
import 'package:bai3/routes/routes.dart';
import 'package:bai3/theme/theme.dart';
import 'package:bai3/utils/constants/animations.dart';
import 'package:bai3/utils/constants/constant.dart';
import 'package:bai3/utils/helper/get_di.dart' as di;
import 'package:bai3/utils/messages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  String apiKey = dotenv.env["API_KEY"]!;
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: apiKey,
          appId: "1:1043287308635:android:062aa264d9ac673948027e",
          messagingSenderId: "1043287308635",
          projectId: "todo-2ba40"));
  Map<String, Map<String, String>> languages = await di.init();
  runApp(MyApp(languages: languages));
}

class MyApp extends StatelessWidget {
  final Map<String, Map<String, String>>? languages;
  const MyApp({super.key, this.languages});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(builder: (themeController) {
      return GetBuilder<LocalizationController>(
          builder: (localizationController) {
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            locale: localizationController.locale,
            fallbackLocale: Locale(AppConstants.languages[0].languageCode,
                AppConstants.languages[0].countryCode),
            navigatorKey: Get.key,
            scrollBehavior: const MaterialScrollBehavior().copyWith(
                dragDevices: {
                  PointerDeviceKind.mouse,
                  PointerDeviceKind.touch
                }),
            title: AppConstants.appName,
            themeMode: getThemeMode(themeController.theme),
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            translations: Messages(languages: languages),
            defaultTransition: Transition.topLevel,
            transitionDuration:
                const Duration(milliseconds: AnimationTimes.durationShort),
            getPages: Routes.routes,
            initialRoute: Routes.main);
      });
    });
  }

  ThemeMode getThemeMode(String type) {
    ThemeMode themeMode = ThemeMode.system;
    switch (type) {
      case "system":
        themeMode = ThemeMode.system;
        break;
      case "dark":
        themeMode = ThemeMode.dark;
        break;
      default:
        themeMode = ThemeMode.light;
        break;
    }

    return themeMode;
  }
}
