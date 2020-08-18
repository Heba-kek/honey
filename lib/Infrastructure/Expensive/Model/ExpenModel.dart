import 'package:flutter/cupertino.dart';
import 'package:honey/domain/Auth/Entities/ExpenAntity.dart';

class ExpenModel extends ExpenEntity {
  ExpenModel({code, @required exeModel data}) : super(code: code, data: data);

  factory ExpenModel.fromJson(Map<String, dynamic> json) {
    return ExpenModel(
        code: json['code'] != null ? json['code'] : "",
        data:
            json['data'] != null ? new exeModel.fromJson(json['data']) : null);
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
