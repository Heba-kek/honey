import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/application/Auth/subExpenEvent.dart';
import 'package:honey/application/Auth/subExpenState.dart';
import 'package:honey/domain/Auth/subExpenRepository.dart';

class ExpSubBloc extends Bloc<ExpEventSub, ExpStateSub> {
  expSubRepository _exRepositorySub;

  ExpSubBloc(this._exRepositorySub) : super(null);

  @override
  ExpStateSub get _initialState => Empty();

  @override
  Stream<ExpStateSub> mapEventToState(ExpEventSub event) async* {
    if (event is ExpenEventSub) {
      yield Loading();

      try {
        final result = await _exRepositorySub.getCateExpenSub(event.toMap());
        yield Loaded(ExpResponseSub: result);
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
