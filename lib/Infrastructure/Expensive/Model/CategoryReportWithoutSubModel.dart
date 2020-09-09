import 'package:honey/Domain/Auth/Entities/ExpensesCategoryReportWithouSubEntity.dart';

class ExpensesCategoryReportWithoutSub extends ExpensesReportWithoutSubEntity {
  ExpensesCategoryReportWithoutSub(
      {String code,
      List<ExpensesCategoryReportWithouSubData> data,
      List<Currency> currency,
      List<Total> total})
      : super(code, data, currency, total);

  factory ExpensesCategoryReportWithoutSub.fromJson(
          Map<String, dynamic> json) =>
      ExpensesCategoryReportWithoutSub(
        code: json["code"],
        data: List<ExpensesCategoryReportWithouSubData>.from(json["data"]
            .map((x) => ExpensesCategoryReportWithouSubData.fromJson(x))),
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
