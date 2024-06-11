import 'package:bai3/controllers/onboarding_controller.dart';
import 'package:bai3/utils/devices/device_utility.dart';
import 'package:bai3/widgets/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({super.key});

  @override
  Widget build(BuildContext context) {


    return Container(
      margin: EdgeInsets.only(top: TDeviceUtility.getAppBarHeight() - 30),
      alignment: Alignment.topRight,
      child: Obx(
        () => OnboardingController.instance.currentPageIndex.value == 0
            ? const SizedBox()
            : TextButton(
                onPressed: OnboardingController.instance.skipPage,
                child: Text('skip'.tr, style: Styles.grayText),
              ),
      ),
    );
  }
}
