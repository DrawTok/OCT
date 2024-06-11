import 'package:bai3/utils/constants/sizes.dart';
import 'package:bai3/widgets/app_style.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.description,
    required this.title,
  });

  final String image, description, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          height: 300,
        ),
        const SizedBox(height: CustomSizes.defaultSpace),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.headLineStyle2.copyWith(color: Colors.black),
        ),
        const SizedBox(height: CustomSizes.defaultSpace),
        Text(description,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black)),
      ],
    );
  }
}
