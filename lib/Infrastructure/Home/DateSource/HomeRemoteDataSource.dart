import 'package:honey/Infrastructure/Core/APINames.dart';
import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Core/Networking.dart';
import 'package:honey/Infrastructure/Core/genericResponse.dart';
import 'package:honey/Infrastructure/Home/DateSource/HomeDataSource.dart';
import 'package:honey/Infrastructure/Home/Model/HomeMedicineModel.dart';
import 'package:honey/Infrastructure/Home/Model/HomeModel.dart';

class HomeRemoteDataSource extends HomeDataSource {
  ApiProvider _provider = ApiProvider();

  @override
  Future<HomeModel> getHome() async {
    final response = await _provider
        .fetchData(method: HttpMethod.GET, url: APINames.getHome, bodyData: {});

    return HomeModel.fromJson(response);
  }

  Future<BasicSuccessModel> getMedicineStatus(
      Map<String, dynamic> bodyData) async {
    final reponse = await _provider.fetchData(
        method: HttpMethod.POST,
        url: APINames.medicineStatus,
        bodyData: bodyData);
    return BasicSuccessModel.fromJson(reponse);
  }

  Future<HomeMedicineModel> getMedicineDetails(
      Map<String, dynamic> bodyData) async {
    final reponse = await _provider.fetchData(
        method: HttpMethod.GET,
        url: APINames.medicineDetails,
        bodyData: bodyData);
    return HomeMedicineModel.fromJson(reponse);
  }
}
