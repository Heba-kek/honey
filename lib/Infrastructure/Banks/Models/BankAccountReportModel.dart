import 'package:honey/Domain/Banks/Entity/BankAccountReportEntity.dart';

class BankAccountReportModel extends BankAccountReportEntity {
  BankAccountReportModel(
      {String code, List<BankReportData> data, List<Information> information})
      : super(code, data, information);

  factory BankAccountReportModel.fromJson(Map<String, dynamic> json) =>
      BankAccountReportModel(
        code: json["code"],
        data: List<BankReportData>.from(
            json["data"].map((x) => BankReportData.fromJson(x))),
        information: List<Information>.from(
            json["information"].map((x) => Information.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "information": List<dynamic>.from(information.map((x) => x.toJson())),
      };
}
