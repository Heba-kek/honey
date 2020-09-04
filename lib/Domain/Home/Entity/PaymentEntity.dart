class PaymentDataEntity {
  PaymentDataEntity(
    this.code,
    this.data,
  );

  final String code;
  final List<PaymentData> data;
}

class PaymentData {
  PaymentData({
    this.name,
    this.id,
  });

  final String name;
  final String id;

  factory PaymentData.fromJson(Map<String, dynamic> json) => PaymentData(
        name: json["name"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
      };
}
