class CategoryForAddEntity {
  CategoryForAddEntity(
    this.code,
    this.data,
    this.loan,
    this.debt,
  );

  final String code;
  final List<CategoryForAddData> data;
  final Loan loan;
  final Debt debt;
}

class CategoryForAddData {
  CategoryForAddData({
    this.categoryName,
    this.typeCategory,
    this.categoryId,
    this.icon,
  });

  final String categoryName;
  final String typeCategory;
  final String categoryId;
  final String icon;

  factory CategoryForAddData.fromJson(Map<String, dynamic> json) =>
      CategoryForAddData(
        categoryName: json["category_Name"],
        typeCategory: json["type_Category"],
        categoryId: json["category_id"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "category_Name": categoryName,
        "type_Category": typeCategory,
        "category_id": categoryId,
        "icon": icon,
      };
}

class Debt {
  Debt({
    this.debt,
  });

  final int debt;

  factory Debt.fromJson(Map<String, dynamic> json) => Debt(
        debt: json["debt"],
      );

  Map<String, dynamic> toJson() => {
        "debt": debt,
      };
}

class Loan {
  Loan({
    this.loan,
  });

  final int loan;

  factory Loan.fromJson(Map<String, dynamic> json) => Loan(
        loan: json["loan"],
      );

  Map<String, dynamic> toJson() => {
        "loan": loan,
      };
}
