import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:honey/Domain/Home/HomeRepository.dart';
import 'package:honey/Infrastructure/Core/NetworkInfo.dart';
import 'package:honey/Infrastructure/Home/DateSource/HomeDataSource.dart';
import 'package:honey/Infrastructure/Home/DateSource/HomeLocalDataSource.dart';
import 'package:honey/Infrastructure/Home/DateSource/HomeRemoteDataSource.dart';
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
}
