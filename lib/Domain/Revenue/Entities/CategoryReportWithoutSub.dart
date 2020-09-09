class RevenueReportWithoutSubEntity {
  RevenueReportWithoutSubEntity(
    this.code,
    this.data,
    this.currency,
    this.total,
  );

  final String code;
  final List<RevenueCategoryReportWithoutSubData> data;
  final List<Currency> currency;
  final List<Total> total;
}

class Currency {
  Currency({
    this.name,
  });

  final String name;

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}

class RevenueCategoryReportWithoutSubData {
  RevenueCategoryReportWithoutSubData({
    this.revenueId,
    this.value,
    this.amount,
    this.rest,
    this.description,
    this.note,
    this.date,
    this.customer,
    this.image,
    this.payment,
  });

  final String revenueId;
  final String value;
  final String amount;
  final String rest;
  final String description;
  final String note;
  final DateTime date;
  final String customer;
  final String image;
  final String payment;

  factory RevenueCategoryReportWithoutSubData.fromJson(
          Map<String, dynamic> json) =>
      RevenueCategoryReportWithoutSubData(
        revenueId: json["revenue_id"],
        value: json["value"],
        amount: json["amount"],
        rest: json["rest"],
        description: json["description"],
        note: json["note"],
        date: DateTime.parse(json["date"]),
        customer: json["customer"],
        image: json["image"],
        payment: json["payment"],
      );

  Map<String, dynamic> toJson() => {
        "revenue_id": revenueId,
        "value": value,
        "amount": amount,
        "rest": rest,
        "description": description,
        "note": note,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "customer": customer,
        "image": image,
        "payment": payment,
      };
}

class Total {
  Total({
    this.total,
    this.debt,
    this.number,
  });

  final String total;
  final String debt;
  final String number;

  factory Total.fromJson(Map<String, dynamic> json) => Total(
        total: json["total"],
        debt: json["debt"],
        number: json["number"],
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "debt": debt,
        "number": number,
      };
}
