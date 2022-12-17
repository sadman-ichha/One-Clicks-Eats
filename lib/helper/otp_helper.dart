import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:one_clicks_eats/const/server_config.dart';


class OTPHelper {
  Future otpVerification(userID, verificationCode) async {
    try {
      String url = Config.serverURl + Config.confirmCodeURL;
      var headers = {"Accept": "application/json"};

      Map body = {
        "user_id": userID,
        "verification_code": verificationCode,
      };
      http.Response response =
          await http.post(Uri.parse(url), headers: headers, body: body);
      if (response.statusCode == 200) {
        var otpModel = jsonDecode(response.body);
        Fluttertoast.showToast(msg: otpModel["message"]);
        print("Success __${response.body}");
      } else {
        print("Error");
      }
    } catch (e) {
      print("ERROR IS ____ $e");
      Fluttertoast.showToast(msg: "$e");
    }
  }
}
