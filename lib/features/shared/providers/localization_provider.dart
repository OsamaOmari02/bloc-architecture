import 'package:bloc_architecture/core/constants/cache_constants.dart';
import 'package:flutter/material.dart';

import '../../../core/services/shared_pref_service.dart';

class LocalizationProvider extends ChangeNotifier {
  String language = 'ar';

  Future<void> changeLanguage(String value) async {
    language = value;
    await SharedPrefService.setString(CacheConstants.language, language);
    notifyListeners();
  }

  void fetchLanguageFromCache() {
    language = SharedPrefService.getString(CacheConstants.language) ?? 'en';
    notifyListeners();
  }

  bool get isEnglish => language == 'en';
}
