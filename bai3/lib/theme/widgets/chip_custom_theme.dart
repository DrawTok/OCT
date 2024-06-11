import 'package:bai3/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ChipCustomTheme {
  ChipCustomTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: ThemeColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: ThemeColors.black),
    selectedColor: ThemeColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: ThemeColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: ThemeColors.darkerGrey,
    labelStyle: TextStyle(color: ThemeColors.white),
    selectedColor: ThemeColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: ThemeColors.white,
  );
}
