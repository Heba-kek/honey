import 'package:honey/Domain/Auth/ExpenReposi.dart';
import 'package:honey/Infrastructure/Core/CustomException.dart';
import 'package:honey/Infrastructure/Core/NetworkInfo.dart';
import 'package:honey/Infrastructure/Expensive/DataSources/AuthRemoteDataSource.dart';
import 'package:honey/Infrastructure/Expensive/DataSources/ExpensesLocalDataSource.dart';
import 'package:honey/Infrastructure/Expensive/Model/ExpenModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueCategoryReportModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueReportModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueSubCategoryReportModel.dart';

//check connection and call from appropriate source
class ExpenRepositoryImpl extends ExpRepository {
  final ExpenRemoteDataSource expensRemoteDataSource;
  final ExpensesLocalDataSource expensesLocalDataSource;
  final NetworkInfo networkInfo;

  ExpenRepositoryImpl(this.expensRemoteDataSource, this.networkInfo,
      this.expensesLocalDataSource);

  @override
  Future<ExpenModel> getCateExpen(Map<String, dynamic> data) async {
    //here we do not check for network info, we just need to call the live API
    if (await networkInfo.isConnected) {
      print("Calling signin remote DataSource");
      var model = await expensRemoteDataSource.getExpenList(data);

      if (model.code == "1") {
        expensesLocalDataSource.cacheExpenses(model);
      }
      return model;
    } else {
      return expensesLocalDataSource.getExpenList(data);
    }
  }

  Future<RevenueReportModel> expensesReport(Map<String, dynamic> data) async {
    if (await networkInfo.isConnected) {
      return expensRemoteDataSource.expensesReport(data);
    } else {
      throw (ExceptionWithMessageOnly("no internet connection"));
    }
  }

  Future<RevenueCategoryReportModel> expensesCategoryReport(
      Map<String, dynamic> data) async {
    if (await networkInfo.isConnected) {
      RevenueCategoryReportModel model =
          await expensRemoteDataSource.expensesCategoryReport(data);

      return model;
    } else {
      throw ("no intenet connection and this request cannot be cached");
    }
  }

  Future<RevenueSubCategoryReportModel> expensesSubCategoryReport(
      Map<String, dynamic> data) async {
    if (await networkInfo.isConnected) {
      RevenueSubCategoryReportModel model =
          await expensRemoteDataSource.expensesSubCategoryReport(data);

      return model;
    } else {
      throw ("no intenet connection and this request cannot be cached");
    }
  }
}
