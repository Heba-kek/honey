import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:honey/Domain/Home/Entity/HomeEentity.dart';

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

class GetHomeLoaded extends HomeState {
  final HomeEntity homeEntity;

  GetHomeLoaded(this.homeEntity);

  @override
  List<Object> get props => [];
}
