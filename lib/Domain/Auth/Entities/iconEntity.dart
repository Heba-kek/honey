import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class IconEntity extends Equatable {
  //json body proprties without tojson and fromjson
  final String code;
  final IconModel data;


  IconEntity(
      {@required this.code,
        @required this.data,
      });

  @override
  List<Object> get props => [this.code, this.data];
}

class IconModel {
  List<IconDataM> iconList;

  IconModel({@required this.iconList});

  factory IconModel.fromJson(List<dynamic> json) {
    return IconModel(
        iconList: json.map((i) => IconDataM.fromJson(i)).toList());
  }
}
class IconDataM extends Equatable {

  // "sub_category": [




  final String id;
  final String url;
   bool select ;



  IconDataM(
      {@required this.id,
        @required this.url,
        @required this.select,

      });

  @override
  List<Object> get props => [
    this.id,
    this.url,
    this.select,


  ];

  factory IconDataM.fromJson(Map<String, dynamic> json) => IconDataM(
    id: json["id"] == null ? null : json["id"],
    url: json["url"] == null ? null : json["url"],
    select: json["select"] == null ? null : json["select"],



  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "url": url == null ? null : url,
    "select": select == null ? null : select,



  };
}
