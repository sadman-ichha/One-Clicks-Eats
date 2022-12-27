
import 'package:one_clicks_eats/const/app_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  SharedPreferences? sharedPreferencesInstance;
  Future<void> setToken(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(AppStrings.authToken, value);
  }

  Future getToken() async {
    await sharedPreferencesInstance!.get(AppStrings.authToken);
  }

  Future<void> setName(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(AppStrings.name, value);
  }

  Future getName() async {
    await sharedPreferencesInstance!.get(AppStrings.name);
  }

  Future<void> setEmailorPhone(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(AppStrings.emailOr_Phone, value);
  }

  Future getEmailorPhone() async {
    await sharedPreferencesInstance!.get(AppStrings.emailOr_Phone);
  }

  Future<void> setPassword(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(AppStrings.passWord, value);
  }

  Future getPassword() async {
    await sharedPreferencesInstance!.get(AppStrings.passWord);
  }

  Future<void> setRememberMe(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(AppStrings.rememberMe, value);
  }

  Future getRememberMe() async {
    await sharedPreferencesInstance!.get(AppStrings.rememberMe);
  }
}
