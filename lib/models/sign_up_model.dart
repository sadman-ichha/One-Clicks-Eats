// To parse this JSON data, do
//
//     final signUpModel = signUpModelFromJson(jsonString);

import 'dart:convert';

SignUpModel signUpModelFromJson(String str) =>
    SignUpModel.fromJson(json.decode(str));

String signUpModelToJson(SignUpModel data) => json.encode(data.toJson());

class SignUpModel {
  bool? result;
  String? message;
  int? userId;

  SignUpModel({
    this.result,
    this.message,
    this.userId,
  });

  factory SignUpModel.fromJson(Map<String, dynamic> json) => SignUpModel(
        result: json["result"],
        message: json["message"],
        userId: json["user_id"],
      );

  Map<String, dynamic> toJson() => {
        "result": result,
        "message": message,
        "user_id": userId,
      };
}
