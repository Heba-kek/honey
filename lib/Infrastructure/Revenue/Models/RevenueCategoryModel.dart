import 'package:honey/Domain/Revenue/Entities/RevenueCategoryEntity.dart';

class RevenueCategoryModel extends RevenueCategoryEntity {
  RevenueCategoryModel({code, data}) : super(code, data);

  factory RevenueCategoryModel.fromJson(Map<String, dynamic> json) =>
      RevenueCategoryModel(
        code: json["code"] == null ? null : json["code"],
        data: json["data"] == null
            ? null
            : List<RevenueCategoryData>.from(
                json["data"].map((x) => RevenueCategoryData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
      };
}
