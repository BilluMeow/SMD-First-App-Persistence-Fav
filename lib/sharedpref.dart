import 'package:english_words/english_words.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import 'favorties.dart';

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
    var ans = _prefs.getString(key);
    if (ans != null) {
      return json.decode(ans);
    } else {
      return Favorites();
    }
  }

  save(String key, Favorites value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, json.encode(value.toJson()));
  }

  remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }
}
