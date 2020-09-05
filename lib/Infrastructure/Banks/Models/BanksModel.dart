import 'package:honey/Domain/Banks/Entity/BanksEntity.dart';

class BanksModel extends BanksEntity {
  BanksModel(
      {String code, List<BanksData> data, List<Total> total, int totalCount})
      : super(code, data, total, totalCount);

  factory BanksModel.fromJson(Map<String, dynamic> json) => BanksModel(
        code: json["code"],
        data: List<BanksData>.from(
            json["data"].map((x) => BanksData.fromJson(x))),
        total: List<Total>.from(json["total"].map((x) => Total.fromJson(x))),
        totalCount: json["total_count"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "total": List<dynamic>.from(total.map((x) => x.toJson())),
        "total_count": totalCount,
      };
}
