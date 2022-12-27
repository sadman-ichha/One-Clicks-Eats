
import 'package:one_clicks_eats/const/app_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  SharedPreferences? sharedPreferences;
  Future<void> setToken(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(AppStrings.authToken, value);
  }

  Future getToken() async {
    await sharedPreferences!.get(AppStrings.authToken);
  }

  Future<void> setName(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(AppStrings.name, value);
  }

  Future getName() async {
    await sharedPreferences!.get(AppStrings.name);
  }

  Future<void> setEmailorPhone(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(AppStrings.emailOr_Phone, value);
  }

  Future getEmailorPhone() async {
    await sharedPreferences!.get(AppStrings.emailOr_Phone);
  }

  Future<void> setPassword(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(AppStrings.passWord, value);
  }

  Future getPassword() async {
    await sharedPreferences!.get(AppStrings.passWord);
  }

  Future<void> setRememberMe(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(AppStrings.rememberMe, value);
  }

  Future getRememberMe() async {
    await sharedPreferences!.get(AppStrings.rememberMe);
  }
}
