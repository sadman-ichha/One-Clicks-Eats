import 'package:get/get.dart';
import 'package:one_clicks_eats/const/server_config.dart';
import 'package:one_clicks_eats/models/login_model.dart';
import 'package:http/http.dart' as http;

class LogInHelper {
  Future<LoginModel?> login(dynamic emailORPhone, String password) async {
    String url = Config.serverURl + Config.loginURL;
    var headers = {"Accept": "application/json"};
    Map body = {
      "email": emailORPhone,
      "password": password,
    };
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
  }
}
