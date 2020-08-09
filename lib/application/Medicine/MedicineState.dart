import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:honey/Domain/Medicine/Entities/AddMedicineEntity.dart';
import 'package:honey/Domain/Medicine/Entities/Medicine/MedicineEntity.dart';
import 'package:honey/Domain/Medicine/Entities/MedicinesBySickNameEntity.dart';

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

class AddMedicineLoaded extends MedicineState {
  final AddMedicineEntity addMedicineEntity;

  AddMedicineLoaded({this.addMedicineEntity});
  @override
  List<Object> get props => [this.addMedicineEntity];
}

class GetMedicineBySickNameLoaded extends MedicineState {
  final MedicinesBySickNameEntity medicinesBySickNameEntity;

  GetMedicineBySickNameLoaded({this.medicinesBySickNameEntity});

  @override
  List<Object> get props => [this.medicinesBySickNameEntity];
}
