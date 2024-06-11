
import 'package:get/get.dart';


class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  /*AuthRepo authRepo =
      AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find());

  final _email = Get.arguments['email'] ?? '';
  bool hasError = false;
  RxInt countdown = 0.obs;
  TextEditingController otpEditingController = TextEditingController();
  final formKeyOTP = GlobalKey<FormState>();

  String get email => _email;

  void startCountdown() {
    countdown.value = 30;
    countdownTimer();
  }

  void countdownTimer() async {
    for (var i = countdown.value; i >= 0; i--) {
      await Future.delayed(const Duration(seconds: 1));
      countdown.value = i;
    }
  }

  void onClickResendOTP() {
    if (countdown.value == 0) {
      resendOTP();
      startCountdown();
    }
  }

  void resendOTP() {
    authRepo.resendOTP(email: email).then((response) {
      if (response.statusCode != 200) {
        ApiChecker.checkApi(response);
      }
    });
  }

  void authOTP(String value) {
    int otp = int.parse(value);
    authRepo.authOTP(email: email, otp: otp).then((response) {
      if (response.statusCode == 200) {
        Get.offAllNamed(Routes.start);
      } else {
        ApiChecker.checkApi(response);
      }
    });
  }

  @override
  void onInit() {
    startCountdown();
    super.onInit();
  }*/
}
