import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Domain/Revenue/RevenueRepository.dart';
import 'package:honey/Infrastructure/Revenue/Repository/RevenueRepositoryIMPL.dart';
import 'package:honey/application/Revenue/bloc.dart';

class RevenueBloc extends Bloc<RevenueEvent, RevenueState> {
  final RevenueRepository revenueRepository = RevenueRepositoryIMPL();

  @override
  RevenueState get initialState => Empty();

  @override
  Stream<RevenueState> mapEventToState(RevenueEvent event) async* {
    if (event is GetRevenueEvent) {
      yield Loading();

      try {
        final result = await revenueRepository.getRevenues();
        yield GetRevenueLoaded(revenueEntity: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is GetRevenueCategoryEvent) {
      yield Loading();

      try {
        final result = await revenueRepository.getRevenueCategories();
        yield GetRevenueCategoriesLoaded(revenueCategoryEntity: result);
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
