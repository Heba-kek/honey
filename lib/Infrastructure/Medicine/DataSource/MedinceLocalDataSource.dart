import 'dart:convert';

import 'package:honey/Infrastructure/Core/CustomException.dart';
import 'package:honey/Infrastructure/Core/LocalData.dart';
import 'package:honey/Infrastructure/Medicine/DataSource/MedicineDataSource.dart';
import 'package:honey/Infrastructure/Medicine/Models/MedicineModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MedicineLocalDataSource extends MedicineDataSource {
  final medicineLocalKey = "Medicine";
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
}
