import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:one_clicks_eats/const/server_config.dart';
import 'package:one_clicks_eats/models/otp_model.dart';

class OTPHelper {
  Future<OtpModel?> otpVerification(userID,verificationCode) async {
    String url = Config.serverURl + Config.confirmCodeURL;
    Map body= {
      "user_id" :userID,
      "verification_code" : verificationCode
    };
    http.Response response =await http.post(Uri.parse(url),body: );
    
  }
}
