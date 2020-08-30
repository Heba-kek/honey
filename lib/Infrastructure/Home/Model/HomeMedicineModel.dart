import 'package:honey/Domain/Home/Entity/MedicineEntity.dart';

class HomeMedicineModel extends HomeMedicineEntity {
  HomeMedicineModel({code, medicine}) : super(code, medicine);

  factory HomeMedicineModel.fromJson(Map<String, dynamic> json) =>
      HomeMedicineModel(
        code: json["code"] == null ? null : json["code"],
        medicine: json["medicine"] == null
            ? null
            : List<HomeMedicine>.from(
                json["medicine"].map((x) => HomeMedicine.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "medicine": medicine == null
            ? null
            : List<dynamic>.from(medicine.map((x) => x.toJson())),
      };
}
