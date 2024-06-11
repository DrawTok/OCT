import 'package:bai3/controllers/signup_controller.dart';
import 'package:bai3/utils/constants/colors.dart';
import 'package:bai3/utils/constants/sizes.dart';
import 'package:bai3/utils/helper/helper_function.dart';
import 'package:bai3/widgets/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PasswordChecker extends StatelessWidget {
  const PasswordChecker({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SignUpController.instance;

    return Column(
      children: [
        Obx(
          () => _buildCheckRow(
            controller.isMinCharCount.value,
            'min_char_required'.tr,
          ),
        ),
        Obx(
          () => _buildCheckRow(
            controller.isSpecialRequired.value,
            'min_special_char_required'.tr,
          ),
        ),
        Obx(
          () => _buildCheckRow(
              controller.isStrength.value != '', 'password_strength'.tr,
              strength: controller.isStrength.value),
        )
      ],
    );
  }

  Widget _buildCheckRow(bool isChecked, String text, {String? strength}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: CustomSizes.xs),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(999),
            ),
            alignment: Alignment.center,
            child: Icon(
              Icons.check_circle,
              size: 20.0,
              color: isChecked ? ThemeColors.success : ThemeColors.grey,
            ),
          ),
          const SizedBox(width: CustomSizes.xs),
          Text(
            text,
            style: Styles.styleText13,
          ),
          if (strength != null)
            Text(
              ' $strength',
              style: TextStyle(
                  fontSize: CustomSizes.fontSizeSm,
                  color: HelperFunctions.getPasswordColor(strength)),
            ),
        ],
      ),
    );
  }
}
