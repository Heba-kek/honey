import 'package:honey/Domain/Wallets/Entities/WalletDetailsEntity.dart';

class WalletDetailsModel extends WalletDetailsEntity {
  WalletDetailsModel({String code, String msg, WalletDetailsData data})
      : super(code, msg, data);

  factory WalletDetailsModel.fromJson(Map<String, dynamic> json) =>
      WalletDetailsModel(
        code: json["code"] == null ? null : json["code"],
        msg: json["msg"] == null ? null : json["msg"],
        data: json["data"] == null
            ? null
            : WalletDetailsData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "msg": msg == null ? null : msg,
        "data": data == null ? null : data.toJson(),
      };
}
