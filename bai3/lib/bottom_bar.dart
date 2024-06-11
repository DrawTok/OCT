import 'package:bai3/screens/main/home_screen.dart';
import 'package:bai3/utils/devices/device_utility.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixedCircle,
        height: TDeviceUtility.getBottomNavigationBarHeight(),
        items: const [
          TabItem(icon: Iconsax.home),
          TabItem(icon: Iconsax.calendar),
          TabItem(icon: Iconsax.add),
          TabItem(icon: Iconsax.clock),
          TabItem(icon: Iconsax.user),
        ],
      ),
      body: const HomeScreen(),
    );
  }
}
