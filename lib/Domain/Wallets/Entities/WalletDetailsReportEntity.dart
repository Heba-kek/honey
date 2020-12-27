class WalletDetailsReportEntity {
  WalletDetailsReportEntity(
    this.code,
    this.data,
  );

  final String code;
  final WalletDetailsReportData data;
}

class WalletDetailsReportData {
  WalletDetailsReportData({
    this.balance,
    this.expenses,
    this.total,
    this.currency,
  });

  final List<Balance> balance;
  final List<Expense> expenses;
  final List<Total> total;
  final List<Currency> currency;

  factory WalletDetailsReportData.fromJson(Map<String, dynamic> json) =>
      WalletDetailsReportData(
        balance: json["balance"] == null
            ? null
            : List<Balance>.from(
                json["balance"].map((x) => Balance.fromJson(x))),
        expenses: json["expenses"] == null
            ? null
            : List<Expense>.from(
                json["expenses"].map((x) => Expense.fromJson(x))),
        total: json["total"] == null
            ? null
            : List<Total>.from(json["total"].map((x) => Total.fromJson(x))),
        currency: json["currency"] == null
            ? null
            : List<Currency>.from(
                json["currency"].map((x) => Currency.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "balance": balance == null
            ? null
            : List<dynamic>.from(balance.map((x) => x.toJson())),
        "expenses": expenses == null
            ? null
            : List<dynamic>.from(expenses.map((x) => x.toJson())),
        "total": total == null
            ? null
            : List<dynamic>.from(total.map((x) => x.toJson())),
        "currency": currency == null
            ? null
            : List<dynamic>.from(currency.map((x) => x.toJson())),
      };
}

class Balance {
  Balance({
    this.balance,
  });

  final String balance;

  factory Balance.fromJson(Map<String, dynamic> json) => Balance(
        balance: json["balance"] == null ? null : json["balance"],
      );

  Map<String, dynamic> toJson() => {
        "balance": balance == null ? null : balance,
      };
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

class Expense {
  Expense({
    this.id,
    this.total,
    this.amount,
    this.rest,
    this.type,
    this.otherWallet,
    this.details,
    this.date,
    this.time,
    this.contactName,
    this.catName,
    this.categoryIcon,
    this.walletName,
    this.walletIcon,
  });

  final String id;
  final String total;
  final String amount;
  final String rest;
  final String type;
  final String otherWallet;
  final String details;
  final String date;
  final String time;
  final String contactName;
  final String catName;
  final String categoryIcon;
  final String walletName;
  final String walletIcon;

  factory Expense.fromJson(Map<String, dynamic> json) => Expense(
        id: json["id"] == null ? null : json["id"],
        total: json["total"] == null ? null : json["total"],
        amount: json["amount"] == null ? null : json["amount"],
        rest: json["rest"] == null ? null : json["rest"],
        type: json["type"] == null ? null : json["type"],
        otherWallet: json["other_wallet"] == null ? null : json["other_wallet"],
        details: json["details"] == null ? null : json["details"],
        date: json["date"] == null ? null : json["date"],
        time: json["time"] == null ? null : json["time"],
        contactName: json["contact_name"] == null ? null : json["contact_name"],
        catName: json["cat_name"] == null ? null : json["cat_name"],
        categoryIcon:
            json["category_icon"] == null ? null : json["category_icon"],
        walletName: json["wallet_name"] == null ? null : json["wallet_name"],
        walletIcon: json["wallet_icon"] == null ? null : json["wallet_icon"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "total": total == null ? null : total,
        "amount": amount == null ? null : amount,
        "rest": rest == null ? null : rest,
        "type": type == null ? null : type,
        "other_wallet": otherWallet == null ? null : otherWallet,
        "details": details == null ? null : details,
        "date": date == null ? null : date,
        "time": time == null ? null : time,
        "contact_name": contactName == null ? null : contactName,
        "cat_name": catName == null ? null : catName,
        "category_icon": categoryIcon == null ? null : categoryIcon,
        "wallet_name": walletName == null ? null : walletName,
        "wallet_icon": walletIcon == null ? null : walletIcon,
      };
}

class Total {
  Total({
    this.total,
    this.amount,
    this.debt,
  });

  final int total;
  final int amount;
  final int debt;

  factory Total.fromJson(Map<String, dynamic> json) => Total(
        total: json["total"] == null ? null : json["total"],
        amount: json["amount"] == null ? null : json["amount"],
        debt: json["debt"] == null ? null : json["debt"],
      );

  Map<String, dynamic> toJson() => {
        "total": total == null ? null : total,
        "amount": amount == null ? null : amount,
        "debt": debt == null ? null : debt,
      };
}
