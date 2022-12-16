import 'package:fluttertoast/fluttertoast.dart';
import 'package:one_clicks_eats/const/server_config.dart';
import 'package:one_clicks_eats/models/sign_up_model.dart';
import 'package:http/http.dart' as http;

class SignUpHelper {
  Future<SignUpModel?> signupRegister(String name, dynamic emailOrPhone,
      String passWord, String confirmPassWord, registerBy) async {
    try {
      String url = Config.serverURl + Config.signupURl;
      var headers = {"Accept": "application/json"};
      SignUpModel? signUpModels;

      Map body = {
        "name": name,
        "email_or_phone": emailOrPhone,
        "password": passWord,
        "password_confirmation": confirmPassWord,
        "register_by": registerBy,
      };
      http.Response response =
          await http.post(Uri.parse(url), headers: headers, body: body);

      signUpModels = signUpModelFromJson(response.body);
      if (response.statusCode == 201) {
        if (signUpModels.result == false) {
          Fluttertoast.showToast(
            msg: "${signUpModels.message.toString()}",
          );
        } else {
          Fluttertoast.showToast(
            msg: "${signUpModels.message.toString()}",
          );
        }
      } else {
        throw Fluttertoast.showToast(
          msg: signUpModels.message.toString(),
        );
      }
      return signUpModels;
    } catch (e) {
      throw Fluttertoast.showToast(msg: "$e");
    }
  }
}
