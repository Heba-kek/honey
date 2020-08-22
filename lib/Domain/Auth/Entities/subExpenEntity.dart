import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class ExpenEntitySub extends Equatable {
  //json body proprties without tojson and fromjson
  final String code;
  final exeModelSub data;


  ExpenEntitySub(
      {@required this.code,
        @required this.data,
      });

  @override
  List<Object> get props => [this.code, this.data];
}

class exeModelSub {
  List<ExpenDataSub> exListSub;

  exeModelSub({@required this.exListSub});

  factory exeModelSub.fromJson(List<dynamic> json) {
    return exeModelSub(
        exListSub: json.map((i) => ExpenDataSub.fromJson(i)).toList());
  }
}
class ExpenDataSub extends Equatable {

  // "sub_category": [




  final String sub_category_Name;
  final String type_Category;
  final String sub_category_id;



  ExpenDataSub(
      {@required this.sub_category_id,
        @required this.sub_category_Name,

        @required this.type_Category,
      });

  @override
  List<Object> get props => [
    this.type_Category,
    this.sub_category_Name,
    this.sub_category_id,


  ];

  factory ExpenDataSub.fromJson(Map<String, dynamic> json) => ExpenDataSub(
    sub_category_Name: json["sub_category_Name"] == null ? null : json["sub_category_Name"],
    sub_category_id: json["sub_category_id"] == null ? null : json["sub_category_id"],

    type_Category: json["type_Category"] == null ? null : json["type_Category"],


  );

  Map<String, dynamic> toJson() => {
    "ub_category_id": sub_category_id == null ? null : sub_category_id,
    "sub_category_Name": sub_category_Name == null ? null : sub_category_Name,
    "type_Category": type_Category == null ? null : type_Category,


  };
}
