import 'package:honey/Domain/Revenue/Entities/RevenueCategoryReportEntity.dart';

class RevenueCategoryReportModel extends RevenueCategoryReportEntity {
  RevenueCategoryReportModel({code, data, total, currency})
      : super(code, data, total, currency);

  factory RevenueCategoryReportModel.fromJson(Map<String, dynamic> json) =>
      RevenueCategoryReportModel(
        code: json["code"] == null ? null : json["code"],
        data: json["data"] == null
            ? null
            : List<RevenueCategoryReportData>.from(
                json["data"].map((x) => RevenueCategoryReportData.fromJson(x))),
        total: json["total"] == null
            ? null
            : List<Total>.from(json["total"].map((x) => Total.fromJson(x))),
        currency: json["currency"] == null
            ? null
            : List<Currency>.from(
                json["currency"].map((x) => Currency.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
        "total": total == null
            ? null
            : List<dynamic>.from(total.map((x) => x.toJson())),
        "currency": currency == null
            ? null
            : List<dynamic>.from(currency.map((x) => x.toJson())),
      };
}
