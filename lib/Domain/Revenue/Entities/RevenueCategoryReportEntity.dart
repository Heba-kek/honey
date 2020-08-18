class RevenueCategoryReportEntity {
  RevenueCategoryReportEntity(
    this.code,
    this.data,
    this.total,
    this.currency,
  );

  final String code;
  final List<RevenueCategoryReportData> data;
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

class RevenueCategoryReportData {
  RevenueCategoryReportData({
    this.total,
    this.subCategoryId,
    this.subCategory,
  });

  final String total;
  final String subCategoryId;
  final String subCategory;

  factory RevenueCategoryReportData.fromJson(Map<String, dynamic> json) =>
      RevenueCategoryReportData(
        total: json["total"] == null ? null : json["total"],
        subCategoryId:
            json["sub_category_id"] == null ? null : json["sub_category_id"],
        subCategory: json["sub_category"] == null ? null : json["sub_category"],
      );

  Map<String, dynamic> toJson() => {
        "total": total == null ? null : total,
        "sub_category_id": subCategoryId == null ? null : subCategoryId,
        "sub_category": subCategory == null ? null : subCategory,
      };
}

class Total {
  Total({
    this.total,
  });

  final dynamic total;

  factory Total.fromJson(Map<String, dynamic> json) => Total(
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "total": total,
      };
}
