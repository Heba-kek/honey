import 'package:honey/Domain/Home/Entity/ExpensesLoanEntity.dart';

class ExpensesLoanModel extends ExpensesLoanEntity {
  ExpensesLoanModel({String code, List<ExpensesLoanData> data})
      : super(code, data);

  factory ExpensesLoanModel.fromJson(Map<String, dynamic> json) =>
      ExpensesLoanModel(
        code: json["code"],
        data: List<ExpensesLoanData>.from(
            json["data"].map((x) => ExpensesLoanData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}
