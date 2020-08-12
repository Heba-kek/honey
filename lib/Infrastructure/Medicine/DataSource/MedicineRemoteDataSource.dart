import 'package:honey/Infrastructure/Core/APINames.dart';
import 'package:honey/Infrastructure/Core/Networking.dart';
import 'package:honey/Infrastructure/Medicine/DataSource/MedicineDataSource.dart';
import 'package:honey/Infrastructure/Medicine/Models/AddMedicineModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/GetMedicinesModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/MedicineBySickNameModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/MedicineModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/MedicineReportModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/SickNameModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/UpdateMedicineModel.dart';

class MedicineRemoteDataSource extends MedicineDataSource {
  ApiProvider _provider = ApiProvider();
  @override
  Future<MedicineModel> medicine() async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET,
        url: APINames.medicineInstruction,
        bodyData: {});

    return MedicineModel.fromJson(response);
  }

  @override
  Future<AddMedicineModel> addMedicine(Map<String, dynamic> bodyData) async {
    final response = await _provider.fetchData(
        method: HttpMethod.POST, url: APINames.addMedicine, bodyData: {});

    return AddMedicineModel.fromJson(response);
  }

  Future<MedicineBySickNameModel> getMedicineBySickName(
      Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET,
        url: APINames.getMedicineBySickName,
        bodyData: {});

    return MedicineBySickNameModel.fromJson(response);
  }

  Future<SickNameModel> getSickName() async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET, url: APINames.getSickName, bodyData: {});

    return SickNameModel.fromJson(response);
  }

  Future<MedicineReportModel> getMedicineReport(
      Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.POST,
        url: APINames.getMedicineReport,
        bodyData: data);

    return MedicineReportModel.fromJson(response);
  }

  @override
  Future<GetMedicinesModel> getMedicines() async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET, url: APINames.getMedicines, bodyData: {});

    return GetMedicinesModel.fromJson(response);
  }

  Future<UpdateMedicineModel> updateMedicine(Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.POST,
        url: APINames.getMedicineReport,
        bodyData: data);

    return UpdateMedicineModel.fromJson(response);
  }
}
