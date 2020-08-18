class RevenueSubCategoryReportEntity {
  RevenueSubCategoryReportEntity(
    this.code,
    this.data,
    this.currency,
    this.total,
  );

  final String code;
  final List<RevenueSubCategoryReportData> data;
  final List<Currency> currency;
  final List<Total> total;
}

class Currency {
  Currency({
    this.name,
  });

  final String name;

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
      };
}

class RevenueSubCategoryReportData {
  RevenueSubCategoryReportData({
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

  factory RevenueSubCategoryReportData.fromJson(Map<String, dynamic> json) =>
      RevenueSubCategoryReportData(
        revenueId: json["revenue_id"] == null ? null : json["revenue_id"],
        value: json["value"] == null ? null : json["value"],
        amount: json["amount"] == null ? null : json["amount"],
        rest: json["rest"] == null ? null : json["rest"],
        description: json["description"] == null ? null : json["description"],
        note: json["note"] == null ? null : json["note"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        customer: json["customer"] == null ? null : json["customer"],
        image: json["image"] == null ? null : json["image"],
        payment: json["payment"] == null ? null : json["payment"],
      );

  Map<String, dynamic> toJson() => {
        "revenue_id": revenueId == null ? null : revenueId,
        "value": value == null ? null : value,
        "amount": amount == null ? null : amount,
        "rest": rest == null ? null : rest,
        "description": description == null ? null : description,
        "note": note == null ? null : note,
        "date": date == null
            ? null
            : "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "customer": customer == null ? null : customer,
        "image": image == null ? null : image,
        "payment": payment == null ? null : payment,
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
        total: json["total"] == null ? null : json["total"],
        debt: json["debt"] == null ? null : json["debt"],
        number: json["number"] == null ? null : json["number"],
      );

  Map<String, dynamic> toJson() => {
        "total": total == null ? null : total,
        "debt": debt == null ? null : debt,
        "number": number == null ? null : number,
      };
}
