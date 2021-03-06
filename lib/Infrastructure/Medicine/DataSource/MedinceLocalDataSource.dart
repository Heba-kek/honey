import 'dart:convert';

import 'package:honey/Infrastructure/Core/CustomException.dart';
import 'package:honey/Infrastructure/Medicine/DataSource/MedicineDataSource.dart';
import 'package:honey/Infrastructure/Medicine/Models/AddMedicineModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/GetMedicinesModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/MedicineBySickNameModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/MedicineModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/MedicineReportModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/SickNameModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/UpdateMedicineModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MedicineLocalDataSource extends MedicineDataSource {
  final medicineLocalKey = "Medicine";
  final addMedicineLocalKey = "AddMedicine";
  final sickNameLocalKey = "SickName";
  @override
  Future<MedicineModel> medicine() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(medicineLocalKey);
    print("Model $jsonString");
    if (jsonString != null) {
      return Future.value(MedicineModel.fromJson(json.decode(jsonString)));
    }
    throw (ExceptionWithMessageOnly("No Data Found"));
  }

  Future<void> cacheMedicine(MedicineModel model) async {
    var preferences = await SharedPreferences.getInstance();
    return preferences.setString(
      medicineLocalKey,
      json.encode(model.toJson()),
    );
  }

  @override
  Future<AddMedicineModel> addMedicine(Map<String, dynamic> bodyData) async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(addMedicineLocalKey);
    List<Map<String, dynamic>> data = [bodyData];
    if (jsonString != null) {
      data += json.decode(jsonString) as List<Map<String, dynamic>>;
    }

    preferences.setString(
      addMedicineLocalKey,
      json.encode(data),
    );

    return AddMedicineModel(
        appointement: null,
        code: -1,
        isNeed: null,
        msg: "There is no internet connection, Cached Successfully");
  }

  Future<List<Map<String, dynamic>>> getCachedAddMedicine() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(addMedicineLocalKey);

    return Future.value(jsonString as List<Map<String, dynamic>>);
  }

  Future<MedicineBySickNameModel> getMedicineBySickName(
      Map<String, dynamic> data) async {
    throw ("needs to be checked with ola");
  }

  @override
  Future<SickNameModel> getSickName() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(sickNameLocalKey);
    print("Model $jsonString");
    if (jsonString != null) {
      return Future.value(SickNameModel.fromJson(json.decode(jsonString)));
    }
    throw (ExceptionWithMessageOnly("No Data Found"));
  }

  Future<void> cacheSickName(SickNameModel model) async {
    var preferences = await SharedPreferences.getInstance();
    return preferences.setString(
      sickNameLocalKey,
      json.encode(model.toJson()),
    );
  }

  Future<MedicineReportModel> getMedicineReport(
      Map<String, dynamic> data) async {
    throw ("No Cache Needed");
  }

  @override
  Future<GetMedicinesModel> getMedicines() {
    throw ("No Cache Needed");
  }

  @override
  Future<UpdateMedicineModel> updateMedicine(Map<String, dynamic> data) async {
    throw ("No Cache Needed");
  }
}
