import 'package:honey/Domain/Medicine/Entities/Medicine/MedicineEntity.dart';

class MedicineModel extends MedicineEntity {
  MedicineModel({code, data, msg}) : super(code, data, msg);

  factory MedicineModel.fromJson(Map<String, dynamic> json) => MedicineModel(
        code: json["code"] == null ? null : json["code"],
        data: json["data"] == null ? null : MedicineData.fromJson(json["data"]),
        msg: json["msg"] == null ? null : json["msg"],
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "data": data == null ? null : data.toJson(),
        "msg": msg == null ? null : msg
      };
}
