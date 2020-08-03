import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:honey/Domain/Medicine/Entities/Medicine/MedicineEntity.dart';

@immutable
abstract class MedicineState extends Equatable {
  @override
  List<Object> get props => [];
}

class Empty extends MedicineState {}

class Loading extends MedicineState {}

class Loaded extends MedicineState {
  final MedicineEntity medicineResponse;

  Loaded({this.medicineResponse});

  @override
  List<Object> get props => [];
}

class Error extends MedicineState {
  final String message;
  final VoidCallback callback;

  Error(this.message, this.callback);

  @override
  List<Object> get props => [message, this.callback];
}
