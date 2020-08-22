import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:honey/domain/Auth/Entities/iconEntity.dart';

@immutable
abstract class IconState extends Equatable {
  @override
  List<Object> get props => [];
}

class EmptyI extends IconState {}

class LoadingI extends IconState {}

class LoadedI extends IconState {
  final IconEntity IconResponse;

  LoadedI({this.IconResponse});

  @override
  List<Object> get props => [];
}

class ErrorI extends IconState {
  final String message;
  final VoidCallback callback;

  ErrorI(this.message, this.callback);

  @override
  List<Object> get props => [message, this.callback];
}
