import 'dart:html';

import 'package:honey/Infrastructure/Medicine/Models/AddMedicineModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/MedicineBySickNameModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/MedicineModel.dart';

abstract class MedicineDataSource {
  Future<MedicineModel> medicine();
  Future<AddMedicineModel> addMedicine(Map<String, dynamic> bodyData);
  Future<MedicineBySickNameModel> getMedicineBySickName(
      Map<String, dynamic> data);
}
