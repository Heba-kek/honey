import 'dart:convert';

import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Core/CustomException.dart';
import 'package:honey/Infrastructure/Home/DateSource/HomeDataSource.dart';
import 'package:honey/Infrastructure/Home/Model/CategoryForAddModel.dart';
import 'package:honey/Infrastructure/Home/Model/DebtModel.dart';
import 'package:honey/Infrastructure/Home/Model/ExpensesLoanModel.dart';
import 'package:honey/Infrastructure/Home/Model/HomeMedicineModel.dart';
import 'package:honey/Infrastructure/Home/Model/HomeModel.dart';
import 'package:honey/Infrastructure/Home/Model/PaymentDataModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeLocalDataSource extends HomeDataSource {
  final getHomeKey = "getHomeKey";
  final getExpensesCategoryForAddKey = "getExpensesCategoryForAddKey";
  final getRevenueCategoryForAddKey = "getRevenueCategoryForAddKey";
  final getExpensesDebtKey = "getExpensesDebtKey";
  final getRevenueDebtKey = "getRevenueDebtKey";
  final getExpensesLoanKey = "getExpensesLoanKey";
  final addPaymentKey = "addPaymentKey";
  final addLoanPaymentKey = "addLoanPaymentKey";

  void clearCachedbyKey(String key) async {
    var preferences = await SharedPreferences.getInstance();
    preferences.setString(
      key,
      json.encode(null),
    );
  }

  @override
  Future<HomeModel> getHome() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(getHomeKey);
    print("Model $jsonString");
    if (jsonString != null) {
      return Future.value(HomeModel.fromJson(json.decode(jsonString)));
    }
    throw (ExceptionWithMessageOnly("No Data Found"));
  }

  Future<void> cacheHome(HomeModel model) async {
    var preferences = await SharedPreferences.getInstance();
    return preferences.setString(
      getHomeKey,
      json.encode(model.toJson()),
    );
  }

  Future<BasicSuccessModel> getMedicineStatus(Map<String, dynamic> bodyData) {
    throw (ExceptionWithMessageOnly(
        "Cannot fetch data, depends on changed data from server"));
  }

  Future<HomeMedicineModel> getMedicineDetails(Map<String, dynamic> bodyData) {
    throw (ExceptionWithMessageOnly(
        "Cannot fetch data, depends on changed data from server"));
  }

  Future<PaymentDataModel> getPaymentData(Map<String, dynamic> bodyData) {
    throw (ExceptionWithMessageOnly(
        "Cannot fetch data, depends on changed data from server"));
  }

  Future<CategoryForAddModel> getExpensesCategoryForAdd() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(getExpensesCategoryForAddKey);
    print("Model $jsonString");
    if (jsonString != null) {
      return Future.value(
          CategoryForAddModel.fromJson(json.decode(jsonString)));
    }
    throw (ExceptionWithMessageOnly("No Data Found"));
  }

  Future<void> cacheExpensesCategoryForAdd(CategoryForAddModel model) async {
    var preferences = await SharedPreferences.getInstance();
    return preferences.setString(
      getExpensesCategoryForAddKey,
      json.encode(model.toJson()),
    );
  }

  Future<CategoryForAddModel> getRevenueCategoryForAdd() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(getRevenueCategoryForAddKey);
    print("Model $jsonString");
    if (jsonString != null) {
      return Future.value(
          CategoryForAddModel.fromJson(json.decode(jsonString)));
    }
    throw (ExceptionWithMessageOnly("No Data Found"));
  }

  Future<void> cacheRevenueCategoryForAdd(CategoryForAddModel model) async {
    var preferences = await SharedPreferences.getInstance();
    return preferences.setString(
      getRevenueCategoryForAddKey,
      json.encode(model.toJson()),
    );
  }

  Future<DebtModel> getExpensesDebt() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(getExpensesDebtKey);
    print("Model $jsonString");
    if (jsonString != null) {
      return Future.value(DebtModel.fromJson(json.decode(jsonString)));
    }
    throw (ExceptionWithMessageOnly("No Data Found"));
  }

  Future<void> cacheExpensesDebt(DebtModel model) async {
    var preferences = await SharedPreferences.getInstance();
    return preferences.setString(
      getExpensesDebtKey,
      json.encode(model.toJson()),
    );
  }

  Future<DebtModel> getRevenueDebt() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(getRevenueDebtKey);
    print("Model $jsonString");
    if (jsonString != null) {
      return Future.value(DebtModel.fromJson(json.decode(jsonString)));
    }
    throw (ExceptionWithMessageOnly("No Data Found"));
  }

  Future<void> cacheRevenueDebt(DebtModel model) async {
    var preferences = await SharedPreferences.getInstance();
    return preferences.setString(
      getRevenueDebtKey,
      json.encode(model.toJson()),
    );
  }

  Future<ExpensesLoanModel> getExpensesLoan() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(getExpensesLoanKey);
    print("Model $jsonString");
    if (jsonString != null) {
      return Future.value(ExpensesLoanModel.fromJson(json.decode(jsonString)));
    }
    throw (ExceptionWithMessageOnly("No Data Found"));
  }

  Future<void> cacheExpensesLoan(ExpensesLoanModel model) async {
    var preferences = await SharedPreferences.getInstance();
    return preferences.setString(
      getExpensesLoanKey,
      json.encode(model.toJson()),
    );
  }

  @override
  Future<BasicSuccessModel> addPayment(Map<String, dynamic> bodyData) async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(addPaymentKey);
    List<Map<String, dynamic>> data = [bodyData];
    if (jsonString != null) {
      data += json.decode(jsonString) as List<Map<String, dynamic>>;
    }

    preferences.setString(
      addPaymentKey,
      json.encode(data),
    );

    return BasicSuccessModel(
        code: -1, msg: "There is no internet connection, Cached Successfully");
  }

  Future<List<Map<String, dynamic>>> getCachedAddPayment() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(addPaymentKey);

    return Future.value(jsonString as List<Map<String, dynamic>>);
  }

  @override
  Future<BasicSuccessModel> addLoanPayment(
      Map<String, dynamic> bodyData) async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(addLoanPaymentKey);
    List<Map<String, dynamic>> data = [bodyData];
    if (jsonString != null) {
      data += json.decode(jsonString) as List<Map<String, dynamic>>;
    }

    preferences.setString(
      addLoanPaymentKey,
      json.encode(data),
    );

    return BasicSuccessModel(
        code: -1, msg: "There is no internet connection, Cached Successfully");
  }

  Future<List<Map<String, dynamic>>> getCachedAddLoanPayment() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(addLoanPaymentKey);

    return Future.value(jsonString as List<Map<String, dynamic>>);
  }
}
