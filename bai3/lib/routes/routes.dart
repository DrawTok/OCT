import 'package:bai3/bottom_bar.dart';
import 'package:bai3/controllers/auth_reset_controller.dart';
import 'package:bai3/controllers/signin_controller.dart';
import 'package:bai3/controllers/signup_controller.dart';
import 'package:bai3/screens/auth/forgot_screen.dart';
import 'package:bai3/screens/auth/login.dart';
import 'package:bai3/screens/auth/onboarding_screen.dart';
import 'package:bai3/screens/auth/register.dart';
import 'package:get/get.dart';

class Routes {
  static const initial = '/';
  static const onBoarding = "/onBoarding";
  static const main = "/main";
  static const signIn = '/signIn';
  static const signUp = '/signUp';
  static const forgot = "/forgot";

  static List<GetPage> routes = [
    GetPage(name: onBoarding, page: () => const OnboardingScreen()),
    GetPage(
        name: signUp,
        page: () => const RegisterScreen(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => SignUpController());
        })),
    GetPage(
        name: signIn,
        page: () => const LoginScreen(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => SignInController());
        })),
    GetPage(
        name: forgot,
        page: () => const ForgotScreen(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => AuthResetController());
        })),
    GetPage(name: main, page: () => const BottomBar())
  ];
}
