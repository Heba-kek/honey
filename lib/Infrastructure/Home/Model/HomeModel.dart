import 'package:honey/Domain/Home/Entity/HomeEentity.dart';

class HomeModel extends HomeEntity {
  HomeModel({code, data}) : super(code, data);

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        code: json["code"] == null ? null : json["code"],
        data: json["data"] == null ? null : HomeData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "data": data == null ? null : data.toJson(),
      };
}
