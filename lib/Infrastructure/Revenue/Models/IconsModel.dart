import 'package:honey/Domain/Revenue/Entities/IconsEntity.dart';

class IconsModel extends IconsEntity {
  IconsModel({code, data}) : super(code, data);

  factory IconsModel.fromJson(Map<String, dynamic> json) => IconsModel(
        code: json["code"] == null ? null : json["code"],
        data: json["data"] == null
            ? null
            : List<IconsData>.from(
                json["data"].map((x) => IconsData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
      };
}
