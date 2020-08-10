class MedicineReportEntity {
  MedicineReportEntity(
    this.code,
    this.data,
  );

  final String code;
  final List<MedicineReportData> data;
}

class MedicineReportData {
  MedicineReportData({
    this.medicineName,
    this.doctorName,
    this.sickStatus,
    this.startDate,
    this.endDate,
    this.quantity,
  });

  final String medicineName;
  final String doctorName;
  final String sickStatus;
  final DateTime startDate;
  final DateTime endDate;
  final String quantity;

  factory MedicineReportData.fromJson(Map<String, dynamic> json) =>
      MedicineReportData(
        medicineName:
            json["medicine_name"] == null ? null : json["medicine_name"],
        doctorName: json["doctor_name"] == null ? null : json["doctor_name"],
        sickStatus: json["sick_status"] == null ? null : json["sick_status"],
        startDate: json["start_date"] == null
            ? null
            : DateTime.parse(json["start_date"]),
        endDate:
            json["end_date"] == null ? null : DateTime.parse(json["end_date"]),
        quantity: json["quantity"] == null ? null : json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "medicine_name": medicineName == null ? null : medicineName,
        "doctor_name": doctorName == null ? null : doctorName,
        "sick_status": sickStatus == null ? null : sickStatus,
        "start_date": startDate == null ? null : startDate.toIso8601String(),
        "end_date": endDate == null ? null : endDate.toIso8601String(),
        "quantity": quantity == null ? null : quantity,
      };
}
