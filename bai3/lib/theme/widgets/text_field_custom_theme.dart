import 'package:bai3/utils/constants/colors.dart';
import 'package:bai3/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class TextFieldCustomTheme {
  TextFieldCustomTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: ThemeColors.darkGrey,
    suffixIconColor: ThemeColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: CustomSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: CustomSizes.fontSizeMd, color: ThemeColors.black),
    hintStyle: const TextStyle()
        .copyWith(fontSize: CustomSizes.fontSizeSm, color: ThemeColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: ThemeColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CustomSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ThemeColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CustomSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ThemeColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CustomSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ThemeColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CustomSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ThemeColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CustomSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: ThemeColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: ThemeColors.darkGrey,
    suffixIconColor: ThemeColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: CustomSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: CustomSizes.fontSizeMd, color: ThemeColors.white),
    hintStyle: const TextStyle()
        .copyWith(fontSize: CustomSizes.fontSizeSm, color: ThemeColors.white),
    floatingLabelStyle:
        const TextStyle().copyWith(color: ThemeColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CustomSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ThemeColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CustomSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ThemeColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CustomSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ThemeColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CustomSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ThemeColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CustomSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: ThemeColors.warning),
    ),
  );
}
