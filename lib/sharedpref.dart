import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static late SharedPreferences _prefs;

  SharedPref() {
    loadPrefrence();
  }

  loadPrefrence() async {
    _prefs = await SharedPreferences.getInstance();
  }

  read(String key) async {
    _prefs = await SharedPreferences.getInstance();
    List<String>? ans = _prefs.getStringList(key);
    return ans;
  }

  save(String key, List<String> value) async {
    _prefs = await SharedPreferences.getInstance();
    await _prefs.setStringList(key, value);
  }

  remove(String key) async {
    _prefs = await SharedPreferences.getInstance();
    _prefs.remove(key);
  }
}
