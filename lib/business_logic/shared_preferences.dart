import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  SharedPreferences? sharedPreferences;
  Future<void> setPreference(String key, String value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    sharedPreferences!.setString(key, value);
  }

  Future<String?> getPreference(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    return sharedPreferences!.getString(key);
  }
}
