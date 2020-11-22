class WalletDetailsEntity {
  WalletDetailsEntity(
    this.code,
    this.msg,
    this.data,
  );

  final String code;
  final String msg;
  final List<WalletDetails> data;
}

class WalletDetails {
  WalletDetails({
    this.id,
    this.type,
    this.balance,
    this.date,
    this.time,
    this.name,
    this.paymentDate,
    this.reminderDate,
    this.projectValue,
    this.disappear,
    this.userId,
  });

  final String id;
  final String type;
  final String balance;
  final DateTime date;
  final String time;
  final String name;
  final String paymentDate;
  final String reminderDate;
  final String projectValue;
  final String disappear;
  final String userId;

  factory WalletDetails.fromJson(Map<String, dynamic> json) => WalletDetails(
        id: json["id"] == null ? null : json["id"],
        type: json["type"] == null ? null : json["type"],
        balance: json["balance"] == null ? null : json["balance"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        time: json["time"] == null ? null : json["time"],
        name: json["name"] == null ? null : json["name"],
        paymentDate: json["payment_date"] == null ? null : json["payment_date"],
        reminderDate:
            json["reminder_date"] == null ? null : json["reminder_date"],
        projectValue:
            json["project_value"] == null ? null : json["project_value"],
        disappear: json["disappear"] == null ? null : json["disappear"],
        userId: json["user_id"] == null ? null : json["user_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "type": type == null ? null : type,
        "balance": balance == null ? null : balance,
        "date": date == null
            ? null
            : "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "time": time == null ? null : time,
        "name": name == null ? null : name,
        "payment_date": paymentDate == null ? null : paymentDate,
        "reminder_date": reminderDate == null ? null : reminderDate,
        "project_value": projectValue == null ? null : projectValue,
        "disappear": disappear == null ? null : disappear,
        "user_id": userId == null ? null : userId,
      };
}
