import 'package:bai3/styles/spacing_style.dart';
import 'package:bai3/theme/widgets/text_custom_theme.dart';
import 'package:bai3/utils/constants/image_string.dart';
import 'package:bai3/utils/constants/sizes.dart';
import 'package:bai3/widgets/shared/general/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Trang chủ',
      ),
      body: SingleChildScrollView(
          child: Padding(
              padding: SpacingStyles.screenPadding,
              child: Column(
                children: [
                  Image.asset(Images.taskHome),
                  const SizedBox(height: CustomSizes.spaceBtwItems),
                  Text("message_home".tr,
                      textAlign: TextAlign.center,
                      style: TextCustomTheme.lightTextTheme.headlineSmall),
                  Text("tooltip_home".tr,
                      style: TextCustomTheme.lightTextTheme.labelLarge),
                ],
              ))),
    );
  }
}
