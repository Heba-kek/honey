import 'package:honey/Domain/Home/Entity/CategoryForAddEntity.dart';

class CategoryForAddModel extends CategoryForAddEntity {
  CategoryForAddModel(
      {String code, List<CategoryForAddData> data, Loan loan, Debt debt})
      : super(code, data, loan, debt);

  factory CategoryForAddModel.fromJson(Map<String, dynamic> json) =>
      CategoryForAddModel(
        code: json["code"],
        data: List<CategoryForAddData>.from(
            json["data"].map((x) => CategoryForAddData.fromJson(x))),
        loan: Loan.fromJson(json["loan"]),
        debt: Debt.fromJson(json["debt"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "loan": loan.toJson(),
        "debt": debt.toJson(),
      };
}
