import 'package:bai3/data/api/auth_firebase.dart';
import 'package:bai3/utils/devices/device_utility.dart';
import 'package:bai3/utils/helper/helper_function.dart';
import 'package:bai3/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthResetController extends GetxController {
  static AuthResetController get instance => Get.find();

  final AuthFirebase authFirebase = AuthFirebase();

  bool loading = false;
  String _email = '';
  bool hasError = false;
  RxInt countdown = 0.obs;
  final formKeyForgot = GlobalKey<FormState>();

  String? validateEmail(String? value) => TValidator.validateEmail(value);

  void setEmail(String value) => _email = value;

  String get email => _email;

  void startCountdown() {
    countdown.value = 30;
    countdownTimer();
  }

  void countdownTimer() async {
    for (var i = countdown.value; i >= 0; i--) {
      await Future.delayed(const Duration(seconds: 1));
      countdown.value = i;
    }
  }

  void onClickResendOTP() {
    if (countdown.value == 0) {
      resendOTP();
      startCountdown();
    }
  }

  void resendOTP() async {
    loading = true;
    update();
    String? message = await authFirebase.sendPasswordResetEmail(email: email);
    loading = false;
    update();
    if (message == null || message == '') {
    } else {
      HelperFunctions.showSnackBar(message);
    }
  }

  void verifyOTP(String otp) async {
    String? message = await authFirebase.verifyResetCode(otp: otp);
    if (message == null || message == '') {
    } else {
      HelperFunctions.showSnackBar(message);
    }
  }

  void onSubmit() {
    final isValid = formKeyForgot.currentState!.validate();
    if (!isValid) {
      return;
    }
    TDeviceUtility.hideKeyBoard(Get.context!);
    resendOTP();
  }

  @override
  void onInit() {
    startCountdown();
    super.onInit();
  }
}
