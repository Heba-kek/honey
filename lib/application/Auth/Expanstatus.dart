import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:honey/domain/Auth/Entities/ExpenAntity.dart';

@immutable
abstract class ExpState extends Equatable {
  @override
  List<Object> get props => [];
}

class Empty extends ExpState {}

class Loading extends ExpState {}

class Loaded extends ExpState {
  final ExpenEntity ExpResponse;

  Loaded({this.ExpResponse});

  @override
  List<Object> get props => [];
}

class Error extends ExpState {
  final String message;
  final VoidCallback callback;

  Error(this.message, this.callback);

  @override
  List<Object> get props => [message, this.callback];
}
