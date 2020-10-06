import 'package:flutter/cupertino.dart';
import 'package:honey/domain/Auth/Entities/ExpenAntity.dart';

class ExpenModel extends ExpenEntity {
  ExpenModel({code, data}) : super(code, data);

  factory ExpenModel.fromJson(Map<String, dynamic> json) => ExpenModel(
        code: json["code"] == null ? null : json["code"],
        data: json["data"] == null
            ? null
            : List<ExpenData>.from(
                json["data"].map((x) => ExpenData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
      };
}
