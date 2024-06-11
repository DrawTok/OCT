import 'package:bai3/utils/constants/image_string.dart';
import 'package:flutter/cupertino.dart';

class AppLogo extends StatelessWidget{
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(Images.appLogo, height: 60);
  }

}