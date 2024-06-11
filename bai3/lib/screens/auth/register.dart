import 'package:bai3/controllers/signup_controller.dart';
import 'package:bai3/styles/spacing_style.dart';
import 'package:bai3/utils/constants/sizes.dart';
import 'package:bai3/widgets/register/signup_form.dart';
import 'package:bai3/widgets/shared/general/custom_appbar.dart';
import 'package:bai3/widgets/shared/logo/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(title: "sign_up".tr, showBackButton: true),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                  padding: SpacingStyles.screenPadding,
                  child: GetBuilder<SignUpController>(builder: (controller) {
                    return Opacity(
                      opacity: controller.loading ? 0.3 : 1,
                      child: const Column(
                        children: [
                          AppLogo(),
                          SizedBox(height: CustomSizes.spaceBtwSections),
                          SignUpForm()
                        ],
                      ),
                    );
                  })),
            ),
            GetBuilder<SignUpController>(builder: (controller) {
              return Visibility(
                  visible: controller.loading,
                  child: const Center(child: CircularProgressIndicator()));
            })
          ],
        ));
  }
}
