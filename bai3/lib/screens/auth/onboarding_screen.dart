import 'package:bai3/controllers/onboarding_controller.dart';
import 'package:bai3/utils/constants/sizes.dart';
import 'package:bai3/widgets/onboarding/onboarding_button.dart';
import 'package:bai3/widgets/onboarding/onboarding_navigation.dart';
import 'package:bai3/widgets/onboarding/onboarding_page.dart';
import 'package:bai3/widgets/onboarding/onboarding_skip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<OnboardingController>(builder: (controller) {
        return Padding(
          padding: const EdgeInsets.all(CustomSizes.md),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const OnboardingSkip(),
            Expanded(
              child: PageView(
                controller: controller.pageController,
                onPageChanged: controller.updatePageIndicator,
                children: [
                  OnboardingPage(
                      image: 'assets/images/started.png',
                      title: 'on_boarding_1_title'.tr,
                      description: 'on_boarding_1_description'.tr),
                  OnboardingPage(
                      image: 'assets/images/started-2.png',
                      title: 'on_boarding_2_title'.tr,
                      description: 'on_boarding_2_description'.tr),
                  OnboardingPage(
                      image: 'assets/images/started-3.png',
                      title: 'on_boarding_3_title'.tr,
                      description: 'on_boarding_3_description'.tr),
                ],
              ),
            ),
            const OnboardingRecNavigation(),
            const OnboardingButtonNavigation(),
          ]),
        );
      }),
    );
  }
}
