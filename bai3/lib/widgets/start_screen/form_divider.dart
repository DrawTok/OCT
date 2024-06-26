import 'package:bai3/theme/widgets/text_custom_theme.dart';
import 'package:bai3/utils/constants/colors.dart';
import 'package:bai3/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  final String text;
  const FormDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Expanded(child: Divider(height: CustomSizes.dividerHeight)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: CustomSizes.md),
          child: Text(text,
              style: TextCustomTheme.lightTextTheme.bodyLarge!.copyWith(
                  color: ThemeColors.black.withOpacity(0.6))),
        ),
        const Expanded(child: Divider())
      ],
    );
  }
}
