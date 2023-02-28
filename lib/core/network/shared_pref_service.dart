import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static setString(key,String value) async {
    return await _prefs.setString(key, value);
  }

  static getString(key) async {
    return _prefs.getString(key);
  }

  static setInt(key,int value) async {
    return await _prefs.setInt(key, value);
  }

  static getInt(key) async {
    return _prefs.getString(key);
  }

  static setBool(key,bool value) async {
    return await _prefs.setBool(key, value);
  }

  static getBool(key) async {
    return _prefs.getBool(key);
  }

  static removeInstance(key) async {
    return _prefs.remove(key);
  }
}

