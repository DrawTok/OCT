import 'package:bai3/utils/constants/colors.dart';
import 'package:bai3/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class ElevatedButtonCustomTheme {
  ElevatedButtonCustomTheme._(); // prevent anyone from instantiating this object

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ThemeColors.light,
      backgroundColor: ThemeColors.primary,
      disabledForegroundColor: ThemeColors.darkGrey,
      disabledBackgroundColor: ThemeColors.buttonDisabled,
      side: const BorderSide(color: ThemeColors.primary),
      padding: const EdgeInsets.symmetric(vertical: CustomSizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16,
          color: ThemeColors.textWhite,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CustomSizes.buttonRadius)),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ThemeColors.light,
      backgroundColor: ThemeColors.primary,
      disabledForegroundColor: ThemeColors.darkGrey,
      disabledBackgroundColor: ThemeColors.darkerGrey,
      side: const BorderSide(color: ThemeColors.primary),
      padding: const EdgeInsets.symmetric(vertical: CustomSizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16,
          color: ThemeColors.textWhite,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CustomSizes.buttonRadius)),
    ),
  );
}
