import 'package:bai3/theme/widgets/text_custom_theme.dart';
import 'package:bai3/utils/constants/sizes.dart';
import 'package:bai3/utils/devices/device_utility.dart';
import 'package:bai3/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? onLeadingPressed;
  final Color? backgroundColor;

  const CustomAppbar(
      {super.key,
      required this.title,
      this.showBackButton = false,
      this.leadingIcon,
      this.actions,
      this.onLeadingPressed,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CustomSizes.xs * 3),
      child: AppBar(
        backgroundColor: backgroundColor ??
            (isDarkMode
                ? Theme.of(context).scaffoldBackgroundColor
                : Colors.transparent),
        title: Text(title,
            style: TextCustomTheme.lightTextTheme.headlineMedium!
                .copyWith(fontWeight: FontWeight.w800)),
        centerTitle: true,
        actions: actions,
        automaticallyImplyLeading: false,
        leading: showBackButton
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(
                  Iconsax.arrow_left_2,
                  color: isDarkMode
                      ? Theme.of(context).iconTheme.color
                      : Theme.of(context).iconTheme.color,
                ),
              )
            : leadingIcon != null
                ? IconButton(
                    onPressed: onLeadingPressed,
                    icon: Icon(leadingIcon),
                    color: isDarkMode
                        ? Theme.of(context).iconTheme.color
                        : Theme.of(context).iconTheme.color,
                  )
                : null,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtility.getAppBarHeight());
}
