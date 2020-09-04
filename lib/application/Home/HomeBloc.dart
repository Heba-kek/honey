import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Domain/Home/HomeRepository.dart';
import 'package:honey/application/Home/bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;
  HomeBloc(this.homeRepository);

  @override
  HomeState get initialState => Empty();

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is GetHomeEvent) {
      yield Loading();

      try {
        final result = await homeRepository.getHome();
        yield GetHomeLoaded(result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is GeMedicineStatus) {
      yield Loading();

      try {
        final result = await homeRepository.getMedicineStatus(event.toMap());
        yield Loaded(result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is GETHomeMedicineDetails) {
      yield Loading();

      try {
        final result = await homeRepository.getMedicineDetails(event.toMap());
        yield GETHomeMedicineDetailsLoaded(result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is GetHomePaymentDataEvent) {
      yield Loading();

      try {
        final result = await homeRepository.getPaymentData(event.toMap());
        yield GETHomePaymentDataLoaded(result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is GetRevenueCategoryForAddEvent) {
      yield Loading();

      try {
        final result = await homeRepository.getRevenueCategoryForAdd();
        yield GetCategoryForAddloaded(result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is GetExpensesCategoryForAddEvent) {
      yield Loading();

      try {
        final result = await homeRepository.getExpensesCategoryForAdd();
        yield GetCategoryForAddloaded(result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is GETRevenueDebtEvent) {
      yield Loading();

      try {
        final result = await homeRepository.getRevenueDebt();
        yield GETDebtloaded(result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is GetExpensesLoanEvent) {
      yield Loading();

      try {
        final result = await homeRepository.getRevenueDebt();
        yield GETDebtloaded(result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is AddPaymentEvent) {
      yield Loading();

      try {
        final result = await homeRepository.addPayment(event.toMap());
        yield Loaded(result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is AddLoanPaymentEvent) {
      yield Loading();
      try {
        final result = await homeRepository.addLoanPayment(event.toMap());
        yield Loaded(result);
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
