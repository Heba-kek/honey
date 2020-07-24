import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:honey/Domain/Auth/Entities/SigninEntity.dart';

@immutable
abstract class AuthState extends Equatable {
  @override
  List<Object> get props => [];
}

class Empty extends AuthState {}

class Loading extends AuthState {}

class Loaded extends AuthState {
  final SigninEntity signinResponse;

  Loaded({this.signinResponse});

  @override
  List<Object> get props => [];
}

class Error extends AuthState {
  final String message;
  final VoidCallback callback;

  Error(this.message, this.callback);

  @override
  List<Object> get props => [message, this.callback];
}
