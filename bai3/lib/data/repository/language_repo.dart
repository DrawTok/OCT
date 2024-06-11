import 'package:bai3/utils/constants/constant.dart';
import 'package:flutter/material.dart';
import '../model/language_model.dart';

class LanguageRepo {
  List<LanguageModel> getAllLanguages({required BuildContext context}) {
    return AppConstants.languages;
  }
}
