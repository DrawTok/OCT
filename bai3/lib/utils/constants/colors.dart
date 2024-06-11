import 'package:flutter/material.dart';

class ThemeColors {
  // App theme colors
  static const Color primary = Color.fromRGBO(75, 129, 255, 1);
  static const Color secondary = Color.fromRGBO(255, 168, 75, 1);
  static const Color accent = Color.fromRGBO(176, 199, 255, 1);

  // Text colors
  static const Color textPrimary = Color.fromRGBO(51, 51, 51, 1);
  static const Color textSecondary = Color.fromRGBO(108, 117, 125, 1);
  static const Color textWhite = Colors.white;

  // Background colors
  static const Color light = Color.fromRGBO(246, 246, 246, 1);
  static const Color dark = Color.fromRGBO(39, 39, 39, 1);
  static const Color primaryBackground = Color.fromRGBO(243, 245, 255, 1);
  static const LinearGradient gradientBackground = LinearGradient(colors: [
    Color.fromRGBO(175, 209, 242, 1.0),
    Color.fromRGBO(234, 206, 245, 1.0)
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);

  // Background Container colors
  static const Color lightContainer = Color.fromRGBO(246, 246, 246, 1);
  static Color darkContainer = ThemeColors.white.withOpacity(0.1);

  // Button colors
  static const Color buttonPrimary = Color.fromRGBO(75, 104, 255, 1);
  static const Color buttonSecondary = Color.fromRGBO(108, 117, 125, 1);
  static const Color buttonDisabled = Color.fromRGBO(196, 196, 196, 1);

  // Border colors
  static const Color borderPrimary = Color.fromRGBO(217, 217, 217, 1);
  static const Color borderSecondary = Color.fromRGBO(230, 230, 230, 1);

  // Error and validation colors
  static const Color error = Color.fromRGBO(211, 47, 47, 1);
  static const Color success = Color.fromRGBO(56, 142, 60, 1);
  static const Color warning = Color.fromRGBO(245, 124, 0, 1);
  static const Color info = Color.fromRGBO(25, 118, 210, 1);

  // Neutral Shades
  static const Color black = Color.fromRGBO(35, 35, 35, 1);
  static const Color darkerGrey = Color.fromRGBO(79, 79, 79, 1);
  static const Color darkGrey = Color.fromRGBO(147, 147, 147, 1);
  static const Color grey = Color.fromRGBO(224, 224, 224, 1);
  static const Color softGrey = Color.fromRGBO(244, 244, 244, 1);
  static const Color lightGrey = Color.fromRGBO(249, 249, 249, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
}
