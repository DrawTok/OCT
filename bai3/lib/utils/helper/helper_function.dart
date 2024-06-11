import 'package:bai3/theme/widgets/text_custom_theme.dart';
import 'package:bai3/utils/constants/colors.dart';
import 'package:bai3/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelperFunctions {
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Color getPasswordColor(String value) {
    Color color = ThemeColors.error;

    switch (value) {
      case "Weak" || "Yếu":
        color = ThemeColors.error;
        break;
      case "Medium" || "Trung bình":
        color = ThemeColors.warning;
        break;
      case "Strong" || "Mạnh":
        color = ThemeColors.success;
        break;
      default:
        break;
    }
    return color;
  }

  static void showSnackBar(String message, {bool isError = true}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
        dismissDirection: DismissDirection.horizontal,
        margin: const EdgeInsets.all(CustomSizes.sm),
        duration: const Duration(seconds: 3),
        backgroundColor: isError ? Colors.red : Colors.green,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(CustomSizes.borderRadiusSm)),
        content: Text(message,
            style: TextCustomTheme.lightTextTheme.bodyLarge!
                .copyWith(color: Colors.white))));
  }
}
