import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class MedicineEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetMedicine extends MedicineEvent {
  GetMedicine();

  @override
  List<Object> get props => [];

  Map<String, dynamic> toMap() {
    return {};
  }
}

class AddMedicineEvent extends MedicineEvent {
  // ignore: non_constant_identifier_names
  final String sick_name;
  // ignore: non_constant_identifier_names
  final String medicine_name;
  final int qunantity;
  // ignore: non_constant_identifier_names
  final int dose_id;
  // ignore: non_constant_identifier_names
  final int instruction_id;
  final int type;
  // ignore: non_constant_identifier_names
  final String start_date;
  final int period;
  final int number;
  final int freq;
  final int reminder;
  final String appointement;
  // ignore: non_constant_identifier_names
  final String doctor_name;
  // ignore: non_constant_identifier_names
  final String sick_status;
  final FormData
      image; // File image = File(); String fileName = file.path.split('/').last;   MultipartFile.fromFile(file.path, filename:fileName)

  AddMedicineEvent(
      this.sick_name,
      this.medicine_name,
      this.qunantity,
      this.dose_id,
      this.instruction_id,
      this.type,
      this.start_date,
      this.period,
      this.number,
      this.freq,
      this.reminder,
      this.appointement,
      this.doctor_name,
      this.sick_status,
      this.image);

  @override
  List<Object> get props => [
        sick_name,
        medicine_name,
        qunantity,
        dose_id,
        instruction_id,
        type,
        start_date,
        period,
        number,
        freq,
        reminder,
        appointement,
        doctor_name,
        sick_status,
        image
      ];

  Map<String, dynamic> toMap() {
    return {
      "sick_name": sick_name,
      "medicine_name": medicine_name,
      "qunantity": qunantity,
      "dose_id": dose_id,
      "instruction_id": instruction_id,
      "type": type,
      "start_date": start_date,
      "period": period,
      "number": number,
      "freq": freq,
      "reminder": reminder,
      "appointement": appointement,
      "doctor_name": doctor_name,
      "sick_status": sick_status,
      "image": image
    };
  }
}

class GetMedicineBySickName extends MedicineEvent {
  final String sickName;
  GetMedicineBySickName(this.sickName);

  @override
  List<Object> get props => [sickName];

  Map<String, dynamic> toMap() {
    return {"sick_name": sickName};
  }
}
