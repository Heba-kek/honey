import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class AuthState extends Equatable {
  @override
  List<Object> get props => [];
}

class Empty extends AuthState {}

class Loading extends AuthState {}

class Loaded extends AuthState {
  final AuthState auth;

  Loaded({@required this.auth});

  @override
  List<Object> get props => [auth];
}

class Error extends AuthState {
  final String message;

  Error({@required this.message});

  @override
  List<Object> get props => [message];
}
