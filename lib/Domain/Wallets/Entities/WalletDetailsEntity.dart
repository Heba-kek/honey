class WalletDetailsEntity {
  WalletDetailsEntity(
    this.code,
    this.msg,
    this.data,
  );

  final String code;
  final String msg;
  final WalletDetailsData data;
}

class WalletDetailsData {
  WalletDetailsData({
    this.details,
    this.transactions,
  });

  final List<Detail> details;
  final List<Transaction> transactions;

  factory WalletDetailsData.fromJson(Map<String, dynamic> json) {
    return WalletDetailsData(
      details: json["details"] == null
          ? null
          : List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
      transactions: json["transactions"] == null
          ? null
          : List<Transaction>.from(
              json["transactions"].map((x) => Transaction.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "details": details == null
            ? null
            : List<dynamic>.from(details.map((x) => x.toJson())),
        "transactions": transactions == null
            ? null
            : List<dynamic>.from(transactions.map((x) => x.toJson())),
      };
}

class Detail {
  Detail({
    this.id,
    this.type,
    this.balance,
    this.mainBalance,
    this.date,
    this.time,
    this.name,
    this.paymentDate,
    this.reminderDate,
    this.projectValue,
    this.disappear,
    this.userId,
    this.paymentValue,
    this.saveProjectRest,
    this.percentage,
  });

  final String id;
  final String type;
  final String balance;
  final String mainBalance;
  final String date;
  final String time;
  final String name;
  final String paymentDate;
  final String reminderDate;
  final String projectValue;
  final String disappear;
  final String userId;
  final int paymentValue;
  final int saveProjectRest;
  final dynamic percentage;

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        id: json["id"] == null ? null : json["id"],
        type: json["type"] == null ? null : json["type"],
        balance: json["balance"] == null ? null : json["balance"],
        mainBalance: json["main_balance"] == null ? null : json["main_balance"],
        date: json["date"] == null ? null : json["date"],
        time: json["time"] == null ? null : json["time"],
        name: json["name"] == null ? null : json["name"],
        paymentDate: json["payment_date"] == null ? null : json["payment_date"],
        reminderDate:
            json["reminder_date"] == null ? null : json["reminder_date"],
        projectValue:
            json["project_value"] == null ? null : json["project_value"],
        disappear: json["disappear"] == null ? null : json["disappear"],
        userId: json["user_id"] == null ? null : json["user_id"],
        paymentValue:
            json["payment_value"] == null ? null : json["payment_value"],
        saveProjectRest: json["save_project_rest"] == null
            ? null
            : json["save_project_rest"],
        percentage: json["percentage"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "type": type == null ? null : type,
        "balance": balance == null ? null : balance,
        "main_balance": mainBalance == null ? null : mainBalance,
        "date": date == null ? null : date,
        "time": time == null ? null : time,
        "name": name == null ? null : name,
        "payment_date": paymentDate == null ? null : paymentDate,
        "reminder_date": reminderDate == null ? null : reminderDate,
        "project_value": projectValue == null ? null : projectValue,
        "disappear": disappear == null ? null : disappear,
        "user_id": userId == null ? null : userId,
        "payment_value": paymentValue == null ? null : paymentValue,
        "save_project_rest": saveProjectRest == null ? null : saveProjectRest,
        "percentage": percentage,
      };
}

class Transaction {
  Transaction({
    this.id,
    this.name,
    this.icon,
  });

  final String id;
  final String name;
  final String icon;

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        icon: json["icon"] == null ? null : json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "icon": icon == null ? null : icon,
      };
}
