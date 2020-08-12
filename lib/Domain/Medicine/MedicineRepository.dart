import 'package:honey/Infrastructure/Medicine/Models/AddMedicineModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/GetMedicinesModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/MedicineBySickNameModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/MedicineModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/MedicineReportModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/SickNameModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/UpdateMedicineModel.dart';

abstract class MedicineRepository {
  Future<MedicineModel> medicine();
  Future<AddMedicineModel> addMedicine(Map<String, dynamic> data);
  Future<MedicineBySickNameModel> getMedicineBySickName(
      Map<String, dynamic> data);
  Future<SickNameModel> getSickName();
  Future<MedicineReportModel> getMedicineReport(Map<String, dynamic> data);
  Future<GetMedicinesModel> getMedicines();
  Future<UpdateMedicineModel> updateMedicine(Map<String, dynamic> data);
}
