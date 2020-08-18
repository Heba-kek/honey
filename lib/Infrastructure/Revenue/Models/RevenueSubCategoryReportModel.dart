import 'package:honey/Domain/Revenue/Entities/RevenueSubCategoryReportEntity.dart';

class RevenueSubCategoryReportModel extends RevenueSubCategoryReportEntity {
  RevenueSubCategoryReportModel({code, data, currency, total})
      : super(code, data, currency, total);

  factory RevenueSubCategoryReportModel.fromJson(Map<String, dynamic> json) =>
      RevenueSubCategoryReportModel(
        code: json["code"] == null ? null : json["code"],
        data: json["data"] == null
            ? null
            : List<RevenueSubCategoryReportData>.from(json["data"]
                .map((x) => RevenueSubCategoryReportData.fromJson(x))),
        currency: json["currency"] == null
            ? null
            : List<Currency>.from(
                json["currency"].map((x) => Currency.fromJson(x))),
        total: json["total"] == null
            ? null
            : List<Total>.from(json["total"].map((x) => Total.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
        "currency": currency == null
            ? null
            : List<dynamic>.from(currency.map((x) => x.toJson())),
        "total": total == null
            ? null
            : List<dynamic>.from(total.map((x) => x.toJson())),
      };
}
