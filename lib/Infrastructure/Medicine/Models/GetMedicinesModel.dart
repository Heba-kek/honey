import 'package:honey/Domain/Medicine/Entities/GetMedicinesEntity.dart';
import 'package:honey/Domain/Medicine/Entities/SickNameEntity.dart';

class GetMedicinesModel extends GetMidicinesEntity {
  GetMedicinesModel({code, medicine, sickName})
      : super(code, medicine, sickName);

  factory GetMedicinesModel.fromJson(Map<String, dynamic> json) =>
      GetMedicinesModel(
        code: json["code"] == null ? null : json["code"],
        medicine: json["medicine"] == null
            ? null
            : List<Medicine>.from(
                json["medicine"].map((x) => Medicine.fromJson(x))),
        sickName: json["sick_name"] == null
            ? null
            : List<SickName>.from(
                json["sick_name"].map((x) => SickName.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "medicine": medicine == null
            ? null
            : List<dynamic>.from(medicine.map((x) => x.toJson())),
        "sick_name": sickName == null
            ? null
            : List<dynamic>.from(sickName.map((x) => x.toJson())),
      };
}
