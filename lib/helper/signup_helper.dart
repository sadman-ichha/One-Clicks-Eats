import 'package:one_clicks_eats/const/server_config.dart';
import 'package:one_clicks_eats/models/sign_up_model.dart';
import 'package:http/http.dart' as http;

class SignUpHelper {
  Future<SignUpModel?> signupRegister(String name, dynamic emailOrPhone,
      String passWord, String confirmPassWord, registerBy) async {
    String url = Config.serverURl + Config.signupURl;
    var body = {
      "name": name,
      "email_or_phone": emailOrPhone,
      "password": passWord,
      "password_confirmation": confirmPassWord,
      "register_by": registerBy,
    };

    var response = await http.post(Uri.parse(url), body: body);
    if (response.statusCode == 201) {
      var json = response.body;
      var signUpModel = signUpModelFromJson(json);
      if (signUpModel.result== false){
        
      }
    }
  }
}
