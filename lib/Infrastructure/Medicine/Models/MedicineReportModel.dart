import 'package:honey/Domain/Medicine/Entities/MedicineReportEntity.dart';

class MedicineReportModel extends MedicineReportEntity {
  MedicineReportModel({code, data}) : super(code, data);

  factory MedicineReportModel.fromJson(Map<String, dynamic> json) =>
      MedicineReportModel(
        code: json["code"] == null ? null : json["code"],
        data: json["data"] == null
            ? null
            : List<MedicineReportData>.from(
                json["data"].map((x) => MedicineReportData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
      };
}
