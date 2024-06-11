import 'package:bai3/utils/constants/colors.dart';
import 'package:bai3/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class OutlinedButtonCustomTheme {
  OutlinedButtonCustomTheme._(); //To avoid creating instances

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: ThemeColors.dark,
      side: const BorderSide(color: ThemeColors.borderPrimary),
      textStyle: const TextStyle(
          fontSize: 16, color: ThemeColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: CustomSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CustomSizes.buttonRadius)),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: ThemeColors.light,
      side: const BorderSide(color: ThemeColors.borderPrimary),
      textStyle: const TextStyle(
          fontSize: 16,
          color: ThemeColors.textWhite,
          fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: CustomSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CustomSizes.buttonRadius)),
    ),
  );
}
