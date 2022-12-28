import 'dart:developer';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:one_clicks_eats/business_logic/shared_preferences.dart';
import 'package:one_clicks_eats/const/app_string.dart';
import 'package:one_clicks_eats/const/server_config.dart';
import 'package:one_clicks_eats/models/login_model.dart';
import 'package:http/http.dart' as http;
import 'package:one_clicks_eats/ui/routes/route.dart';

import '../const/global_variable.dart';

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
          log("response__${response.body}"); //print
          if (isSelected.value) {
            SharedPref.setPreferences(
                AppStrings.emailOr_Phone, emailORPhone.toString());
            SharedPref.setPreferences(AppStrings.passWord, password);
          }

          Get.offAllNamed(home);
          // Get.to(NextPage());
        }
        return jsonData;
      }
    } catch (e) {
      print("LOGIN ERROR__${e}");
      Fluttertoast.showToast(msg: "Error is: $e");
    }
  }
}
