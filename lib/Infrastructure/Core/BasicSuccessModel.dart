import 'package:honey/Domain/BasicSuccessEntity.dart';

class BasicSuccessModel extends BasicSuccessEntity {
  BasicSuccessModel({code, msg}) : super(code, msg);

  factory BasicSuccessModel.fromJson(Map<String, dynamic> json) =>
      BasicSuccessModel(
        code: json["code"] == null ? null : json["code"],
        msg: json["msg"] == null ? null : json["msg"],
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "msg": msg == null ? null : msg,
      };
}
