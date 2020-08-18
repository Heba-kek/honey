import 'dart:convert';

import 'package:honey/Infrastructure/Core/CustomException.dart';
import 'package:honey/Infrastructure/Expensive/DataSources/AuthDataSource.dart';
import 'package:honey/Infrastructure/Expensive/Model/ExpenModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueCategoryReportModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueReportModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueSubCategoryReportModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ExpensesLocalDataSource extends ExpenDataSource {
  final String getExpensesListKey = "getExpenseListKey";

  @override
  Future<ExpenModel> getExpenList(Map<String, dynamic> data) async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(getExpensesListKey);
    print("Model $jsonString");
    if (jsonString != null) {
      return Future.value(ExpenModel.fromJson(json.decode(jsonString)));
    }
    throw (ExceptionWithMessageOnly("No Data Found"));
  }

  Future<void> cacheExpenses(ExpenModel model) async {
    var preferences = await SharedPreferences.getInstance();
    return preferences.setString(
      getExpensesListKey,
      json.encode(model.toJson()),
    );
  }

  Future<RevenueReportModel> expensesReport(Map<String, dynamic> data) {
    throw (ExceptionWithMessageOnly(
        "Cannot be cached, depends on data from server"));
  }

  Future<RevenueCategoryReportModel> expensesCategoryReport(
      Map<String, dynamic> data) {
    throw (ExceptionWithMessageOnly(
        "Cannot be cached, depends on data from server"));
  }

  Future<RevenueSubCategoryReportModel> expensesSubCategoryReport(
      Map<String, dynamic> data) {
    throw (ExceptionWithMessageOnly(
        "Cannot be cached, depends on data from server"));
  }
}
