import 'package:flutter/cupertino.dart';
import 'package:honey/Domain/Auth/Entities/SigninEntity.dart';

class SigninModel extends SigninEntity {
  SigninModel(
      {@required String code,
      @required SigninData data,
      @required String token,
      @required String msg})
      : super(code: code, data: data, token: token, msg: msg);

  factory SigninModel.fromJson(Map<String, dynamic> json) {
    return SigninModel(
        code: json['code'],
        data:
            json['data'] != null ? new SigninData.fromJson(json['data']) : null,
        token: json['token'],
        msg: json['msg'] != null ? json['msg'] : "Success");
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
