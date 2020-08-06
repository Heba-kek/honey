import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/application/Auth/blocExp.dart';

import 'package:honey/domain/Auth/ExpenReposi.dart';

class ExpBloc extends Bloc<ExpEvent, ExpState> {
  expRepository _exRepository;

  ExpBloc(this._exRepository);

  @override
  ExpState get initialState => Empty();

  @override
  Stream<ExpState> mapEventToState(ExpEvent event) async* {
    if (event is ExpenEvent) {
      yield Loading();

      try {
        final result = await _exRepository.getCateExpen(event.toMap());
        yield Loaded(ExpResponse: result);
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
