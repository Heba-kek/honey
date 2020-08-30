class HomeMedicineEntity {
  HomeMedicineEntity(
    this.code,
    this.medicine,
  );

  final String code;
  final List<HomeMedicine> medicine;
}

class HomeMedicine {
  HomeMedicine({
    this.id,
    this.sickName,
    this.medicineName,
    this.image,
    this.qunantity,
    this.instructionId,
    this.doseId,
    this.isnstruction,
    this.dose,
  });

  final String id;
  final String sickName;
  final String medicineName;
  final String image;
  final String qunantity;
  final String instructionId;
  final String doseId;
  final String isnstruction;
  final String dose;

  factory HomeMedicine.fromJson(Map<String, dynamic> json) => HomeMedicine(
        id: json["id"] == null ? null : json["id"],
        sickName: json["sick_name"] == null ? null : json["sick_name"],
        medicineName:
            json["medicine_name"] == null ? null : json["medicine_name"],
        image: json["image"] == null ? null : json["image"],
        qunantity: json["qunantity"] == null ? null : json["qunantity"],
        instructionId:
            json["instruction_id"] == null ? null : json["instruction_id"],
        doseId: json["dose_id"] == null ? null : json["dose_id"],
        isnstruction:
            json["isnstruction"] == null ? null : json["isnstruction"],
        dose: json["dose"] == null ? null : json["dose"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "sick_name": sickName == null ? null : sickName,
        "medicine_name": medicineName == null ? null : medicineName,
        "image": image == null ? null : image,
        "qunantity": qunantity == null ? null : qunantity,
        "instruction_id": instructionId == null ? null : instructionId,
        "dose_id": doseId == null ? null : doseId,
        "isnstruction": isnstruction == null ? null : isnstruction,
        "dose": dose == null ? null : dose,
      };
}
