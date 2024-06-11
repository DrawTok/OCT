import 'package:bai3/utils/constants/colors.dart';
import 'package:bai3/utils/constants/sizes.dart';
import 'package:bai3/widgets/app_style.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class CustomTextField extends StatelessWidget {
  final void Function(String) onChange;
  final String? Function(String?)? onValidator;
  final VoidCallback? onShowPassword;
  final String label;
  final String hint;
  final IconData icon;
  final bool isShowPassword;
  final bool isLastField;
  const CustomTextField(
      {super.key,
      required this.onChange,
      this.onValidator,
      required this.label,
      required this.icon,
      required this.hint,
      this.onShowPassword,
      this.isShowPassword = false,
      required this.isLastField});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        textInputAction: isLastField
            ? TextInputAction.done
            : TextInputAction.next,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: onChange,
        validator: onValidator,
        keyboardType: TextInputType.text,
        obscureText: isShowPassword,
        decoration: _buildInputDecoration(label,hint,icon,
            onTap: onShowPassword, isShow: isShowPassword));
  }

  InputDecoration _buildInputDecoration(String label, String hint, IconData prefixIcon,
      {void Function()? onTap, bool? isShow}) {
    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(vertical: CustomSizes.md),
      fillColor: Colors.white,
      labelText: label,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
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
