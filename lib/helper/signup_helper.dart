import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:one_clicks_eats/const/server_config.dart';
import 'package:one_clicks_eats/models/sign_up_model.dart';
import 'package:http/http.dart' as http;

class SignUpHelper {
  Future<SignUpModel?> signupRegister(String name, dynamic emailOrPhone,
      String passWord, String confirmPassWord, registerBy) async {
    String url = Config.serverURl + Config.signupURl;
    var headers = {"Accept": "application/json"};
    SignUpModel? signUpModels;
    var body = {
      "name": name,
      "email_or_phone": emailOrPhone,
      "password": passWord,
      "password_confirmation": confirmPassWord,
      "register_by": registerBy,
    };
    var response =
        await http.post(Uri.parse(url), headers: headers, body: body);
    var json = response.body;
    signUpModels = signUpModelFromJson(json);
    if (response.statusCode == 201) {
      if (signUpModels.result == false) {
        Fluttertoast.showToast(msg: "${signUpModels.message.toString()}");
      } else {
        Fluttertoast.showToast(
            msg: "${signUpModels.message.toString()}",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } else {
      print(body);
    }
    return signUpModels;
  }
}
