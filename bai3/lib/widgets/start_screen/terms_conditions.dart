import 'package:bai3/theme/widgets/text_custom_theme.dart';
import 'package:bai3/utils/constants/colors.dart';
import 'package:flutter/material.dart';


class TermsConditions extends StatelessWidget {
  final bool isLogin;

  const TermsConditions({super.key, this.isLogin = false});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: isLogin ? '' : 'Khi tạo tài khoản, tức là bạn đã chấp nhận\n',
        style: TextCustomTheme.lightTextTheme.labelLarge,
        children: <TextSpan>[
          TextSpan(
            text: 'Điều khoản dịch vụ',
            style: TextCustomTheme.lightTextTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.w800, color: ThemeColors.primary),
          ),
          TextSpan(
              text: ' và ', style: TextCustomTheme.lightTextTheme.labelLarge),
          TextSpan(
              text: 'Chính sách bảo mật',
              style: TextCustomTheme.lightTextTheme.labelLarge!.copyWith(
                  fontWeight: FontWeight.w800, color: ThemeColors.primary)),
          if (!isLogin) const TextSpan(text: ' của chúng tôi'),
        ],
      ),
      style: const TextStyle(fontSize: 12),
      textAlign: TextAlign.center,
    );
  }
}
