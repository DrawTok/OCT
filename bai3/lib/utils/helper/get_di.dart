import 'dart:convert';
import 'package:bai3/controllers/localization_controller.dart';
import 'package:bai3/controllers/onboarding_controller.dart';
import 'package:bai3/controllers/signin_controller.dart';
import 'package:bai3/controllers/signup_controller.dart';
import 'package:bai3/controllers/theme_controller.dart';
import 'package:bai3/data/api/api_client.dart';
import 'package:bai3/data/model/language_model.dart';
import 'package:bai3/data/repository/auth_repo.dart';
import 'package:bai3/data/repository/language_repo.dart';
import 'package:bai3/utils/constants/constant.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:shared_preferences/shared_preferences.dart';



Future<Map<String, Map<String, String>>> init() async {
  // Core
  final sharedPreferences = await SharedPreferences.getInstance();
  //final firstCamera = await availableCameras();

  Get.lazyPut(() => sharedPreferences);
  //Get.lazyPut(() => firstCamera);
  Get.lazyPut(() => ApiClient(sharedPreferences: Get.find()));

  // Repository
  Get.lazyPut(() => LanguageRepo());
  Get.lazyPut(
          () => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));

  /*Get.lazyPut(
          () => SplashRepo(apiClient: Get.find()));*/
  // Controller
  Get.lazyPut(() => ThemeController(sharedPreferences: Get.find()));
  Get.lazyPut(() => LocalizationController(sharedPreferences: Get.find()));
  Get.lazyPut(() => OnboardingController());
  Get.lazyPut(() => SignInController());
  Get.lazyPut(() => SignUpController());

  if (await Permission.location.isGranted) {
    /*final newLocalData = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    Get.lazyPut(() => newLocalData);*/
  }

  Map<String, Map<String, String>> languages = {};
  for (LanguageModel languageModel in AppConstants.languages) {
    String jsonStringValues = await rootBundle
        .loadString('assets/language/${languageModel.languageCode}.json');
    Map<String, dynamic> mappedJson = json.decode(jsonStringValues);
    Map<String, String> jsonLanguage = {};
    mappedJson.forEach((key, value) {
      jsonLanguage[key] = value.toString();
    });
    languages['${languageModel.languageCode}_${languageModel.countryCode}'] =
        jsonLanguage;
  }
  return languages;
}
