//call functions from server
import 'package:honey/Infrastructure/Core/APINames.dart';
import 'package:honey/Infrastructure/Core/Networking.dart';
import 'package:honey/Infrastructure/Expensive/DataSources/AuthDataSource.dart';
import 'package:honey/Infrastructure/Expensive/Model/CategoryReportWithoutSubModel.dart';

import 'package:honey/Infrastructure/Expensive/Model/ExpenModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueCategoryReportModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueReportModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueSubCategoryReportModel.dart';
import 'package:honey/Infrastructure/Expensive/Model/cateModel.dart';
import 'package:honey/Infrastructure/Expensive/Model/subExpenModel.dart';

class ExpenRemoteDataSource implements ExpenDataSource {
  ApiProvider _provider = ApiProvider();

  @override
  Future<ExpenModel> getExpenList(Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET, url: APINames.getExpenListCate, bodyData: {});
    print(response);
    return ExpenModel.fromJson(response);
  }

  Future<RevenueReportModel> expensesReport(Map<String, dynamic> data) async {
    final response = await _provider.fetchDataReportMainEx(
        method: HttpMethod.GET, url: APINames.expensesReport, bodyData: data);

    return RevenueReportModel.fromJson(response);
  }

  Future<RevenueCategoryReportModel> expensesCategoryReport(
      Map<String, dynamic> data) async {
    final response = await _provider.fetchDataReportMain(
        method: HttpMethod.GET,
        url: APINames.expensesCategoryReport,
        bodyData: data);

    return RevenueCategoryReportModel.fromJson(response);
  }

  Future<RevenueSubCategoryReportModel> expensesSubCategoryReport(
      Map<String, dynamic> data) async {
    final response = await _provider.fetchDataReportSub(
        method: HttpMethod.GET,
        url: APINames.expensesSubCategoryReport,
        bodyData: data);

    return RevenueSubCategoryReportModel.fromJson(response);
  }

  @override
  Future<IconsModel> getIconExp(Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET, url: APINames.getIcon, bodyData: data);

    return IconsModel.fromJson(response);
  }

  @override
  Future<ExpenSubModel> getSubExp(
      Map<String, dynamic> data, String catId) async {
    final response = await _provider.fetchDataSub(
        method: HttpMethod.GET,
        url: APINames.getSubExp,
        bodyData: data,
        catId: catId);

    return ExpenSubModel.fromJson(response);
  }

  Future<ExpensesCategoryReportWithoutSub> expensesCategoryWithoutSubReport(
      Map<String, dynamic> data) async {
    final response = await _provider.fetchDataReportSub(
        method: HttpMethod.GET,
        url: APINames.expensesCategoryReportWithoutSub,
        bodyData: data);

    return ExpensesCategoryReportWithoutSub.fromJson(response);
  }
}
