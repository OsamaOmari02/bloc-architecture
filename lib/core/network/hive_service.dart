import 'package:hive_flutter/adapters.dart';

class HiveService {
  static const String _boxName = 'myBox';

  static Future<void> init() async {
    await Hive.initFlutter();
  }

  static Future<Box> openBox() async {
    final box = await Hive.openBox(_boxName);
    return box;
  }

  static Future<void> putData(String key, dynamic value) async {
    final box = await openBox();
    await box.put(key, value);
    await box.close();
  }

  static Future<dynamic> getData(String key) async {
    final box = await openBox();
    final value = box.get(key);
    await box.close();
    return value;
  }

  static Future<void> deleteData(String key) async {
    final box = await openBox();
    await box.delete(key);
    await box.close();
  }

  static Future<void> clearData() async {
    final box = await openBox();
    await box.clear();
    await box.close();
  }
}
