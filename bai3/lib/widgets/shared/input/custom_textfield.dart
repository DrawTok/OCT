import 'package:bai3/theme/widgets/text_custom_theme.dart';
import 'package:bai3/utils/constants/colors.dart';
import 'package:bai3/utils/constants/sizes.dart';
import 'package:bai3/widgets/app_style.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomTextField extends StatelessWidget {
  final void Function(String) onChange;
  final String? Function(String?)? onValidator;
  final VoidCallback? onShowPassword;
  final String? label;
  final String hint;
  final IconData icon;
  final bool isShowPassword;
  final bool isLastField;
  const CustomTextField(
      {super.key,
      required this.onChange,
      this.onValidator,
      this.label,
      required this.icon,
      required this.hint,
      this.onShowPassword,
      this.isShowPassword = false,
      required this.isLastField});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label != null
            ? Text.rich(TextSpan(children: [
                TextSpan(
                    text: label,
                    style: TextCustomTheme.lightTextTheme.bodyMedium),
                TextSpan(
                    text: '*',
                    style: TextCustomTheme.lightTextTheme.bodyMedium!
                        .copyWith(color: ThemeColors.error))
              ]))
            : const SizedBox(),
        const SizedBox(height: CustomSizes.spaceInputLabel),
        TextFormField(
            textInputAction:
                isLastField ? TextInputAction.done : TextInputAction.next,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: onChange,
            validator: onValidator,
            keyboardType: TextInputType.text,
            obscureText: isShowPassword,
            decoration: _buildInputDecoration(hint, icon,
                onTap: onShowPassword, isShow: isShowPassword))
      ],
    );
  }

  InputDecoration _buildInputDecoration(String hint, IconData prefixIcon,
      {void Function()? onTap, bool? isShow}) {
    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(vertical: CustomSizes.md),
      fillColor: Colors.white,
      filled: true,
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: ThemeColors.primary, width: 0.5),
        borderRadius: BorderRadius.circular(CustomSizes.borderRadiusLg),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: ThemeColors.grey),
        borderRadius: BorderRadius.circular(CustomSizes.borderRadiusLg),
      ),
      hintText: hint,
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: ThemeColors.error),
        borderRadius: BorderRadius.circular(CustomSizes.borderRadiusLg),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: ThemeColors.error),
        borderRadius: BorderRadius.circular(CustomSizes.borderRadiusLg),
      ),
      errorStyle: Styles.styleErrorText,
      hintStyle: Styles.styleText14,
      prefixIcon: Icon(prefixIcon, color: ThemeColors.black),
      suffixIcon: onTap != null
          ? InkWell(
              onTap: onTap,
              child: Icon(isShow! ? Iconsax.eye_slash : Iconsax.eye))
          : null,
    );
  }
}
