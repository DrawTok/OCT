import 'package:bai3/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();


  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      skipPage();
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void previousPage() {
    if (currentPageIndex.value != 0) {
      int page = currentPageIndex.value - 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    Get.offAllNamed(Routes.signIn);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
