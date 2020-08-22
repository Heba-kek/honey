import 'package:flutter/cupertino.dart';
import 'package:honey/domain/Auth/Entities/subExpenEntity.dart';

class ExpenSubModel extends ExpenEntitySub {
  ExpenSubModel(
      {@required String code,
        @required exeModelSub data})
      : super(code: code, data: data);

  factory ExpenSubModel.fromJson(Map<String, dynamic> json) {
    return ExpenSubModel(
        code: json['code'] != null ? json['code'] : "",
        data:
        json['data'] != null ? new exeModelSub.fromJson(json['data']) : null);
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
