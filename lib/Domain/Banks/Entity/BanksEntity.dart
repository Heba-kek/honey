class BanksEntity {
  BanksEntity(
    this.code,
    this.data,
    this.total,
    this.totalCount,
  );

  final String code;
  final List<BanksData> data;
  final List<Total> total;
  final int totalCount;
}

class BanksData {
  BanksData({
    this.bankName,
    this.id,
    this.date,
    this.amount,
    this.currency,
  });

  final String bankName;
  final String id;
  final DateTime date;
  final String amount;
  final String currency;

  factory BanksData.fromJson(Map<String, dynamic> json) => BanksData(
        bankName: json["bank_name"],
        id: json["id"],
        date: DateTime.parse(json["date"]),
        amount: json["amount"],
        currency: json["currency"],
      );

  Map<String, dynamic> toJson() => {
        "bank_name": bankName,
        "id": id,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "amount": amount,
        "currency": currency,
      };
}

class Total {
  Total({
    this.totalSp,
    this.totalEur,
    this.totalUs,
  });

  final String totalSp;
  final String totalEur;
  final String totalUs;

  factory Total.fromJson(Map<String, dynamic> json) => Total(
        totalSp: json["total_sp"] == null ? null : json["total_sp"],
        totalEur: json["total_eur"] == null ? null : json["total_eur"],
        totalUs: json["total_us"] == null ? null : json["total_us"],
      );

  Map<String, dynamic> toJson() => {
        "total_sp": totalSp == null ? null : totalSp,
        "total_eur": totalEur == null ? null : totalEur,
        "total_us": totalUs == null ? null : totalUs,
      };
}
