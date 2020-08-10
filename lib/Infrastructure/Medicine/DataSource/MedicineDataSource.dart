import 'dart:html';

import 'package:honey/Infrastructure/Medicine/Models/AddMedicineModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/MedicineBySickNameModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/MedicineModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/MedicineReportModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/SickNameModel.dart';

abstract class MedicineDataSource {
  Future<MedicineModel> medicine();
  Future<AddMedicineModel> addMedicine(Map<String, dynamic> bodyData);
  Future<MedicineBySickNameModel> getMedicineBySickName(
      Map<String, dynamic> data);
  Future<SickNameModel> getSickName();
  Future<MedicineReportModel> getMedicineReport(Map<String, dynamic> data);
}
