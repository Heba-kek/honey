class ExpensesReportWithoutSubEntity {
  ExpensesReportWithoutSubEntity(
    this.code,
    this.data,
    this.currency,
    this.total,
  );

  final String code;
  final List<ExpensesCategoryReportWithouSubData> data;
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

class ExpensesCategoryReportWithouSubData {
  ExpensesCategoryReportWithouSubData({
    this.value,
    this.amount,
    this.rest,
    this.date,
    this.description,
    this.seller,
    this.image,
    this.payment,
  });

  final String value;
  final String amount;
  final String rest;
  final DateTime date;
  final String description;
  final String seller;
  final String image;
  final String payment;

  factory ExpensesCategoryReportWithouSubData.fromJson(
          Map<String, dynamic> json) =>
      ExpensesCategoryReportWithouSubData(
        value: json["value"],
        amount: json["amount"],
        rest: json["rest"],
        date: DateTime.parse(json["date"]),
        description: json["description"],
        seller: json["seller"],
        image: json["image"],
        payment: json["payment"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "amount": amount,
        "rest": rest,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "description": description,
        "seller": seller,
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
