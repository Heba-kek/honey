class RevenueReportEntity {
  RevenueReportEntity(
    this.code,
    this.data,
    this.total,
    this.currency,
  );

  final String code;
  final List<RevenueReportData> data;
  final List<Total> total;
  final List<Currency> currency;
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

class RevenueReportData {
  RevenueReportData({
    this.total,
    this.percentage,
    this.categoryId,
    this.isChid,
    this.category,
  });

  final String total;
  final String percentage;
  final String categoryId;
  final int isChid;
  final String category;

  factory RevenueReportData.fromJson(Map<String, dynamic> json) =>
      RevenueReportData(
        total: json["total"] == null ? null : json["total"],
        percentage: json["percentage"] == null ? null : json["percentage"],
        categoryId: json["category_id"] == null ? null : json["category_id"],
        isChid: json["is_Chid"] == null ? null : json["is_Chid"],
        category: json["category"] == null ? null : json["category"],
      );

  Map<String, dynamic> toJson() => {
        "total": total == null ? null : total,
        "percentage": percentage == null ? null : percentage,
        "category_id": categoryId == null ? null : categoryId,
        "is_Chid": isChid == null ? null : isChid,
        "category": category == null ? null : category,
      };
}

class Total {
  Total({
    this.total,
  });

  final String total;

  factory Total.fromJson(Map<String, dynamic> json) => Total(
        total: json["total"] == null ? null : json["total"],
      );

  Map<String, dynamic> toJson() => {
        "total": total == null ? null : total,
      };
}
