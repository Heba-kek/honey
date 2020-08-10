import 'package:honey/Domain/Medicine/Entities/SickNameEntity.dart';

class SickNameModel extends SickNameEntity {
  SickNameModel({code, sickName}) : super(code, sickName);

  factory SickNameModel.fromJson(Map<String, dynamic> json) => SickNameModel(
        code: json["code"] == null ? null : json["code"],
        sickName: json["sick_name"] == null
            ? null
            : List<SickName>.from(
                json["sick_name"].map((x) => SickName.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "sick_name": sickName == null
            ? null
            : List<dynamic>.from(sickName.map((x) => x.toJson())),
      };
}
