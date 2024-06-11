import 'package:bai3/theme/widgets/text_custom_theme.dart';
import 'package:bai3/utils/constants/colors.dart';
import 'package:bai3/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget? widget;
  final String label;
  final VoidCallback callback;
  final Color bgColor;
  final Color textColor;

  const CustomElevatedButton(
      {super.key,
      this.widget,
      required this.callback,
      required this.label,
      required this.bgColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: callback,
          style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(bgColor),
              side: WidgetStateProperty.all<BorderSide>(
                  const BorderSide(color: ThemeColors.primary, width: 1)),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(CustomSizes.borderRadiusMd),
              ))),
          child: widget != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    widget!,
                    const SizedBox(width: CustomSizes.sm),
                    Text(label,
                        style: TextCustomTheme.lightTextTheme.bodyLarge!
                            .copyWith(
                                color: textColor, fontWeight: FontWeight.w800))
                  ],
                )
              : Text(label,
                  style: TextCustomTheme.lightTextTheme.bodyLarge!.copyWith(
                      color: textColor, fontWeight: FontWeight.w800))),
    );
  }
}
