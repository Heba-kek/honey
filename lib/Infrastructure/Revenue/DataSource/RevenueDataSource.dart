import 'package:honey/Domain/BasicSuccessEntity.dart';
import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueCategoryModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueModel.dart';

abstract class RevenueDataSource {
  Future<RevenueModel> getRevenues();
  Future<RevenueCategoryModel> getRevenueCategories();
  Future<BasicSuccessModel> addRevenue(Map<String, dynamic> data);
  Future<BasicSuccessModel> addRevenueCategory(Map<String, dynamic> data);
}
