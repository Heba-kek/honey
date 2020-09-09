import 'package:honey/Infrastructure/Expensive/Model/CategoryReportWithoutSubModel.dart';
import 'package:honey/Infrastructure/Expensive/Model/ExpenModel.dart';
import 'package:honey/Infrastructure/Expensive/Model/cateModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueCategoryReportModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueReportModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueSubCategoryReportModel.dart';

abstract class ExpenDataSource {
  Future<ExpenModel> getExpenList(Map<String, dynamic> data);
  Future<RevenueReportModel> expensesReport(Map<String, dynamic> data);
  Future<RevenueCategoryReportModel> expensesCategoryReport(
      Map<String, dynamic> data);
  Future<RevenueSubCategoryReportModel> expensesSubCategoryReport(
      Map<String, dynamic> data);
  Future<ExpensesCategoryReportWithoutSub> expensesCategoryWithoutSubReport(
      Map<String, dynamic> data);
}

abstract class getIconExp {
  Future<IconsModel> getIconList(Map<String, dynamic> data);
}
