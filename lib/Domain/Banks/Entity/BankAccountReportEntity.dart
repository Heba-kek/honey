class BankAccountReportEntity {
  BankAccountReportEntity(
    this.code,
    this.data,
    this.information,
  );

  final String code;
  final List<BankReportData> data;
  final List<Information> information;
}

class BankReportData {
  BankReportData({
    this.amount,
    this.date,
    this.id,
    this.type,
    this.currency,
    this.description,
    this.actionName,
  });

  final String amount;
  final String date;
  final String id;
  final String type;
  final String currency;
  final String description;
  final String actionName;

  factory BankReportData.fromJson(Map<String, dynamic> json) => BankReportData(
        amount: json["amount"],
        date: json["date"],
        id: json["id"],
        type: json["type"],
        currency: json["currency"],
        description: json["description"] == null ? null : json["description"],
        actionName: json["action_name"],
      );

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "date": date,
        "id": id,
        "type": type,
        "currency": currency,
        "description": description == null ? null : description,
        "action_name": actionName,
      };
}

class Information {
  Information({
    this.moves,
    this.total,
    this.totalAccount,
    this.reportDate,
  });

  final String moves;
  final String total;
  final String totalAccount;
  final String reportDate;

  factory Information.fromJson(Map<String, dynamic> json) => Information(
        moves: json["moves"] == null ? null : json["moves"],
        total: json["total"] == null ? null : json["total"],
        totalAccount:
            json["total_account"] == null ? null : json["total_account"],
        reportDate: json["report_date"] == null ? null : json["report_date"],
      );

  Map<String, dynamic> toJson() => {
        "moves": moves == null ? null : moves,
        "total": total == null ? null : total,
        "total_account": totalAccount == null ? null : totalAccount,
        "report_date": reportDate == null ? null : reportDate,
      };
}
