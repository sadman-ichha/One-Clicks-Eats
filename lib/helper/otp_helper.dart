import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:one_clicks_eats/const/server_config.dart';
import 'package:one_clicks_eats/models/otp_model.dart';
import 'package:one_clicks_eats/ui/routes/route.dart';


class OTPHelper {
  Future<OtpModel?> otpVerification(userID, verificationCode) async {
    try {
      String url = Config.serverURl + Config.confirmCodeURL;
      var headers = {"Accept": "application/json"};
     OtpModel? otpModels;
      Map body = {
        "user_id": userID,
        "verification_code": verificationCode,
      };
      http.Response response =
          await http.post(Uri.parse(url), headers: headers, body: body);

      otpModels = otpModelFromJson(response.body);
      if (response.statusCode == 200) {
        Fluttertoast.showToast(msg: otpModels.message.toString());
        print("Success __${response.body}");
        Get.toNamed(login);
      } else {
        print("Error");
      }
      return otpModels;
    } catch (e) {
      print("ERROR IS ____ $e");
      Fluttertoast.showToast(msg: "$e");
    }
  }
}
