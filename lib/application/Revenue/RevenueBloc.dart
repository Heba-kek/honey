import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Domain/Revenue/RevenueRepository.dart';
import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
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
    } else if (event is AddRevenueEvent) {
      yield Loading();

      try {
        final result = await revenueRepository.addRevenue(event.toMap());
        yield BasicLoaded(basicSuccessEntity: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is AddRevenueCategoryEvent) {
      yield Loading();

      try {
        final result =
            await revenueRepository.addRevenueCategory(event.toMap());
        yield BasicLoaded(basicSuccessEntity: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is EditCategoryEvent) {
      yield Loading();

      try {
        final result = await revenueRepository.editCategory(event.toMap());
        yield BasicLoaded(basicSuccessEntity: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is AddSubCategoryEvent) {
      yield Loading();

      try {
        final result = await revenueRepository.addSubCategory(event.toMap());
        yield BasicLoaded(basicSuccessEntity: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is GetIconsEvent) {
      yield Loading();

      try {
        final result = await revenueRepository.getIcons();
        yield GEtIconsLoaded(iconsModel: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is EditSubCategorEvent) {
      yield Loading();

      try {
        final result = await revenueRepository.editSubCategory(event.toMap());
        yield BasicLoaded(basicSuccessEntity: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is DeleteSubCategoryEvent) {
      yield Loading();

      try {
        final result =
            await revenueRepository.deleteSubcCategory(event.toMap());
        yield BasicLoaded(basicSuccessEntity: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is RevenueReportEvent) {
      yield Loading();

      try {
        final result = await revenueRepository.revenueReport(event.toMap());
        yield RevenueReportLoaded(revenueReportEntity: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is RevenueCategoryReportEvent) {
      yield Loading();

      try {
        final result =
            await revenueRepository.revenueCategoryReport(event.toMap());
        yield RevenueCategoryReportLoaded(revenueCategoryReportEntity: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is RevenueSubCategoryReportEvent) {
      yield Loading();

      try {
        final result =
            await revenueRepository.revenueSubCategoryReport(event.toMap());
        yield RevenueSubCategoryReportLoaded(
            revenueSubCategoryReportEntity: result);
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
