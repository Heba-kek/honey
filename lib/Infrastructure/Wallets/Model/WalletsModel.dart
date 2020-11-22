import 'package:honey/Domain/Wallets/Entities/WalletsEntity.dart';

class WalletsModel extends WalletsEntity {
  WalletsModel({String code, String msg, List<WalletsData> data, String count})
      : super(code, msg, data, count);

  factory WalletsModel.fromJson(Map<String, dynamic> json) => WalletsModel(
        code: json["code"] == null ? null : json["code"],
        msg: json["msg"] == null ? null : json["msg"],
        data: json["data"] == null
            ? null
            : List<WalletsData>.from(
                json["data"].map((x) => WalletsData.fromJson(x))),
        count: json["count"] == null ? null : json["count"],
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "msg": msg == null ? null : msg,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
        "count": count == null ? null : count,
      };
}
