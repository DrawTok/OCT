import 'package:bai3/utils/constants/colors.dart';
import 'package:bai3/utils/constants/image_string.dart';
import 'package:bai3/widgets/shared/buttons/custom_elevated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignWithGoogle extends StatelessWidget {
  const SignWithGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      callback: () {},
      bgColor: ThemeColors.white,
      label: "sign_with_google".tr,
      textColor: ThemeColors.black.withOpacity(0.7),
      widget: Image.asset(Images.google, height: 20),
    );
  }
}
