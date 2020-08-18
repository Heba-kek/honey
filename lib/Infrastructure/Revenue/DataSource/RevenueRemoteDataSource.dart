import 'package:honey/Infrastructure/Core/APINames.dart';
import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Core/Networking.dart';
import 'package:honey/Infrastructure/Revenue/DataSource/RevenueDataSource.dart';
import 'package:honey/Infrastructure/Revenue/Models/IconsModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueCategoryModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueCategoryReportModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueReportModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueSubCategoryReportModel.dart';

class RevenueRemoteDataSource extends RevenueDataSource {
  ApiProvider _provider = ApiProvider();
  @override
  Future<RevenueModel> getRevenues() async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET, url: APINames.getRevenues, bodyData: {});

    return RevenueModel.fromJson(response);
  }

  @override
  Future<RevenueCategoryModel> getRevenueCategories() async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET,
        url: APINames.getRevenueCategories,
        bodyData: {});

    return RevenueCategoryModel.fromJson(response);
  }

  @override
  Future<BasicSuccessModel> addRevenue(Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.POST, url: APINames.addRevenue, bodyData: data);

    return BasicSuccessModel.fromJson(response);
  }

  Future<BasicSuccessModel> addRevenueCategory(
      Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.POST,
        url: APINames.addRevenueCategory,
        bodyData: data);

    return BasicSuccessModel.fromJson(response);
  }

  Future<BasicSuccessModel> editCategory(Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.POST, url: APINames.editCategory, bodyData: data);

    return BasicSuccessModel.fromJson(response);
  }

  Future<BasicSuccessModel> deleteCategory(Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.POST, url: APINames.deleteCategory, bodyData: data);

    return BasicSuccessModel.fromJson(response);
  }

  Future<BasicSuccessModel> addSubCategory(Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.POST, url: APINames.addSubCateogry, bodyData: data);

    return BasicSuccessModel.fromJson(response);
  }

  Future<IconsModel> getIcons() async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET, url: APINames.getICons, bodyData: {});

    return IconsModel.fromJson(response);
  }

  Future<BasicSuccessModel> editSubCategory(Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.POST, url: APINames.editSubCategory, bodyData: data);

    return BasicSuccessModel.fromJson(response);
  }

  Future<BasicSuccessModel> deleteSubcCategory(
      Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.POST,
        url: APINames.deleteSubCategory,
        bodyData: data);

    return BasicSuccessModel.fromJson(response);
  }

  Future<RevenueReportModel> revenueReport(Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET, url: APINames.revenueReport, bodyData: data);

    return RevenueReportModel.fromJson(response);
  }

  Future<RevenueCategoryReportModel> revenueCategoryReport(
      Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET,
        url: APINames.revenueCategoryReport,
        bodyData: data);

    return RevenueCategoryReportModel.fromJson(response);
  }

  Future<RevenueSubCategoryReportModel> revenueSubCategoryReport(
      Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET,
        url: APINames.revenueSubCategoryReport,
        bodyData: data);

    return RevenueSubCategoryReportModel.fromJson(response);
  }
}
