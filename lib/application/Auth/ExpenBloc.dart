import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'file:///C:/Users/heba/Desktop/bee/honey/lib/application/Auth/Expanstatus.dart';
import 'file:///C:/Users/heba/Desktop/bee/honey/lib/application/Auth/ExpenEvent.dart';
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
