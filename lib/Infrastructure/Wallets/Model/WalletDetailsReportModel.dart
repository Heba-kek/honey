import 'package:honey/Domain/Wallets/Entities/WalletDetailsReportEntity.dart';

class WalletDetailsReportModel extends WalletDetailsReportEntity {
  WalletDetailsReportModel({String code, WalletDetailsReportData data})
      : super(code, data);

  factory WalletDetailsReportModel.fromJson(Map<String, dynamic> json) =>
      WalletDetailsReportModel(
        code: json["code"] == null ? null : json["code"],
        data: json["data"] == null
            ? null
            : WalletDetailsReportData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "data": data == null ? null : data.toJson(),
      };
}
