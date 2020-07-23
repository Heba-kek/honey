import 'package:equatable/equatable.dart';

class Signin extends Equatable {
  //json body proprties without tojson and fromjson
  final String username;
  final String password;

  Signin(this.username, this.password);

  @override
  List<Object> get props => [this.username, this.password];
}
