import 'package:honey/Domain/Revenue/Entities/RevenueEntity.dart';

class RevenueModel extends RevenueEntity {
  RevenueModel({code, data}) : super(code, data);

  factory RevenueModel.fromJson(Map<String, dynamic> json) => RevenueModel(
        code: json["code"] == null ? null : json["code"],
        data: json["data"] == null
            ? null
            : List<Map<String, String>>.from(json["data"].map((x) => Map.from(x)
                .map((k, v) =>
                    MapEntry<String, String>(k, v == null ? null : v)))),
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => Map.from(x).map(
                (k, v) => MapEntry<String, dynamic>(k, v == null ? null : v)))),
      };
}
