import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/IconsModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueCategoryModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueModel.dart';

abstract class RevenueDataSource {
  Future<RevenueModel> getRevenues();
  Future<RevenueCategoryModel> getRevenueCategories();
  Future<BasicSuccessModel> addRevenue(Map<String, dynamic> data);
  Future<BasicSuccessModel> addRevenueCategory(Map<String, dynamic> data);
  Future<BasicSuccessModel> editCategory(Map<String, dynamic> data);
  Future<BasicSuccessModel> deleteCategory(Map<String, dynamic> data);
  Future<BasicSuccessModel> addSubCategory(Map<String, dynamic> data);
  Future<IconsModel> getIcons();
}
