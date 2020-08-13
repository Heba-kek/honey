import 'dart:convert';

import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Core/CustomException.dart';
import 'package:honey/Infrastructure/Revenue/DataSource/RevenueDataSource.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueCategoryModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RevenueLocalDataSource extends RevenueDataSource {
  final String getRevenuesKey = "getRevenues";
  final String getRevenueCategoriesKey = "getRevenueCategory";
  final String addRevenueKey = "addRevenueKey";
  final String addRevenueCategoryKey = "addRevenueCategoryKey";

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

  @override
  Future<BasicSuccessModel> addRevenue(Map<String, dynamic> data) async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(addRevenueKey);
    List<Map<String, dynamic>> tempData = [data];
    if (jsonString != null) {
      tempData += json.decode(jsonString) as List<Map<String, dynamic>>;
    }

    preferences.setString(
      addRevenueKey,
      json.encode(tempData),
    );

    return BasicSuccessModel(
        code: -1, msg: "There is no internet connection, Cached Successfully");
  }

  Future<List<Map<String, dynamic>>> getCachedAddRevenue() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(addRevenueKey);

    return Future.value(jsonString as List<Map<String, dynamic>>);
  }

  @override
  Future<BasicSuccessModel> addRevenueCategory(
      Map<String, dynamic> data) async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(addRevenueCategoryKey);
    List<Map<String, dynamic>> tempData = [data];
    if (jsonString != null) {
      tempData += json.decode(jsonString) as List<Map<String, dynamic>>;
    }

    preferences.setString(
      addRevenueCategoryKey,
      json.encode(tempData),
    );

    return BasicSuccessModel(
        code: -1, msg: "There is no internet connection, Cached Successfully");
  }

  Future<List<Map<String, dynamic>>> getCachedAddRevenueCategory() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(addRevenueCategoryKey);

    return Future.value(jsonString as List<Map<String, dynamic>>);
  }

  void clearCachedbyKey(String key) async {
    var preferences = await SharedPreferences.getInstance();
    preferences.setString(
      addRevenueKey,
      json.encode(null),
    );
  }
}
