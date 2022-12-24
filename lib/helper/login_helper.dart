import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:one_clicks_eats/const/server_config.dart';
import 'package:one_clicks_eats/models/login_model.dart';
import 'package:http/http.dart' as http;
import 'package:one_clicks_eats/models/sign_up_model.dart';
import 'package:one_clicks_eats/ui/views/home_page.dart';

class LogInHelper {
  Future<LoginModel?> login(dynamic emailORPhone, String password) async {
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
      jsonData = jsonDecode(response.body);
      if (jsonData!.result == false) {
        Fluttertoast.showToast(msg: jsonData.message.toString());
      } else {
        Fluttertoast.showToast(msg: jsonData.message.toString());
        Get.to(() => HomePage());
      }
    }
  }
}
