import 'package:shared_preferences/shared_preferences.dart';

import 'types.dart';

class LocalStorage {
  LocalStorage._();

  static final instance = LocalStorage._();

  late SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String? get(String key) {
    return _prefs.getString(key);
  }

  FVoid set(String key, String value) async {
    await _prefs.setString(key, value);
  }

  FVoid remove(String key) async {
    await _prefs.remove(key);
  }

  bool containsKey(String key) {
    return _prefs.containsKey(key);
  }
}
