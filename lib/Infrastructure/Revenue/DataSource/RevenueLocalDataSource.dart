import 'dart:convert';

import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Core/CustomException.dart';
import 'package:honey/Infrastructure/Revenue/DataSource/RevenueDataSource.dart';
import 'package:honey/Infrastructure/Revenue/Models/IconsModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueCategoryModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueCategoryReportModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueReportModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueSubCategoryReportModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RevenueLocalDataSource extends RevenueDataSource {
  final String getRevenuesKey = "getRevenues";
  final String getRevenueCategoriesKey = "getRevenueCategory";
  final String addRevenueKey = "addRevenueKey";
  final String addRevenueCategoryKey = "addRevenueCategoryKey";
  final String addSubCategoryKey = "addSubCategoryKey";
  final String getIconsKey = "getIconsKey";
  final String revenueReportKey = "revenueReportKey";
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

  Future<BasicSuccessModel> editCategory(Map<String, dynamic> data) async {
    throw ExceptionWithMessageOnly("you cannot edit while you are offline");
  }

  Future<BasicSuccessModel> deleteCategory(Map<String, dynamic> data) async {
    throw ExceptionWithMessageOnly("you cannot delete while you are offline");
  }

  Future<BasicSuccessModel> addSubCategory(Map<String, dynamic> data) async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(addSubCategoryKey);
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

  Future<List<Map<String, dynamic>>> getCachedAddSubCategory() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(addSubCategoryKey);

    return Future.value(jsonString as List<Map<String, dynamic>>);
  }

  Future<IconsModel> getIcons() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(getIconsKey);
    print("Model $jsonString");
    if (jsonString != null) {
      return Future.value(IconsModel.fromJson(json.decode(jsonString)));
    }
    throw (ExceptionWithMessageOnly("No Data Found"));
  }

  Future<void> cacheIcons(IconsModel model) async {
    var preferences = await SharedPreferences.getInstance();
    return preferences.setString(
      getIconsKey,
      json.encode(model.toJson()),
    );
  }

  Future<BasicSuccessModel> editSubCategory(Map<String, dynamic> data) {
    throw (ExceptionWithMessageOnly("cannot edit while you are offline"));
  }

  Future<BasicSuccessModel> deleteSubcCategory(Map<String, dynamic> data) {
    throw (ExceptionWithMessageOnly("Cannot delete while you are offline"));
  }

  Future<void> cacheRevenueReprt(RevenueReportModel model) async {
    var preferences = await SharedPreferences.getInstance();
    return preferences.setString(
      revenueReportKey,
      json.encode(model.toJson()),
    );
  }

  Future<RevenueReportModel> revenueReport(Map<String, dynamic> data) async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(revenueReportKey);
    print("Model $jsonString");
    if (jsonString != null) {
      return Future.value(RevenueReportModel.fromJson(json.decode(jsonString)));
    }
    throw (ExceptionWithMessageOnly("No Data Found"));
  }

  Future<RevenueCategoryReportModel> revenueCategoryReport(
      Map<String, dynamic> data) {
    throw ("Cannot be cached depends on changed data from server");
  }

  Future<RevenueSubCategoryReportModel> revenueSubCategoryReport(
      Map<String, dynamic> data) {
    throw (ExceptionWithMessageOnly(
        "Cannot be cached, depends on changed data from server"));
  }
}
