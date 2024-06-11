import 'package:bai3/utils/constants/regex.dart';
import 'package:get/get.dart';

class TValidator {
  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'email_required'.tr;
    }

    if (!Regex.emailRegExp.hasMatch(email)) {
      return 'email_invalid'.tr;
    }

    return null;
  }

  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'password_required'.tr;
    }
    if (password.length < 8) {
      return 'Password must be at least 8 characters long.';
    }

    if (!password.contains(Regex.uppercaseRegExp)) {
      return 'Password must contain at least one uppercase letter.';
    }

    if (!password.contains(Regex.specialRegExp)) {
      return 'Password must contain at least one special character';
    }

    return null;
  }

  static String checkPasswordStrength(String password) {
    if (Regex.passwordStrongRegExp.hasMatch(password)) {
      return "strong_password".tr;
    }
    if (Regex.passwordMediumRegExp.hasMatch(password)) {
      return "medium_password".tr;
    }
    return "weak_password".tr;
  }

  static String? validatePhoneNumber(String? phone) {
    if (phone == null || phone.isEmpty) {
      return 'phone_required'.tr;
    }

    if (!Regex.phoneRegExp.hasMatch(phone)) {
      return 'phone_invalid'.tr;
    }
    return null;
  }
}
