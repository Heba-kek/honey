import 'package:honey/Domain/Wallets/Entities/WalletTypeEntity.dart';

class WalletTypeModel extends WalletTypeEntity {
  WalletTypeModel({String code, String msg, List<WalletTypeData> data})
      : super(code, msg, data);

  factory WalletTypeModel.fromJson(Map<String, dynamic> json) =>
      WalletTypeModel(
        code: json["code"] == null ? null : json["code"],
        msg: json["msg"] == null ? null : json["msg"],
        data: json["data"] == null
            ? null
            : List<WalletTypeData>.from(
                json["data"].map((x) => WalletTypeData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "msg": msg == null ? null : msg,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
      };
}
