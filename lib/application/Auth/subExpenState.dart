import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:honey/domain/Auth/Entities/subExpenEntity.dart';

@immutable
abstract class ExpStateSub extends Equatable {
  @override
  List<Object> get props => [];
}

class Empty extends ExpStateSub {}

class Loading extends ExpStateSub {}

class Loaded extends ExpStateSub {
  final ExpenEntitySub ExpResponseSub;

  Loaded({this.ExpResponseSub});

  @override
  List<Object> get props => [];
}

class Error extends ExpStateSub {
  final String message;
  final VoidCallback callback;

  Error(this.message, this.callback);

  @override
  List<Object> get props => [message, this.callback];
}
