class DebtEntity {
  DebtEntity(
    this.code,
    this.data,
  );

  final String code;
  final List<DebitData> data;
}

class DebitData {
  DebitData({
    this.debtId,
    this.personName,
    this.categoryId,
  });

  final String debtId;
  final String personName;
  final String categoryId;

  factory DebitData.fromJson(Map<String, dynamic> json) => DebitData(
        debtId: json["debt_id"],
        personName: json["person_name"],
        categoryId: json["category_id"],
      );

  Map<String, dynamic> toJson() => {
        "debt_id": debtId,
        "person_name": personName,
        "category_id": categoryId,
      };
}
