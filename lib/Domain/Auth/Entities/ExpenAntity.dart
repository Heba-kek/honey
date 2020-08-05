import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class ExpenEntity extends Equatable {
  //json body proprties without tojson and fromjson
  final String code;
  final exeModel data;


  ExpenEntity(
      {@required this.code,
        @required this.data,
});

  @override
  List<Object> get props => [this.code, this.data];
}

class exeModel {
  List<ExpenData> exList;

  exeModel({@required this.exList});

  factory exeModel.fromJson(List<dynamic> json) {
    return exeModel(
        exList: json.map((i) => ExpenData.fromJson(i)).toList());
  }
}
class ExpenData extends Equatable {

 // "sub_category": [




  final String category_Name;
  final String type_Category;
  final String category_id;
  final String icon;
  final String is_Chid;


  ExpenData(
      {@required this.icon,
        @required this.category_id,
        @required this.category_Name,
        @required this.is_Chid,
        @required this.type_Category,
       });

  @override
  List<Object> get props => [
    this.type_Category,
    this.is_Chid,
    this.category_Name,
    this.category_id,
    this.icon,

  ];

  factory ExpenData.fromJson(Map<String, dynamic> json) => ExpenData(
    category_id: json["category_id"] == null ? null : json["category_id"],
    category_Name: json["category_Name"] == null ? null : json["category_Name"],
    icon: json["icon"] == null ? null : json["icon"],
    is_Chid: json["is_Chid"] == null ? null : json["is_Chid"].toString(),
    type_Category: json["type_Category"] == null ? null : json["type_Category"],


  );

  Map<String, dynamic> toJson() => {
    "category_id": category_id == null ? null : category_id,
    "category_Name": category_Name == null ? null : category_Name,
    "icon": icon == null ? null : icon,
    "is_Chid": is_Chid == null ? null : is_Chid,
    "type_Category": type_Category == null ? null : type_Category,


  };
}
