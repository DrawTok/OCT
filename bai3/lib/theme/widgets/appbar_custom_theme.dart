import 'package:bai3/utils/constants/colors.dart';
import 'package:bai3/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppBarCustomTheme {
  AppBarCustomTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: ThemeColors.black, size: CustomSizes.iconMd),
    actionsIconTheme: IconThemeData(color: ThemeColors.black, size: CustomSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: ThemeColors.black),
  );

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: ThemeColors.black, size: CustomSizes.iconMd),
    actionsIconTheme: IconThemeData(color: ThemeColors.white, size: CustomSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: ThemeColors.white),
  );
}
