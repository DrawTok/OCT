
import 'package:bai3/controllers/signin_controller.dart';
import 'package:bai3/shared/input/custom_textfield.dart';
import 'package:bai3/utils/constants/colors.dart';
import 'package:bai3/utils/constants/font.dart';
import 'package:bai3/utils/constants/sizes.dart';
import 'package:bai3/widgets/shared/buttons/custom_elevated_button.dart';
import 'package:bai3/widgets/start_screen/form_divider.dart';
import 'package:bai3/widgets/start_screen/sign_with_google.dart';
import 'package:bai3/widgets/start_screen/terms_conditions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignInForm extends GetView<SignInController> {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKeySignIn,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                hint: 'enter_password'.tr,
                icon: Iconsax.lock,
                label: 'password'.tr,
                isLastField: true,
                isShowPassword: controller.showPassword.value),
          ),
          const SizedBox(height: CustomSizes.spaceBtwItems),
          Align(
            alignment: Alignment.topRight,
            child: InkWell(
              onTap: controller.onForgot,
              child: Text(
                'forgot_password'.tr,
                style: decaSemiBold.copyWith(
                    color: ThemeColors.primary,
                    fontSize: CustomSizes.fontSizeSm),
              ),
            ),
          ),
          const SizedBox(height: CustomSizes.spaceBtwItems),
          CustomElevatedButton(
              label: 'sign_in'.tr,
              bgColor: ThemeColors.primary,
              textColor: ThemeColors.white,
              callback: controller.onSubmit),
          const SizedBox(height: CustomSizes.spaceBtwItems),
          const SignWithGoogle(),
          const SizedBox(height: CustomSizes.spaceBtwItems),
          FormDivider(text: 'not_have_an_account'.tr),
          const SizedBox(height: CustomSizes.spaceBtwItems),
          CustomElevatedButton(
              label: 'sign_up'.tr,
              bgColor: ThemeColors.white,
              textColor: ThemeColors.primary,
              callback: controller.onRegister),
          const SizedBox(height: CustomSizes.spaceBtwSections),
          const Align(
              alignment: Alignment.center,
              child: TermsConditions(isLogin: true)),
        ],
      ),
    );
  }
}
