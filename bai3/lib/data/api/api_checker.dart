import 'package:bai3/controllers/signin_controller.dart';
import 'package:bai3/routes/routes.dart';
import 'package:bai3/utils/helper/helper_function.dart';
import 'package:get/get.dart';



class ApiChecker {
  static void checkApi(Response response) {
    if (response.statusCode == 401) {
      Get.find<SignInController>().clearData();
      Get.offAllNamed(Routes.signIn);
    } else {
      HelperFunctions.showSnackBar(response.statusText ?? "error");
    }
  }
}
