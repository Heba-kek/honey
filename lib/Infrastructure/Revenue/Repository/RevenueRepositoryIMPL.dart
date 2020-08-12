import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:honey/Domain/Revenue/RevenueRepository.dart';
import 'package:honey/Infrastructure/Core/NetworkInfo.dart';
import 'package:honey/Infrastructure/Revenue/DataSource/RevenueLocalDataSource.dart';
import 'package:honey/Infrastructure/Revenue/DataSource/RevenueRemoteDataSource.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueCategoryModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueModel.dart';

class RevenueRepositoryIMPL extends RevenueRepository {
  final RevenueRemoteDataSource remoteDataSource = RevenueRemoteDataSource();
  final RevenueLocalDataSource localDataSource = RevenueLocalDataSource();
  final NetworkInfo networkInfo = NetworkInfoImpl(DataConnectionChecker());
  @override
  Future<RevenueModel> getRevenues() async {
    if (await networkInfo.isConnected) {
      RevenueModel model = await remoteDataSource.getRevenues();

      if (model.code == "1") {
        localDataSource.cacheRevenues(model);
      }

      return model;
    } else {
      return localDataSource.getRevenues();
    }
  }

  @override
  Future<RevenueCategoryModel> getRevenueCategories() async {
    if (await networkInfo.isConnected) {
      RevenueCategoryModel model =
          await remoteDataSource.getRevenueCategories();
      if (model.code == "1") {
        localDataSource.cacheRevenueCategories(model);
      }
      return model;
    } else {
      return localDataSource.getRevenueCategories();
    }
  }
}
