import 'package:bai3/utils/constants/colors.dart';
import 'package:bai3/utils/constants/font.dart';
import 'package:flutter/material.dart';


import '../../utils/constants/sizes.dart';

class TermsConditions extends StatelessWidget {
  final bool isLogin;

  const TermsConditions({super.key, this.isLogin = false});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: isLogin ? '' : 'Khi tạo tài khoản, tức là bạn đã chấp nhận\n',
        style: decaLight.copyWith(fontSize: CustomSizes.fontSizeXs),
        children: <TextSpan>[
          TextSpan(
            text: 'Điều khoản dịch vụ',
            style: decaBold.copyWith(
                fontSize: CustomSizes.fontSizeXs, color: ThemeColors.primary),
          ),
          TextSpan(
              text: ' và ',
              style: decaLight.copyWith(fontSize: CustomSizes.fontSizeXs)),
          TextSpan(
            text: 'Chính sách bảo mật',
            style: decaBold.copyWith(
                fontSize: CustomSizes.fontSizeXs, color: ThemeColors.primary),
          ),
          if (!isLogin) const TextSpan(text: ' của chúng tôi'),
        ],
      ),
      style: const TextStyle(fontSize: 12),
      textAlign: TextAlign.center,
    );
  }
}
