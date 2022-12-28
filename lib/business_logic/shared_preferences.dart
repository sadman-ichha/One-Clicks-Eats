import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  SharedPreferences? sharedPreferences;
  Future<void> setPreferences(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  Future<String?> getPreferences(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  // Future<void> setRememberMe(bool value) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setBool(AppStrings.rememberMe, value);
  // }

  // Future getRememberMe() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   return prefs.get(AppStrings.rememberMe)?? "";
  // }
}
