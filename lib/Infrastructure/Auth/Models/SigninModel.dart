import 'package:flutter/cupertino.dart';
import 'package:honey/Domain/Auth/Entities/SigninEntity.dart';

class SigninModel extends Signin {
  SigninModel(
      {@required String code,
      @required SigninData data,
      @required String token})
      : super(code: code, data: data, token: token);

  factory SigninModel.fromJson(Map<String, dynamic> json) {
    return SigninModel(
        code: json['code'],
        data:
            json['data'] != null ? new SigninData.fromJson(json['data']) : null,
        token: json['token']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}
