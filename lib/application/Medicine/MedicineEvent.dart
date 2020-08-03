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
