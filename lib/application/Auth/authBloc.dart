import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Domain/Auth/AuthRepository.dart';
import 'package:honey/application/Auth/authEvent.dart';
import 'package:honey/application/Auth/authState.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(null);

  @override
  AuthState get initialState => Empty();

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is SigninEvent) {
      yield Loading();

      try {
        final result = await _authRepository.signin(event.toMap());
        yield Loaded(signinResponse: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    }
  }
}
