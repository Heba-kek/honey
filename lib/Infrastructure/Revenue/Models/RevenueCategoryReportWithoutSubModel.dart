import 'package:honey/Domain/Revenue/Entities/CategoryReportWithoutSub.dart';

class RevenueCategoryReportWithoutSubModel
    extends RevenueReportWithoutSubEntity {
  RevenueCategoryReportWithoutSubModel(
      {String code,
      List<RevenueCategoryReportWithoutSubData> data,
      List<Currency> currency,
      List<Total> total})
      : super(code, data, currency, total);

  factory RevenueCategoryReportWithoutSubModel.fromJson(
          Map<String, dynamic> json) =>
      RevenueCategoryReportWithoutSubModel(
        code: json["code"],
        data: List<RevenueCategoryReportWithoutSubData>.from(json["data"]
            .map((x) => RevenueCategoryReportWithoutSubData.fromJson(x))),
        currency: List<Currency>.from(
            json["currency"].map((x) => Currency.fromJson(x))),
        total: List<Total>.from(json["total"].map((x) => Total.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "currency": List<dynamic>.from(currency.map((x) => x.toJson())),
        "total": List<dynamic>.from(total.map((x) => x.toJson())),
      };
}
