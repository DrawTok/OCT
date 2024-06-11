import 'package:bai3/data/api/api_client.dart';
import 'package:bai3/utils/constants/constant.dart';
import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;

  AuthRepo({required this.apiClient, required this.sharedPreferences});

  Future<Response> register(
      {required String email,
      required String fullName,
      required String password,
      required String confirmPassword}) async {
    Map<String, String> header = {'Content-Type': 'application/json'};

    return await apiClient.postData(
        AppConstants.registerUri,
        {
          'email': email,
          'fullName': fullName,
          'password': password,
          'confirmPassword': confirmPassword
        },
        header);
  }

  Future<Response> authOTP({
    required String email,
    required int otp,
  }) async {
    Map<String, String> header = {'Content-Type': 'application/json'};

    return await apiClient.putData(
        AppConstants.verifyUri,
        {
          'email': email,
          'verifyCode': otp,
        },
        headers: header);
  }

  Future<Response> resendOTP({required String email}) async {
    Map<String, String> header = {'Content-Type': 'application/json'};

    return await apiClient.putData(AppConstants.resendCodeUri, {'email': email},
        headers: header);
  }

  Future<Response> login(
      {required String username, required String password}) async {
    Map<String, String> header = {'Content-Type': 'application/json'};

    return await apiClient.postDataLogin(AppConstants.loginUri,
        {'username': username, 'password': password}, header);
  }

  Future<Response> forgotPassword({required String email}) async {
    Map<String, String> header = {'Content-Type': 'application/json'};

    return await apiClient.postData(
        AppConstants.forgotPasswordUri, {'username': email}, header);
  }

  /*Future<Response> logOut() async {
    return await apiClient.deleteData(AppConstants.);
  }*/

  Future<bool> saveUserToken(String token) async {
    apiClient.token = "Bearer $token";
    /*apiClient.updateHeader("Bearer $token", null,
        sharedPreferences.getString(AppConstants.LANGUAGE_CODE) ?? "vi", 0);*/
    return await sharedPreferences.setString(
        AppConstants.token, "Bearer $token");
  }

  Future<bool> clearUserToken() async {
    return await sharedPreferences.remove(AppConstants.token);
  }

  String getUserToken() {
    return sharedPreferences.getString(AppConstants.token) ?? "";
  }

  bool isLoggedIn() {
    return sharedPreferences.containsKey(AppConstants.token);
  }

  /*String getUserCountryCode() {
    return sharedPreferences.getString(AppConstants.USER_COUNTRY_CODE) ?? "";
  }*/

  bool isNotificationActive() {
    return sharedPreferences.getBool(AppConstants.notification) ?? true;
  }
}
