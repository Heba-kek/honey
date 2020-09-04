class ExpensesLoanEntity {
  ExpensesLoanEntity(
    this.code,
    this.data,
  );

  final String code;
  final List<ExpensesLoanData> data;
}

class ExpensesLoanData {
  ExpensesLoanData({
    this.loanId,
    this.bankName,
  });

  final String loanId;
  final String bankName;

  factory ExpensesLoanData.fromJson(Map<String, dynamic> json) =>
      ExpensesLoanData(
        loanId: json["loan_id"],
        bankName: json["bank_name"],
      );

  Map<String, dynamic> toJson() => {
        "loan_id": loanId,
        "bank_name": bankName,
      };
}
