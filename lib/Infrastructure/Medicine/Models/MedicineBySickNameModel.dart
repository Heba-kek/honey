import 'package:honey/Domain/Medicine/Entities/MedicinesBySickNameEntity.dart';

class MedicineBySickNameModel extends MedicinesBySickNameEntity {
  MedicineBySickNameModel({code, data}) : super(code, data);

  factory MedicineBySickNameModel.fromJson(Map<String, dynamic> json) =>
      MedicineBySickNameModel(
        code: json["code"] == null ? null : json["code"],
        data: json["data"] == null
            ? null
            : List<MedicinesBySickNameData>.from(
                json["data"].map((x) => MedicinesBySickNameData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
      };
}
