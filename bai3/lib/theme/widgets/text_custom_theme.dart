import 'package:bai3/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TextCustomTheme {
  TextCustomTheme._(); // To avoid creating instances

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 32.0,
        fontWeight: FontWeight.w700,
        color: ThemeColors.dark),
    headlineMedium: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
        color: ThemeColors.dark),
    headlineSmall: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: ThemeColors.dark),
    titleLarge: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: ThemeColors.dark),
    titleMedium: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: ThemeColors.dark),
    titleSmall: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        color: ThemeColors.dark),
    bodyLarge: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: ThemeColors.dark),
    bodyMedium: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 14.0,
        fontWeight: FontWeight.w300,
        color: ThemeColors.dark),
    bodySmall: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 14.0,
        fontWeight: FontWeight.w300,
        color: ThemeColors.dark.withOpacity(0.5)),
    labelLarge: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 12.0,
        fontWeight: FontWeight.w300,
        color: ThemeColors.dark),
    labelMedium: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 12.0,
        fontWeight: FontWeight.w300,
        color: ThemeColors.dark.withOpacity(0.5)),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 32.0,
        fontWeight: FontWeight.w700,
        color: ThemeColors.light),
    headlineMedium: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
        color: ThemeColors.light),
    headlineSmall: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: ThemeColors.light),
    titleLarge: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: ThemeColors.light),
    titleMedium: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: ThemeColors.light),
    titleSmall: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        color: ThemeColors.light),
    bodyLarge: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: ThemeColors.light),
    bodyMedium: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 14.0,
        fontWeight: FontWeight.w300,
        color: ThemeColors.light),
    bodySmall: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 14.0,
        fontWeight: FontWeight.w300,
        color: ThemeColors.light.withOpacity(0.5)),
    labelLarge: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 12.0,
        fontWeight: FontWeight.w300,
        color: ThemeColors.light),
    labelMedium: const TextStyle().copyWith(
        fontFamily: 'Lexend Deca',
        fontSize: 12.0,
        fontWeight: FontWeight.w300,
        color: ThemeColors.light.withOpacity(0.5)),
  );
}
