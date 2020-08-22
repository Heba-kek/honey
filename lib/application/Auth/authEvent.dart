import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class AuthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SigninEvent extends AuthEvent {
  final String email;
  final String password;

  SigninEvent(
    this.email,
    this.password,
  );

  @override
  List<Object> get props => [email, password];

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };

  }
}
