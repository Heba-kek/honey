class AddMedicineEntity {
  AddMedicineEntity(
    this.code,
    this.appointement,
    this.isNeed,
    this.msg,
  );

  final String code;
  final List<Appointement> appointement;
  final bool isNeed;
  final String msg;
}

class Appointement {
  Appointement({
    this.startDate,
    this.endDate,
    this.isRecurring,
    this.recurringType,
    this.repeat,
    this.freqCount,
    this.reminder,
  });

  final String startDate;
  final String endDate;
  final bool isRecurring;
  final String recurringType;
  final int repeat;
  final int freqCount;
  final String reminder;

  factory Appointement.fromJson(Map<String, dynamic> json) => Appointement(
        startDate: json["start_date"] == null ? null : json["start_date"],
        endDate: json["end_date"] == null ? null : json["end_date"],
        isRecurring: json["is_recurring"] == null ? null : json["is_recurring"],
        recurringType:
            json["recurring_type"] == null ? null : json["recurring_type"],
        repeat: json["repeat"] == null ? null : json["repeat"],
        freqCount: json["freq_count"] == null ? null : json["freq_count"],
        reminder: json["reminder"] == null ? null : json["reminder"],
      );

  Map<String, dynamic> toJson() => {
        "start_date": startDate == null ? null : startDate,
        "end_date": endDate == null ? null : endDate,
        "is_recurring": isRecurring == null ? null : isRecurring,
        "recurring_type": recurringType == null ? null : recurringType,
        "repeat": repeat == null ? null : repeat,
        "freq_count": freqCount == null ? null : freqCount,
        "reminder": reminder == null ? null : reminder,
      };
}
