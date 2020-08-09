class MedicinesBySickNameEntity {
  MedicinesBySickNameEntity(
    this.code,
    this.data,
  );

  final String code;
  final List<MedicinesBySickNameData> data;
}

class MedicinesBySickNameData {
  MedicinesBySickNameData({
    this.id,
    this.medicineName,
    this.image,
    this.qunantity,
    this.isnstruction,
    this.dose,
  });

  final String id;
  final String medicineName;
  final String image;
  final String qunantity;
  final String isnstruction;
  final String dose;

  factory MedicinesBySickNameData.fromJson(Map<String, dynamic> json) =>
      MedicinesBySickNameData(
        id: json["id"] == null ? null : json["id"],
        medicineName:
            json["medicine_name"] == null ? null : json["medicine_name"],
        image: json["image"] == null ? null : json["image"],
        qunantity: json["qunantity"] == null ? null : json["qunantity"],
        isnstruction:
            json["isnstruction"] == null ? null : json["isnstruction"],
        dose: json["dose"] == null ? null : json["dose"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "medicine_name": medicineName == null ? null : medicineName,
        "image": image == null ? null : image,
        "qunantity": qunantity == null ? null : qunantity,
        "isnstruction": isnstruction == null ? null : isnstruction,
        "dose": dose == null ? null : dose,
      };
}
