import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:one_clicks_eats/business_logic/shared_preferences.dart';
import 'package:one_clicks_eats/const/app_string.dart';
import 'package:one_clicks_eats/const/server_config.dart';
import 'package:one_clicks_eats/models/login_model.dart';
import 'package:http/http.dart' as http;
import 'package:one_clicks_eats/ui/views/home_page.dart';
import 'package:one_clicks_eats/ui/views/login_screen.dart';

class LogInHelper {
  Future<LoginModel?> login(dynamic emailORPhone, String password) async {
    try {
      String url = Config.serverURl + Config.loginURL;
      var headers = {"Accept": "application/json"};
      LoginModel? jsonData;

      Map body = {
        "email": emailORPhone,
        "password": password,
      };
      http.Response response =
          await http.post(Uri.parse(url), body: body, headers: headers);
      print("BODY__ $body");
      jsonData = loginModelFromJson(response.body);
      if (response.statusCode == 200) {
        if (jsonData.result == false) {
          Fluttertoast.showToast(msg: jsonData.message.toString());
        } else {
          Fluttertoast.showToast(msg: jsonData.message.toString());
          print("response__${response.body}");
          SharedPref().setPreference(
              AppStrings.authToken, jsonData.accessToken.toString());
          SharedPref().setPreference(
              AppStrings.emailOr_Phone, jsonData.user!.phone.toString());
          SharedPref().setPreference(AppStrings.passWord, password);
          SharedPref()
              .setPreference(AppStrings.rememberMe, isSelected.toString());

          Get.to(() => HomePage());
        }
        return jsonData;
      }
    } catch (e) {
      print("LOGIN ERROR__${e}");
      Fluttertoast.showToast(msg: "Error is: $e");
    }
  }
}
