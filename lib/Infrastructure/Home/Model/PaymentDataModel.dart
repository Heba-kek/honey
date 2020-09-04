import 'package:honey/Domain/Home/Entity/PaymentEntity.dart';

class PaymentDataModel extends PaymentDataEntity {
  PaymentDataModel({code, data}) : super(code, data);

  factory PaymentDataModel.fromJson(Map<String, dynamic> json) =>
      PaymentDataModel(
        code: json["code"],
        data: List<PaymentData>.from(
            json["data"].map((x) => PaymentData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}
