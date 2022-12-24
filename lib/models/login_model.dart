// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  bool? result;
  String? message;
  String? accessToken;
  String? tokenType;
  dynamic expiresAt;
  User? user;


  LoginModel({
    this.result,
    this.message,
    this.accessToken,
    this.tokenType,
    this.expiresAt,
    this.user,
  });



  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        result: json["result"],
        message: json["message"],
        accessToken: json["access_token"],
        tokenType: json["token_type"],
        expiresAt: json["expires_at"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "result": result,
        "message": message,
        "access_token": accessToken,
        "token_type": tokenType,
        "expires_at": expiresAt,
        "user": user!.toJson(),
      };
}

class User {
 

  int? id;
  String? type;
  String? name;
  String? email;
  dynamic avatar;
  String? avatarOriginal;
  dynamic phone;


   User({
    this.id,
    this.type,
    this.name,
    this.email,
    this.avatar,
    this.avatarOriginal,
    this.phone,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        type: json["type"],
        name: json["name"],
        email: json["email"],
        avatar: json["avatar"],
        avatarOriginal: json["avatar_original"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "name": name,
        "email": email,
        "avatar": avatar,
        "avatar_original": avatarOriginal,
        "phone": phone,
      };
}
