import 'package:one_clicks_eats/const/app_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  SharedPreferences? sharedPreferences;
  Future<void> setToken(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(AppStrings.authToken, value);
  }

  Future<String?> getToken(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

 
}
