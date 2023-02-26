import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {

  static setString(key,String value) async {
    SharedPreferences pref;
    pref = await SharedPreferences.getInstance();
    return await pref.setString(key, value);
  }

  static getString(key) async {
    SharedPreferences pref;
    pref = await SharedPreferences.getInstance();
    return pref.getString(key);
  }

  static setInt(key,int value) async {
    SharedPreferences pref;
    pref = await SharedPreferences.getInstance();
    return await pref.setInt(key, value);
  }

  static getInt(key) async {
    SharedPreferences pref;
    pref = await SharedPreferences.getInstance();
    return pref.getString(key);
  }

  static setBool(key,bool value) async {
    SharedPreferences pref;
    pref = await SharedPreferences.getInstance();
    return await pref.setBool(key, value);
  }

  static getBool(key) async {
    SharedPreferences pref;
    pref = await SharedPreferences.getInstance();
    return pref.getBool(key);
  }

  static removeInstance(key) async {
    SharedPreferences pref;
    pref = await SharedPreferences.getInstance();
    return pref.remove(key);
  }
}

