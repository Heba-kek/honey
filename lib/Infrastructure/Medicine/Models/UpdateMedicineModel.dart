import 'package:honey/Domain/Medicine/Entities/AddMedicineEntity.dart';
import 'package:honey/Domain/Medicine/Entities/UpdateMedicineEntity.dart';

class UpdateMedicineModel extends UpdateMedicineEntity {
  UpdateMedicineModel({code, oldTime, newTime, isNeed, msg})
      : super(code, oldTime, newTime, isNeed, msg);

  factory UpdateMedicineModel.fromJson(Map<String, dynamic> json) =>
      UpdateMedicineModel(
        code: json["code"] == null ? null : json["code"],
        oldTime: json["old_time"] == null
            ? null
            : List<Appointement>.from(
                json["old_time"].map((x) => Appointement.fromJson(x))),
        newTime: json["new_time"] == null
            ? null
            : List<Appointement>.from(
                json["new_time"].map((x) => Appointement.fromJson(x))),
        isNeed: json["is_need"] == null ? null : json["is_need"],
        msg: json["msg"] == null ? null : json["msg"],
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "old_time": oldTime == null
            ? null
            : List<dynamic>.from(oldTime.map((x) => x.toJson())),
        "new_time": newTime == null
            ? null
            : List<dynamic>.from(newTime.map((x) => x.toJson())),
        "is_need": isNeed == null ? null : isNeed,
        "msg": msg == null ? null : msg,
      };
}
