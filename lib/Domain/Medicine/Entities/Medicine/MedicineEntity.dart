class MedicineEntity {
  MedicineEntity(this.code, this.data, this.msg);

  final String code;
  final MedicineData data;

  final String msg;
}

class MedicineData {
  MedicineData({
    this.dose,
    this.instruction,
    this.appointments,
    this.daily,
    this.weekly,
  });

  final List<Appointment> dose;
  final List<Appointment> instruction;
  final List<Appointment> appointments;
  final List<Appointment> daily;
  final List<Weekly> weekly;

  factory MedicineData.fromJson(Map<String, dynamic> json) => MedicineData(
        dose: json["dose"] == null
            ? null
            : List<Appointment>.from(
                json["dose"].map((x) => Appointment.fromJson(x))),
        instruction: json["instruction"] == null
            ? null
            : List<Appointment>.from(
                json["instruction"].map((x) => Appointment.fromJson(x))),
        appointments: json["appointments"] == null
            ? null
            : List<Appointment>.from(
                json["appointments"].map((x) => Appointment.fromJson(x))),
        daily: json["daily"] == null
            ? null
            : List<Appointment>.from(
                json["daily"].map((x) => Appointment.fromJson(x))),
        weekly: json["weekly"] == null
            ? null
            : List<Weekly>.from(json["weekly"].map((x) => Weekly.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "dose": dose == null
            ? null
            : List<dynamic>.from(dose.map((x) => x.toJson())),
        "instruction": instruction == null
            ? null
            : List<dynamic>.from(instruction.map((x) => x.toJson())),
        "appointments": appointments == null
            ? null
            : List<dynamic>.from(appointments.map((x) => x.toJson())),
        "daily": daily == null
            ? null
            : List<dynamic>.from(daily.map((x) => x.toJson())),
        "weekly": weekly == null
            ? null
            : List<dynamic>.from(weekly.map((x) => x.toJson())),
      };
}

class Appointment {
  Appointment({
    this.id,
    this.name,
  });

  final String id;
  final String name;

  factory Appointment.fromJson(Map<String, dynamic> json) => Appointment(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
      };

  @override
  String toString() {
    return this.name;
  }
}

class Weekly {
  Weekly({
    this.id,
    this.name,
  });

  final int id;
  final String name;

  factory Weekly.fromJson(Map<String, dynamic> json) => Weekly(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
      };
}
