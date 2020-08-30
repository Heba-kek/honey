import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:honey/Domain/Home/HomeRepository.dart';
import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Core/NetworkInfo.dart';
import 'package:honey/Infrastructure/Home/DateSource/HomeDataSource.dart';
import 'package:honey/Infrastructure/Home/DateSource/HomeLocalDataSource.dart';
import 'package:honey/Infrastructure/Home/DateSource/HomeRemoteDataSource.dart';
import 'package:honey/Infrastructure/Home/Model/HomeMedicineModel.dart';
import 'package:honey/Infrastructure/Home/Model/HomeModel.dart';

class HomeRepositoryIMPL extends HomeRepository {
  final HomeDataSource remoteDataSource = HomeRemoteDataSource();
  final HomeLocalDataSource localDataSource = HomeLocalDataSource();
  final NetworkInfo networkInfo = NetworkInfoImpl(DataConnectionChecker());
  @override
  Future<HomeModel> getHome() async {
    if (await networkInfo.isConnected) {
      print("fetch remote Home data");
      HomeModel homeModel = await remoteDataSource.getHome();
      if (homeModel.code == "1") {
        print("Saving data to local");

        localDataSource.cacheHome(homeModel);
      }

      return homeModel;
    } else {
      print("fetch local home data");
      return localDataSource.getHome();
    }
  }

  Future<BasicSuccessModel> getMedicineStatus(
      Map<String, dynamic> bodyData) async {
    if (await networkInfo.isConnected) {
      print("fetch remote getMedicineStatus data");
      BasicSuccessModel model =
          await remoteDataSource.getMedicineStatus(bodyData);

      return model;
    } else {
      print("fetch local getMedicineStatus data");
      return localDataSource.getMedicineStatus(bodyData);
    }
  }

  Future<HomeMedicineModel> getMedicineDetails(
      Map<String, dynamic> bodyData) async {
    if (await networkInfo.isConnected) {
      print("fetch remote getMedicineDetails data");
      HomeMedicineModel model =
          await remoteDataSource.getMedicineDetails(bodyData);

      return model;
    } else {
      print("fetch local getMedicingetMedicineDetailseStatus data");
      return localDataSource.getMedicineDetails(bodyData);
    }
  }
}
