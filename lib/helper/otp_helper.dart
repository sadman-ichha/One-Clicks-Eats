import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:one_clicks_eats/const/server_config.dart';
import 'package:one_clicks_eats/models/otp_model.dart';

class OTPHelper {
  Future<OtpModel?> otpVerification(userID, verificationCode) async {
    String url = Config.serverURl + Config.confirmCodeURL;
    var headers = {"Accept": "application/json"};
    OtpModel? otpModel;
    Map body = {
      "user_id": userID,
      "verification_code": verificationCode,
    };
    http.Response response =
        await http.post(Uri.parse(url), headers: headers, body: body);
    if (response.statusCode == 200) {
      otpModel = otpModelFromJson(response.body);
      Fluttertoast.showToast(msg: otpModel.message.toString());
      print("Success __${response.body}");
    } else {
      throw Fluttertoast.showToast(msg: otpModel!.message.toString());
    }
    return null;
  }
}
