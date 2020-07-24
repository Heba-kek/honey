import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class AuthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SigninEvent extends AuthEvent {
  final String userName;
  final String password;

  SigninEvent(
    this.userName,
    this.password,
  );

  @override
  List<Object> get props => [userName, password];

  Map<String, dynamic> toMap() {
    return {
      'userName': userName,
      'password': password,
    };
  }
}
