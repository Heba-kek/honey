import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:honey/Domain/BasicSuccessEntity.dart';
import 'package:honey/Domain/Home/Entity/HomeEentity.dart';
import 'package:honey/Domain/Home/Entity/MedicineEntity.dart';

@immutable
abstract class HomeState extends Equatable {
  @override
  List<Object> get props => [];
}

class Empty extends HomeState {}

class Loading extends HomeState {}

class Error extends HomeState {
  final String message;
  final VoidCallback callback;

  Error(this.message, this.callback);

  @override
  List<Object> get props => [message, this.callback];
}

class Loaded extends HomeState {
  final BasicSuccessEntity basicSuccessEntity;

  Loaded(this.basicSuccessEntity);
  @override
  List<Object> get props => [this.basicSuccessEntity];
}

class GetHomeLoaded extends HomeState {
  final HomeEntity homeEntity;

  GetHomeLoaded(this.homeEntity);

  @override
  List<Object> get props => [homeEntity];
}

class GETHomeMedicineDetailsLoaded extends HomeState {
  final HomeMedicineEntity homeMedicineEntity;

  GETHomeMedicineDetailsLoaded(this.homeMedicineEntity);

  @override
  List<Object> get props => [homeMedicineEntity];
}
