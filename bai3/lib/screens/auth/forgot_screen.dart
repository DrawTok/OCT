import 'package:bai3/controllers/auth_reset_controller.dart';
import 'package:bai3/controllers/signin_controller.dart';
import 'package:bai3/shared/input/custom_textfield.dart';
import 'package:bai3/styles/spacing_style.dart';
import 'package:bai3/utils/constants/colors.dart';
import 'package:bai3/utils/constants/sizes.dart';
import 'package:bai3/widgets/shared/buttons/custom_elevated_button.dart';
import 'package:bai3/widgets/shared/general/custom_appbar.dart';
import 'package:bai3/widgets/shared/logo/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "forgot_password".tr, showBackButton: true),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
                padding: SpacingStyles.screenPadding,
                child: GetBuilder<AuthResetController>(builder: (controller) {
                  return Opacity(
                    opacity: controller.loading ? 0.3 : 1,
                    child: Column(
                      children: [
                        const AppLogo(),
                        const SizedBox(height: CustomSizes.spaceBtwSections),
                        Form(
                          key: controller.formKeyForgot,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomTextField(
                                  onChange: controller.setEmail,
                                  onValidator: controller.validateEmail,
                                  icon: Iconsax.sms,
                                  hint: 'enter_email_address'.tr,
                                  label: 'email'.tr,
                                  isLastField: true),
                              const SizedBox(height: CustomSizes.spaceBtwItems),
                              CustomElevatedButton(
                                  label: 'next'.tr,
                                  bgColor: ThemeColors.primary,
                                  textColor: ThemeColors.white,
                                  callback: controller.onSubmit)
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                })),
          ),
          GetBuilder<SignInController>(builder: (controller) {
            return Visibility(
                visible: controller.loading,
                child: const Center(child: CircularProgressIndicator()));
          })
        ],
      ),
    );
  }
}
