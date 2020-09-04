import 'package:honey/Domain/Home/Entity/DebtEntity.dart';

class DebtModel extends DebtEntity {
  DebtModel({String code, List<DebitData> data}) : super(code, data);

  factory DebtModel.fromJson(Map<String, dynamic> json) => DebtModel(
        code: json["code"],
        data: List<DebitData>.from(
            json["data"].map((x) => DebitData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}
