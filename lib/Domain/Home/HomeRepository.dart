import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Home/Model/HomeMedicineModel.dart';
import 'package:honey/Infrastructure/Home/Model/HomeModel.dart';

abstract class HomeRepository {
  Future<HomeModel> getHome();
  Future<BasicSuccessModel> getMedicineStatus(Map<String, dynamic> bodyData);
  Future<HomeMedicineModel> getMedicineDetails(Map<String, dynamic> bodyData);
}
