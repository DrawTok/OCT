import 'package:bai3/controllers/onboarding_controller.dart';
import 'package:bai3/utils/constants/colors.dart';
import 'package:bai3/widgets/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OnboardingButtonNavigation extends StatelessWidget {
  const OnboardingButtonNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Obx(() {
      return Container(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Row(
            children: [
              if (controller.currentPageIndex.value != 0)
                GestureDetector(
                  onTap: controller.previousPage,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2.0),
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
              Expanded(
                child: CupertinoButton(
                  color: ThemeColors.primary,
                  onPressed: controller.nextPage,
                  child: Text('Tiếp tục', style: Styles.whiteText,),
                ),
              ),
            ],
          ));
    });
  }
}
