class HomeEntity {
  HomeEntity(
    this.code,
    this.data,
  );

  final String code;
  final HomeData data;
}

class HomeData {
  HomeData({
    this.medicine,
    this.earlierApp,
    this.revenues,
    this.scduleWork,
    this.icons,
    this.healthIcons,
  });

  final List<Medicine> medicine;
  final EarlierApp earlierApp;
  final List<Revenue> revenues;
  final List<ScduleWork> scduleWork;
  final List<Icon> icons;
  final List<Icon> healthIcons;

  factory HomeData.fromJson(Map<String, dynamic> json) => HomeData(
        medicine: json["medicine"] == null
            ? null
            : List<Medicine>.from(
                json["medicine"].map((x) => Medicine.fromJson(x))),
        earlierApp: json["earlier_app"] == null
            ? null
            : EarlierApp.fromJson(json["earlier_app"]),
        revenues: json["revenues"] == null
            ? null
            : List<Revenue>.from(
                json["revenues"].map((x) => Revenue.fromJson(x))),
        scduleWork: json["scdule_work"] == null
            ? null
            : List<ScduleWork>.from(
                json["scdule_work"].map((x) => ScduleWork.fromJson(x))),
        icons: json["icons"] == null
            ? null
            : List<Icon>.from(json["icons"].map((x) => Icon.fromJson(x))),
        healthIcons: json["health_icons"] == null
            ? null
            : List<Icon>.from(
                json["health_icons"].map((x) => Icon.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "medicine": medicine == null
            ? null
            : List<dynamic>.from(medicine.map((x) => x.toJson())),
        "earlier_app": earlierApp == null ? null : earlierApp.toJson(),
        "revenues": revenues == null
            ? null
            : List<dynamic>.from(revenues.map((x) => x.toJson())),
        "scdule_work": scduleWork == null
            ? null
            : List<dynamic>.from(scduleWork.map((x) => x.toJson())),
        "icons": icons == null
            ? null
            : List<dynamic>.from(icons.map((x) => x.toJson())),
        "health_icons": healthIcons == null
            ? null
            : List<dynamic>.from(healthIcons.map((x) => x.toJson())),
      };
}

class EarlierApp {
  EarlierApp({
    this.appointement,
    this.diffrent,
    this.type,
  });

  final Medicine appointement;
  final String diffrent;
  final String type;

  factory EarlierApp.fromJson(Map<String, dynamic> json) => EarlierApp(
        appointement: json["appointement"] == null
            ? null
            : Medicine.fromJson(json["appointement"]),
        diffrent: json["diffrent"] == null ? null : json["diffrent"],
        type: json["type"] == null ? null : json["type"],
      );

  Map<String, dynamic> toJson() => {
        "appointement": appointement == null ? null : appointement.toJson(),
        "diffrent": diffrent == null ? null : diffrent,
        "type": type == null ? null : type,
      };
}

class Medicine {
  Medicine({
    this.date,
    this.id,
    this.medicineId,
    this.medicine,
    this.sick,
    this.reminder,
    this.instructionName,
    this.doseName,
  });

  final String date;
  final String id;
  final String medicineId;
  final String medicine;
  final String sick;
  final String reminder;
  final String instructionName;
  final String doseName;

  factory Medicine.fromJson(Map<String, dynamic> json) => Medicine(
        date: json["date"] == null ? null : json["date"],
        id: json["id"] == null ? null : json["id"],
        medicineId: json["medicine_id"] == null ? null : json["medicine_id"],
        medicine: json["medicine"] == null ? null : json["medicine"],
        sick: json["sick"] == null ? null : json["sick"],
        reminder: json["reminder"] == null ? null : json["reminder"],
        instructionName:
            json["instruction_name"] == null ? null : json["instruction_name"],
        doseName: json["dose_name"] == null ? null : json["dose_name"],
      );

  Map<String, dynamic> toJson() => {
        "date": date == null ? null : date,
        "id": id == null ? null : id,
        "medicine_id": medicineId == null ? null : medicineId,
        "medicine": medicine == null ? null : medicine,
        "sick": sick == null ? null : sick,
        "reminder": reminder == null ? null : reminder,
        "instruction_name": instructionName == null ? null : instructionName,
        "dose_name": doseName == null ? null : doseName,
      };
}

class Icon {
  Icon({
    this.id,
    this.name,
    this.url,
    this.isAvailable,
  });

  final String id;
  final String name;
  final String url;
  final String isAvailable;

  factory Icon.fromJson(Map<String, dynamic> json) => Icon(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        url: json["url"] == null ? null : json["url"],
        isAvailable: json["is_available"] == null ? null : json["is_available"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "url": url == null ? null : url,
        "is_available": isAvailable == null ? null : isAvailable,
      };
}

class Revenue {
  Revenue({
    this.revenue,
  });

  final String revenue;

  factory Revenue.fromJson(Map<String, dynamic> json) => Revenue(
        revenue: json["revenue"] == null ? null : json["revenue"],
      );

  Map<String, dynamic> toJson() => {
        "revenue": revenue == null ? null : revenue,
      };
}

class ScduleWork {
  ScduleWork({
    this.date,
    this.id,
    this.name,
    this.time,
    this.type,
  });

  final DateTime date;
  final String id;
  final String name;
  final String time;
  final String type;

  factory ScduleWork.fromJson(Map<String, dynamic> json) => ScduleWork(
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        time: json["time"] == null ? null : json["time"],
        type: json["type"] == null ? null : json["type"],
      );

  Map<String, dynamic> toJson() => {
        "date": date == null
            ? null
            : "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "time": time == null ? null : time,
        "type": type == null ? null : type,
      };
}
