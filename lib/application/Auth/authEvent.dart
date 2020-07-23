import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class AuthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class Signin extends AuthEvent {
  final String userName;
  final String password;

  Signin(this.userName, this.password);

  @override
  List<Object> get props => [userName, password];
}
