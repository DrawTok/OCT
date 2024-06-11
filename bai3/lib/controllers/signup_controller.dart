import 'package:bai3/data/api/auth_firebase.dart';
import 'package:bai3/routes/routes.dart';
import 'package:bai3/utils/devices/device_utility.dart';
import 'package:bai3/utils/helper/helper_function.dart';
import 'package:bai3/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final AuthFirebase authFirebase = AuthFirebase();

  bool _loading = false;

  static SignUpController get instance => Get.find();
  final formKeySignUp = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String confirmPassword = '';
  var showPassword = true.obs;
  var showConfirmPassword = true.obs;
  var isMinCharCount = false.obs;
  var isSpecialRequired = false.obs;
  var isStrength = ''.obs;

  bool get loading => _loading;

  void visibilityPassword() => showPassword.value = !showPassword.value;

  void visibilityConfirmPassword() =>
      showConfirmPassword.value = !showConfirmPassword.value;

  void setEmail(String value) => email = value;

  void setPassword(String value) => password = value;

  void setConfirmPassword(String value) => confirmPassword = value;

  String? validateEmail(String? value) => TValidator.validateEmail(value);

  String? validatePassword(String? value) => TValidator.validatePassword(value);

  String? comparePassword(String? value) {
    if (password == confirmPassword) {
      return null;
    }
    return "confirm_password_does_not_matched".tr;
  }

  void onSubmit() async {
    final isValid = formKeySignUp.currentState!.validate();

    if (!isValid) {
      return;
    }

    TDeviceUtility.hideKeyBoard(Get.context!);

    await register(email, password)
        .then((message) => HelperFunctions.showSnackBar(message));
  }

  Future<String> register(String email, String password) async {
    _loading = true;
    update();
    String message =
        await authFirebase.createUser(email: email, password: password);

    _loading = false;
    update();
    return message;
  }

  void onLogin() => Get.offNamed(Routes.signIn);
}
