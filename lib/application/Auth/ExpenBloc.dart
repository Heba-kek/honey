import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Domain/Auth/ExpenReposi.dart';
import 'package:honey/application/Auth/blocExp.dart';

class ExpBloc extends Bloc<ExpEvent, ExpState> {
  ExpRepository _exRepository;

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
    } else if (event is ExpensesReportEvent) {
      yield Loading();

      try {
        final result = await _exRepository.expensesReport(event.toMap());
        yield ExpensesReportLoaded(result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is ExpensesCategoryReportEvent) {
      yield Loading();

      try {
        final result =
            await _exRepository.expensesCategoryReport(event.toMap());
        yield ExpensesCategoryReportLoaded(
            expensesCategoryReportEntity: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is ExpensesSubCategoryReportEvent) {
      yield Loading();

      try {
        final result =
            await _exRepository.expensesSubCategoryReport(event.toMap());
        yield ExpensesSubCategoryReportLoaded(
            expensesSubCategoryReportEntity: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is ExpensesCategoryReportWithoutSubEvent) {
      yield Loading();

      try {
        final result =
            await _exRepository.expensesCategoryWithoutSubReport(event.toMap());
        yield ExpensesCategoryReportWithoutSubLoaded(
            expensesReportWithoutSubEntity: result);
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
