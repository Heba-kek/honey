import 'dart:convert';

import 'package:honey/Infrastructure/Core/CustomException.dart';
import 'package:honey/Infrastructure/Revenue/DataSource/RevenueDataSource.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueCategoryModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RevenueLocalDataSource extends RevenueDataSource {
  final String getRevenuesKey = "getRevenues";
  final String getRevenueCategoriesKey = "getRevenueCategory";

  @override
  Future<RevenueModel> getRevenues() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(getRevenuesKey);
    print("Model $jsonString");
    if (jsonString != null) {
      return Future.value(RevenueModel.fromJson(json.decode(jsonString)));
    }
    throw (ExceptionWithMessageOnly("No Data Found"));
  }

  Future<void> cacheRevenues(RevenueModel model) async {
    var preferences = await SharedPreferences.getInstance();
    return preferences.setString(
      getRevenuesKey,
      json.encode(model.toJson()),
    );
  }

  @override
  Future<RevenueCategoryModel> getRevenueCategories() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(getRevenueCategoriesKey);
    print("Model $jsonString");
    if (jsonString != null) {
      return Future.value(
          RevenueCategoryModel.fromJson(json.decode(jsonString)));
    }
    throw (ExceptionWithMessageOnly("No Data Found"));
  }

  Future<void> cacheRevenueCategories(RevenueCategoryModel model) async {
    var preferences = await SharedPreferences.getInstance();
    return preferences.setString(
      getRevenueCategoriesKey,
      json.encode(model.toJson()),
    );
  }
}
