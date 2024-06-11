import 'package:bai3/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class Styles {
  static TextStyle titleStyle = const TextStyle(
    color: Color(0xFF000000),
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headLineStyle = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: ThemeColors.textPrimary,
  );

  static TextStyle headLineStyle2 = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w700,
    color: ThemeColors.textPrimary,
  );

  static TextStyle styleErrorText = const TextStyle(fontSize: 10);


  static TextStyle styleText13 = const TextStyle(fontSize: 13);
  static TextStyle styleText14 =
      const TextStyle(fontSize: 14, color: ThemeColors.grey);

  static TextStyle blueText = const TextStyle(
      fontSize: 16, color: ThemeColors.primary, fontWeight: FontWeight.w700);
  static TextStyle grayText = TextStyle(
      fontSize: 16, color: ThemeColors.black.withOpacity(0.7), fontWeight: FontWeight.w700);
  static TextStyle whiteText = const TextStyle(
      fontSize: 16, color: Colors.white, fontWeight: FontWeight.w700);

  //box-shadow
  static BoxShadow boxShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 5,
    blurRadius: 7,
    offset: const Offset(0, 3),
  );
}
