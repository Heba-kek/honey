import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class HomeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetHomeEvent extends HomeEvent {
  GetHomeEvent();
  @override
  List<Object> get props => [];

  Map<String, dynamic> toMap() {
    return {};
  }
}

class GeMedicineStatus extends HomeEvent {
  final String date;
  final int status;
  final String doneDate;

  GeMedicineStatus(this.date, this.status, this.doneDate);

  @override
  List<Object> get props => [
        this.date,
        this.status,
        this.doneDate,
      ];

  Map<String, dynamic> toMap() {
    return {
      "date": this.date,
      "status": this.status,
      "date_done": this.doneDate,
    };
  }
}

class GETHomeMedicineDetails extends HomeEvent {
  final int medicineId;

  GETHomeMedicineDetails(this.medicineId);
  @override
  List<Object> get props => [this.medicineId];

  Map<String, dynamic> toMap() {
    return {"medicine_id": this.medicineId};
  }
}
