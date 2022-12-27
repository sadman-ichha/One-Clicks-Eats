import 'package:one_clicks_eats/business_logic/shared_preferences.dart';
import 'package:one_clicks_eats/const/app_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  Future<bool?> autoLogin() async {
    SharedPreferences sharedPreferencesInstance =
        await SharedPreferences.getInstance();

    if (sharedPreferencesInstance.containsKey(AppStrings.authToken)) {
      return false;
    }
  }
}
