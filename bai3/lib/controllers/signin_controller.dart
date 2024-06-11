import 'package:bai3/data/api/auth_firebase.dart';
import 'package:bai3/data/model/user.dart';

import 'package:bai3/routes/routes.dart';
import 'package:bai3/utils/devices/device_utility.dart';
import 'package:bai3/utils/helper/helper_function.dart';

import 'package:bai3/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  static SignInController get instance => Get.find();

  final AuthFirebase authFirebase = AuthFirebase();

  final formKeySignIn = GlobalKey<FormState>();
  bool _loading = false;
  User _user = User();

  String email = '';
  String password = '';
  var showPassword = true.obs;

  void visibilityPassword() => showPassword.value = !showPassword.value;

  void setEmail(String value) => email = value;

  void setPassword(String value) => password = value;

  String? validateEmail(String? value) => TValidator.validateEmail(value);

  bool get loading => _loading;
  User get user => _user;

  void onSubmit() async {
    final isValid = formKeySignIn.currentState!.validate();
    if (!isValid) {
      return;
    }
    TDeviceUtility.hideKeyBoard(Get.context!);

    await login(email, password)
        .then((message) => HelperFunctions.showSnackBar(message));
  }

  Future<String> login(String email, String password) async {
    _loading = true;
    update();
    String message =
        await authFirebase.signIn(email: email, password: password);

    _loading = false;
    update();
    return message;
  }



  void clearData() {
    _loading = false;
    _user = User();
  }

  void onRegister() => Get.offNamed(Routes.signUp);

  void onForgot() => Get.toNamed(Routes.forgot);
}
