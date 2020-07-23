import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/application/Auth/authEvent.dart';
import 'package:honey/application/Auth/authState.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Signin signin;

  AuthBloc(this.signin, {@required Signin concrete}) : assert(concrete != null);

  @override
  AuthState get initialState => Empty();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is Signin) {
      //call request from usecase
    } else {
      //another API
    }
  }
}
