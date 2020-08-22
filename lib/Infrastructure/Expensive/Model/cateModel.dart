import 'package:flutter/cupertino.dart';
import 'package:honey/domain/Auth/Entities/iconEntity.dart';

class IconsModel extends IconEntity {
  IconsModel(
      {@required String code,
        @required IconModel data})
      : super(code: code, data: data);

  factory IconsModel.fromJson(Map<String, dynamic> json) {
    return IconsModel(
        code: json['code'] != null ? json['code'] : "",
        data:
        json['data'] != null ? new IconModel.fromJson(json['data']) : null);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data;
    }
    return data;
  }
}
