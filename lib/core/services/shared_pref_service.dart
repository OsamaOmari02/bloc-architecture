import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  SharedPrefService._();
  static late SharedPreferences _prefs;

  static Future<void> init() async =>
      _prefs = await SharedPreferences.getInstance();

  static Future<bool> setString(String key, String value) async =>
      await _prefs.setString(key, value);

  static String? getString(String key) => _prefs.getString(key);

  static Future<bool> setInt(String key, int value) async =>
      await _prefs.setInt(key, value);

  static int? getInt(String key) => _prefs.getInt(key);

  static Future<bool> setBool(String key, bool value) async =>
      await _prefs.setBool(key, value);

  static bool? getBool(String key) => _prefs.getBool(key);

  static Future<bool> removeInstance(String key) async =>
      await _prefs.remove(key);

  static Future<bool> clear() async => await _prefs.clear();
}
