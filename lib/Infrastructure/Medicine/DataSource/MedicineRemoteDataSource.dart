import 'dart:html';

import 'package:honey/Infrastructure/Core/APINames.dart';
import 'package:honey/Infrastructure/Core/Networking.dart';
import 'package:honey/Infrastructure/Medicine/DataSource/MedicineDataSource.dart';
import 'package:honey/Infrastructure/Medicine/Models/AddMedicineModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/MedicineBySickNameModel.dart';
import 'package:honey/Infrastructure/Medicine/Models/MedicineModel.dart';

class MedicineRemoteDataSource extends MedicineDataSource {
  ApiProvider _provider = ApiProvider();
  @override
  Future<MedicineModel> medicine() async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET, url: APINames.medicine, bodyData: {});

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
}
