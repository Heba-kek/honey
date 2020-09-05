import 'dart:convert';

import 'package:honey/Infrastructure/Banks/DataSource/BanksDataSource.dart';
import 'package:honey/Infrastructure/Banks/Models/BankAccountReportModel.dart';
import 'package:honey/Infrastructure/Banks/Models/BanksModel.dart';
import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Core/CustomException.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BanksLocalDataSource extends BanksDataSource {
  final addAccountKey = "addAccountKey";
  final getBanksAccountKey = "getBanksAccountKey";
  final addCommissionKey = "addCommissionKey";
  final addDepositKey = "addDepositKey";
  final accountReportKey = "accountReportKey";
  void clearCachedbyKey(String key) async {
    var preferences = await SharedPreferences.getInstance();
    preferences.setString(
      key,
      json.encode(null),
    );
  }

  Future<BasicSuccessModel> addAccount(Map<String, dynamic> bodyData) async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(addAccountKey);
    List<Map<String, dynamic>> data = [bodyData];

    if (jsonString != null) {
      data += json.decode(jsonString) as List<Map<String, dynamic>>;
    }

    preferences.setString(
      addAccountKey,
      json.encode(data),
    );

    return BasicSuccessModel(
        code: -1, msg: "There is no internet connection, Cached Successfully");
  }

  Future<List<Map<String, dynamic>>> getCachedAddAccount() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(addAccountKey);

    return Future.value(jsonString as List<Map<String, dynamic>>);
  }

  Future<BanksModel> getBanksAccount() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(getBanksAccountKey);
    print("Model $jsonString");
    if (jsonString != null) {
      return Future.value(BanksModel.fromJson(json.decode(jsonString)));
    }
    throw (ExceptionWithMessageOnly("No Data Found"));
  }

  Future<void> cacheBanksAccount(BanksModel model) async {
    var preferences = await SharedPreferences.getInstance();
    return preferences.setString(
      getBanksAccountKey,
      json.encode(model.toJson()),
    );
  }

  Future<BasicSuccessModel> addCommission(Map<String, dynamic> bodyData) async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(addCommissionKey);
    List<Map<String, dynamic>> data = [bodyData];

    if (jsonString != null) {
      data += json.decode(jsonString) as List<Map<String, dynamic>>;
    }

    preferences.setString(
      addCommissionKey,
      json.encode(data),
    );

    return BasicSuccessModel(
        code: -1, msg: "There is no internet connection, Cached Successfully");
  }

  Future<List<Map<String, dynamic>>> getCachedAddCommission() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(addCommissionKey);

    return Future.value(jsonString as List<Map<String, dynamic>>);
  }

  Future<BasicSuccessModel> addDeposit(Map<String, dynamic> bodyData) async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(addDepositKey);
    List<Map<String, dynamic>> data = [bodyData];

    if (jsonString != null) {
      data += json.decode(jsonString) as List<Map<String, dynamic>>;
    }

    preferences.setString(
      addDepositKey,
      json.encode(data),
    );

    return BasicSuccessModel(
        code: -1, msg: "There is no internet connection, Cached Successfully");
  }

  Future<List<Map<String, dynamic>>> getCachedAddDeposit() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(addDepositKey);

    return Future.value(jsonString as List<Map<String, dynamic>>);
  }

  Future<BankAccountReportModel> getAccountReport() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(accountReportKey);
    print("Model $jsonString");
    if (jsonString != null) {
      return Future.value(
          BankAccountReportModel.fromJson(json.decode(jsonString)));
    }
    throw (ExceptionWithMessageOnly("No Data Found"));
  }

  Future<void> cacheAccountReport(BankAccountReportModel model) async {
    var preferences = await SharedPreferences.getInstance();
    return preferences.setString(
      accountReportKey,
      json.encode(model.toJson()),
    );
  }

  Future<BasicSuccessModel> deleteAccount(Map<String, dynamic> bodyData) {
    throw (ExceptionWithMessageOnly(
        "There is no internet connection, please check and try again later"));
  }

  Future<BasicSuccessModel> updateAccount(Map<String, dynamic> bodyData) {
    throw (ExceptionWithMessageOnly(
        "There is no internet connection, please check and try again later"));
  }
}
