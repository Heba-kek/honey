import 'package:honey/Domain/Medicine/Entities/SickNameEntity.dart';

class GetMidicinesEntity {
  GetMidicinesEntity(
    this.code,
    this.medicine,
    this.sickName,
  );

  final String code;
  final List<Medicine> medicine;
  final List<SickName> sickName;
}

class Medicine {
  Medicine({
    this.id,
    this.sickName,
    this.medicineName,
    this.image,
    this.qunantity,
    this.isnstruction,
    this.dose,
  });

  final String id;
  final String sickName;
  final String medicineName;
  final String image;
  final String qunantity;
  final String isnstruction;
  final String dose;

  factory Medicine.fromJson(Map<String, dynamic> json) => Medicine(
        id: json["id"] == null ? null : json["id"],
        sickName: json["sick_name"] == null ? null : json["sick_name"],
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
        "sick_name": sickName == null ? null : sickName,
        "medicine_name": medicineName == null ? null : medicineName,
        "image": image == null ? null : image,
        "qunantity": qunantity == null ? null : qunantity,
        "isnstruction": isnstruction == null ? null : isnstruction,
        "dose": dose == null ? null : dose,
      };
}
