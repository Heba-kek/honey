import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:honey/Domain/Revenue/RevenueRepository.dart';
import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Core/NetworkInfo.dart';
import 'package:honey/Infrastructure/Revenue/DataSource/RevenueLocalDataSource.dart';
import 'package:honey/Infrastructure/Revenue/DataSource/RevenueRemoteDataSource.dart';
import 'package:honey/Infrastructure/Revenue/Models/IconsModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueCategoryModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueModel.dart';

class RevenueRepositoryIMPL extends RevenueRepository {
  final RevenueRemoteDataSource remoteDataSource = RevenueRemoteDataSource();
  final RevenueLocalDataSource localDataSource = RevenueLocalDataSource();
  final NetworkInfo networkInfo = NetworkInfoImpl(DataConnectionChecker());

  Future<BasicSuccessModel> addRevenue(Map<String, dynamic> data) async {
    if (await networkInfo.isConnected) {
      BasicSuccessModel model = await remoteDataSource.addRevenue(data);

      return model;
    } else {
      return localDataSource.addRevenue(data);
    }
  }

  @override
  Future<RevenueModel> getRevenues() async {
    if (await networkInfo.isConnected) {
      var cachedRevenues = await localDataSource.getCachedAddRevenue();

      for (var cachedRevenue in cachedRevenues) {
        await remoteDataSource.addRevenue(cachedRevenue);
      }

      localDataSource.clearCachedbyKey(localDataSource.getRevenuesKey);

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
      var cachedCategories =
          await localDataSource.getCachedAddRevenueCategory();

      for (var cachedCategory in cachedCategories) {
        await remoteDataSource.addRevenueCategory(cachedCategory);
      }

      localDataSource.clearCachedbyKey(localDataSource.getRevenueCategoriesKey);

      //get cached sub categories and send them to server
      var cachedSubCategories = await localDataSource.getCachedAddSubCategory();

      for (var cachedsubCategory in cachedSubCategories) {
        await remoteDataSource.addSubCategory(cachedsubCategory);
      }

      localDataSource.clearCachedbyKey(localDataSource.addSubCategoryKey);

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

  Future<BasicSuccessModel> addRevenueCategory(
      Map<String, dynamic> data) async {
    if (await networkInfo.isConnected) {
      BasicSuccessModel model = await remoteDataSource.addRevenueCategory(data);

      return model;
    } else {
      return localDataSource.addRevenueCategory(data);
    }
  }

  Future<BasicSuccessModel> editCategory(Map<String, dynamic> data) async {
    if (await networkInfo.isConnected) {
      BasicSuccessModel model = await remoteDataSource.editCategory(data);

      return model;
    } else {
      return localDataSource.editCategory(data);
    }
  }

  Future<BasicSuccessModel> deleteCategory(Map<String, dynamic> data) async {
    if (await networkInfo.isConnected) {
      BasicSuccessModel model = await remoteDataSource.deleteCategory(data);

      return model;
    } else {
      return localDataSource.deleteCategory(data);
    }
  }

  Future<BasicSuccessModel> addSubCategory(Map<String, dynamic> data) async {
    if (await networkInfo.isConnected) {
      BasicSuccessModel model = await remoteDataSource.addSubCategory(data);

      return model;
    } else {
      return localDataSource.addSubCategory(data);
    }
  }

  Future<IconsModel> getIcons() async {
    if (await networkInfo.isConnected) {
      IconsModel model = await remoteDataSource.getIcons();
      localDataSource.cacheIcons(model);
      return model;
    } else {
      return localDataSource.getIcons();
    }
  }

  Future<BasicSuccessModel> editSubCategory(Map<String, dynamic> data) async {
    if (await networkInfo.isConnected) {
      BasicSuccessModel model = await remoteDataSource.editSubCategory(data);

      return model;
    } else {
      return localDataSource.editSubCategory(data);
    }
  }

  Future<BasicSuccessModel> deleteSubcCategory(
      Map<String, dynamic> data) async {
    if (await networkInfo.isConnected) {
      BasicSuccessModel model = await remoteDataSource.deleteSubcCategory(data);

      return model;
    } else {
      return localDataSource.deleteSubcCategory(data);
    }
  }
}
