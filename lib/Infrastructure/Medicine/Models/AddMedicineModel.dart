import 'package:honey/Domain/Medicine/Entities/AddMedicineEntity.dart';

class AddMedicineModel extends AddMedicineEntity {
  AddMedicineModel({code, appointement, isNeed, msg})
      : super(code, appointement, isNeed, msg);

  factory AddMedicineModel.fromJson(Map<String, dynamic> json) =>
      AddMedicineModel(
        code: json["code"] == null ? null : json["code"],
        appointement: json["appointement"] == null
            ? null
            : List<Appointement>.from(
                json["appointement"].map((x) => Appointement.fromJson(x))),
        isNeed: json["is_need"] == null ? null : json["is_need"],
        msg: json["msg"] == null ? null : json["msg"],
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "appointement": appointement == null
            ? null
            : List<dynamic>.from(appointement.map((x) => x.toJson())),
        "is_need": isNeed == null ? null : isNeed,
        "msg": msg == null ? null : msg,
      };
}
