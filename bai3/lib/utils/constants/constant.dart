
import 'package:bai3/data/model/language_model.dart';

class AppConstants{
  static const String appName = 'UpTodo';
  static const String appVersion = "1.0.0";

  static const String baseUrl = 'https://renthouse.tmquang.com';
  static const String loginUri = '/users/login';
  static const String registerUri = '/users/signup';
  static const String infoUri = '/users/getInfoByToken';
  static const String allUsersUri = '/users/getAllUsers';
  static const String verifyUri = '/users/verifyAccount';
  static const String forgotPasswordUri = '/users/forgotPassword';
  static const String resetPasswordUri = '/users/resetPassword';
  static const String updatePasswordUri = '/users/updatePassword';
  static const String updateProfileUri = '/users/updateProfile';
  static const String resendCodeUri = '/users/resendCode';

  //Shared key
  static const String token = 'token';
  static const String theme = 'theme';
  static const String languageCode = 'language_code';
  static const String countryCode = 'country_code';
  static const String localizationKey = 'X-localization';
  static const String notification = 'notification';

  static List<LanguageModel> languages = [
    LanguageModel(
        imageUrl: "Images.vietnam",
        languageName: 'Việt Nam',
        countryCode: 'VN',
        languageCode: 'vi'),
    LanguageModel(
        imageUrl: "Images.english",
        languageName: 'English',
        countryCode: 'US',
        languageCode: 'en'),
  ];

  static const errorMessages = {
    'invalid-email': 'email_invalid',
    'auth/invalid-email': 'email_invalid',
    'user-disabled': 'account_disabled',
    'user-not-found': 'not_exist_account',
    'auth/user-not-found': 'not_exist_account',
    'wrong-password': 'password_incorrect',
    'email-already-in-use': 'exist_account',
    'operation-not-allowed': 'not_active_account',
    'weak-password': 'not_strong_enough',
    'expired-action-code': 'expired_code',
    'invalid-action-code': 'invalid_code',
  };
}
