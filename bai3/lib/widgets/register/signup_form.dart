import 'package:bai3/controllers/signup_controller.dart';
import 'package:bai3/shared/input/custom_textfield.dart';
import 'package:bai3/utils/constants/colors.dart';
import 'package:bai3/utils/constants/sizes.dart';
import 'package:bai3/widgets/shared/buttons/custom_elevated_button.dart';
import 'package:bai3/widgets/start_screen/form_divider.dart';
import 'package:bai3/widgets/start_screen/terms_conditions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends GetView<SignUpController> {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKeySignUp,
      child: Column(
        children: [
          CustomTextField(
              onChange: controller.setEmail,
              onValidator: controller.validateEmail,
              hint: 'enter_email_address'.tr,
              icon: Iconsax.sms,
              label: 'email'.tr,
              isLastField: false),
          const SizedBox(height: CustomSizes.spaceBtwItems),
          Obx(
            () => CustomTextField(
                onChange: controller.setPassword,
                onShowPassword: controller.visibilityPassword,
                onValidator: controller.validatePassword,
                hint: 'enter_password'.tr,
                icon: Iconsax.lock,
                label: 'password'.tr,
                isLastField: false,
                isShowPassword: controller.showPassword.value),
          ),
          const SizedBox(height: CustomSizes.spaceBtwItems),
          Obx(
                () => CustomTextField(
                onChange: controller.setConfirmPassword,
                onShowPassword: controller.visibilityConfirmPassword,
                onValidator: controller.comparePassword,
                hint: 'enter_password'.tr,
                icon: Iconsax.lock,
                label: 'confirm_password'.tr,
                isLastField: false,
                isShowPassword: controller.showConfirmPassword.value),
          ),
          const SizedBox(height: CustomSizes.spaceBtwItems),
          CustomElevatedButton(
              label: 'sign_up'.tr,
              bgColor: ThemeColors.white,
              textColor: ThemeColors.primary,
              callback: controller.onSubmit),
          const SizedBox(height: CustomSizes.spaceBtwItems),
          FormDivider(text: 'have_an_account'.tr),
          const SizedBox(height: CustomSizes.spaceBtwItems),
          CustomElevatedButton(
              label: 'sign_in'.tr,
              bgColor: ThemeColors.primary,
              textColor: ThemeColors.white,
              callback: controller.onLogin),
          const SizedBox(height: 50),
          const TermsConditions(),
        ],
      ),
    );
  }
}
