import 'package:bai3/controllers/onboarding_controller.dart';
import 'package:bai3/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';


class OnboardingRecNavigation extends StatelessWidget {
  const OnboardingRecNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          3,
          (index) => Container(
            height: 3,
            width: 25,
            margin: const EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
              color: OnboardingController.instance.currentPageIndex.value == index
                  ? ThemeColors.primary
                  : ThemeColors.grey,
            ),
          ),
        ),
      );
    });
  }
}
