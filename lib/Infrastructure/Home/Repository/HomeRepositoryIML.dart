import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:honey/Domain/Home/HomeRepository.dart';
import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Core/NetworkInfo.dart';
import 'package:honey/Infrastructure/Home/DateSource/HomeDataSource.dart';
import 'package:honey/Infrastructure/Home/DateSource/HomeLocalDataSource.dart';
import 'package:honey/Infrastructure/Home/DateSource/HomeRemoteDataSource.dart';
import 'package:honey/Infrastructure/Home/Model/CategoryForAddModel.dart';
import 'package:honey/Infrastructure/Home/Model/DebtModel.dart';
import 'package:honey/Infrastructure/Home/Model/ExpensesLoanModel.dart';
import 'package:honey/Infrastructure/Home/Model/HomeMedicineModel.dart';
import 'package:honey/Infrastructure/Home/Model/HomeModel.dart';
import 'package:honey/Infrastructure/Home/Model/PaymentDataModel.dart';

class HomeRepositoryIMPL extends HomeRepository {
  final HomeDataSource remoteDataSource = HomeRemoteDataSource();
  final HomeLocalDataSource localDataSource = HomeLocalDataSource();
  final NetworkInfo networkInfo = NetworkInfoImpl(DataConnectionChecker());
  @override
  Future<HomeModel> getHome() async {
    if (await networkInfo.isConnected) {
      var cachedLoanPayment = await localDataSource.getCachedAddLoanPayment();

      if (cachedLoanPayment != null) {
        print("sending all cached LoanPayment to server");
        for (var cachedLoanPayment in cachedLoanPayment) {
          await remoteDataSource.addLoanPayment(cachedLoanPayment);
        }

        localDataSource.clearCachedbyKey(localDataSource.addLoanPaymentKey);
      }

      var cachedAddPayment = await localDataSource.getCachedAddPayment();

      if (cachedAddPayment != null) {
        print("sending all cached AddPayment to server");
        for (var cachedAddPayment in cachedAddPayment) {
          await remoteDataSource.addPayment(cachedAddPayment);
        }

        localDataSource.clearCachedbyKey(localDataSource.addPaymentKey);
      }
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

  Future<PaymentDataModel> getPaymentData(Map<String, dynamic> bodyData) async {
    if (await networkInfo.isConnected) {
      print("fetch remote getPaymentData data");
      PaymentDataModel model = await remoteDataSource.getPaymentData(bodyData);

      return model;
    } else {
      print("fetch local getPaymentData data");
      return localDataSource.getPaymentData(bodyData);
    }
  }

  Future<CategoryForAddModel> getExpensesCategoryForAdd() async {
    if (await networkInfo.isConnected) {
      print("fetch remote getExpensesCategoryForAdd data");
      CategoryForAddModel model =
          await remoteDataSource.getExpensesCategoryForAdd();

      if (model.code == "1") {
        localDataSource.cacheExpensesCategoryForAdd(model);
      }
      return model;
    } else {
      print("fetch local getExpensesCategoryForAdd data");
      return localDataSource.getExpensesCategoryForAdd();
    }
  }

  Future<CategoryForAddModel> getRevenueCategoryForAdd() async {
    if (await networkInfo.isConnected) {
      print("fetch remote getRevenueCategoryForAdd data");
      CategoryForAddModel model =
          await remoteDataSource.getRevenueCategoryForAdd();

      if (model.code == "1") {
        localDataSource.cacheRevenueCategoryForAdd(model);
      }
      return model;
    } else {
      print("fetch local getRevenueCategoryForAdd data");
      return localDataSource.getRevenueCategoryForAdd();
    }
  }

  Future<DebtModel> getExpensesDebt() async {
    if (await networkInfo.isConnected) {
      print("fetch remote getExpensesDebt data");
      DebtModel model = await remoteDataSource.getExpensesDebt();

      if (model.code == "1") {
        localDataSource.cacheExpensesDebt(model);
      }
      return model;
    } else {
      print("fetch local getExpensesDebt data");
      return localDataSource.getExpensesDebt();
    }
  }

  Future<DebtModel> getRevenueDebt() async {
    if (await networkInfo.isConnected) {
      print("fetch remote getRevenueDebt data");
      DebtModel model = await remoteDataSource.getRevenueDebt();

      if (model.code == "1") {
        localDataSource.cacheRevenueDebt(model);
      }
      return model;
    } else {
      print("fetch local getRevenueDebt data");
      return localDataSource.getRevenueDebt();
    }
  }

  Future<ExpensesLoanModel> getExpensesLoan() async {
    if (await networkInfo.isConnected) {
      print("fetch remote getExpensesLoan data");
      ExpensesLoanModel model = await remoteDataSource.getExpensesLoan();

      if (model.code == "1") {
        localDataSource.cacheExpensesLoan(model);
      }
      return model;
    } else {
      print("fetch local getExpensesLoan data");
      return localDataSource.getExpensesLoan();
    }
  }

  Future<BasicSuccessModel> addPayment(Map<String, dynamic> bodyData) async {
    if (await networkInfo.isConnected) {
      print("fetch remote addPayment data");
      BasicSuccessModel model = await remoteDataSource.addPayment(bodyData);

      return model;
    } else {
      print("fetch local addPayment data");
      return localDataSource.addPayment(bodyData);
    }
  }

  Future<BasicSuccessModel> addLoanPayment(
      Map<String, dynamic> bodyData) async {
    if (await networkInfo.isConnected) {
      print("fetch remote addLoanPayment data");
      BasicSuccessModel model = await remoteDataSource.addLoanPayment(bodyData);

      return model;
    } else {
      print("fetch local addLoanPayment data");
      return localDataSource.addLoanPayment(bodyData);
    }
  }
}
