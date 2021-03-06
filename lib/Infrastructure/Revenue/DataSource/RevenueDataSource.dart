import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/IconsModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueCategoryModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueCategoryReportModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueCategoryReportWithoutSubModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueReportModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueSubCategoryReportModel.dart';

abstract class RevenueDataSource {
  Future<RevenueModel> getRevenues();
  Future<RevenueCategoryModel> getRevenueCategories();
  Future<BasicSuccessModel> addRevenue(Map<String, dynamic> data);
  Future<BasicSuccessModel> addRevenueCategory(Map<String, dynamic> data);
  Future<BasicSuccessModel> editCategory(Map<String, dynamic> data);
  Future<BasicSuccessModel> deleteCategory(Map<String, dynamic> data);
  Future<BasicSuccessModel> addSubCategory(Map<String, dynamic> data);
  Future<IconsModel> getIcons();
  Future<BasicSuccessModel> editSubCategory(Map<String, dynamic> data);
  Future<BasicSuccessModel> deleteSubcCategory(Map<String, dynamic> data);
  Future<RevenueReportModel> revenueReport(Map<String, dynamic> data);
  Future<RevenueCategoryReportModel> revenueCategoryReport(
      Map<String, dynamic> data);
  Future<RevenueSubCategoryReportModel> revenueSubCategoryReport(
      Map<String, dynamic> data);
  Future<RevenueCategoryReportWithoutSubModel> revenueCategoryReportWithoutSub(
      Map<String, dynamic> data);
}
