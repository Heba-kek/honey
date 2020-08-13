import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueCategoryModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueModel.dart';

abstract class RevenueRepository {
  Future<RevenueModel> getRevenues();
  Future<RevenueCategoryModel> getRevenueCategories();
  Future<BasicSuccessModel> addRevenue(Map<String, dynamic> data);
  Future<BasicSuccessModel> addRevenueCategory(Map<String, dynamic> data);
}
