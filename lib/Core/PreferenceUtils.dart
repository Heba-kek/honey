import 'dart:convert';

import 'package:honey/Domain/Auth/Entities/SigninEntity.dart';
import 'package:honey/Infrastructure/Auth/Models/SigninModel.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

final formatter = new NumberFormat("#,###");

class PreferenceUtils {
  final String langKey = "lang";
  final String tokenKey = "token";
  final String userKey = "user";

  static Future<SharedPreferences> get _instance async =>
      _prefsInstance ??= await SharedPreferences.getInstance();
  static SharedPreferences _prefsInstance;

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences> init() async {
    _prefsInstance = await _instance;
    return _prefsInstance;
  }

  static String getString(String key, [String defValue]) {
    if (_prefsInstance == null) {
      init();
    }
    return _prefsInstance.getString(key) ?? defValue ?? "";
  }

  static Future<bool> setString(String key, String value) async {
    var prefs = await _instance;
    return prefs?.setString(key, value) ?? Future.value(false);
  }

  String get lang => getString(langKey);

  setLang(String language) {
    setString(langKey, language);
  }

  String get token => getString(tokenKey);

  setToken(String value) {
    setString(tokenKey, value);
  }

  SigninEntity get user => SigninModel.fromJson(jsonDecode(getString(userKey)));

  setuser(SigninEntity value) {
    SigninModel model = value;
    setString(userKey, jsonEncode(model.toJson()));
  }
}
