import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:honey/Domain/Banks/BanksRepository.dart';
import 'package:honey/Infrastructure/Banks/DataSource/BanksLocalDataSource.dart';
import 'package:honey/Infrastructure/Banks/DataSource/BanksRemoteDataSource.dart';
import 'package:honey/Infrastructure/Banks/Models/BankAccountReportModel.dart';
import 'package:honey/Infrastructure/Banks/Models/BanksModel.dart';
import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Core/NetworkInfo.dart';

class BanksRepositoryIMPL extends BanksRepository {
  final BanksLocalDataSource banksLocalDataSource = BanksLocalDataSource();
  final BanksRemoteDataSource banksRemoteDataSource = BanksRemoteDataSource();
  final NetworkInfo networkInfo = NetworkInfoImpl(DataConnectionChecker());

  Future<BasicSuccessModel> addAccount(Map<String, dynamic> bodyData) async {
    if (await networkInfo.isConnected) {
      print("fetch remote addAccount data");
      BasicSuccessModel model =
          await banksRemoteDataSource.addAccount(bodyData);

      return model;
    } else {
      print("fetch local addAccount data");
      return banksLocalDataSource.addAccount(bodyData);
    }
  }

  Future<BanksModel> getBanksAccount() async {
    if (await networkInfo.isConnected) {
      var cachedAccounts = await banksLocalDataSource.getCachedAddAccount();

      if (cachedAccounts != null) {
        print("sending all cachedAccounts to server");
        for (var cachedAccount in cachedAccounts) {
          await banksRemoteDataSource.addAccount(cachedAccount);
        }

        banksLocalDataSource
            .clearCachedbyKey(banksLocalDataSource.addAccountKey);
      }

      var cachedCommissions =
          await banksLocalDataSource.getCachedAddCommission();

      if (cachedCommissions != null) {
        print("sending all cachedCommissions to server");
        for (var cachedCommission in cachedCommissions) {
          await banksRemoteDataSource.addAccount(cachedCommission);
        }

        banksLocalDataSource
            .clearCachedbyKey(banksLocalDataSource.addCommissionKey);
      }

      var cachedDeposits = await banksLocalDataSource.getCachedAddDeposit();

      if (cachedDeposits != null) {
        print("sending all cachedDeposit to server");
        for (var cachedDeposit in cachedDeposits) {
          await banksRemoteDataSource.addDeposit(cachedDeposit);
        }

        banksLocalDataSource
            .clearCachedbyKey(banksLocalDataSource.addDepositKey);
      }

      print("fetch remote getBanksAccount data");
      BanksModel model = await banksRemoteDataSource.getBanksAccount();

      if (model.code == "1") {
        banksLocalDataSource.cacheBanksAccount(model);
      }
      return model;
    } else {
      print("fetch local getBanksAccount data");
      return banksLocalDataSource.getBanksAccount();
    }
  }

  Future<BasicSuccessModel> addCommission(Map<String, dynamic> bodyData) async {
    if (await networkInfo.isConnected) {
      print("fetch remote addCommission data");
      BasicSuccessModel model =
          await banksRemoteDataSource.addCommission(bodyData);

      return model;
    } else {
      print("fetch local addCommission data");
      return banksLocalDataSource.addCommission(bodyData);
    }
  }

  Future<BasicSuccessModel> addDeposit(Map<String, dynamic> bodyData) async {
    if (await networkInfo.isConnected) {
      print("fetch remote addDeposit data");
      BasicSuccessModel model =
          await banksRemoteDataSource.addDeposit(bodyData);

      return model;
    } else {
      print("fetch local addDeposit data");
      return banksLocalDataSource.addDeposit(bodyData);
    }
  }

  Future<BankAccountReportModel> getAccountReport() async {
    if (await networkInfo.isConnected) {
      print("fetch remote getAccountReport data");
      BankAccountReportModel model =
          await banksRemoteDataSource.getAccountReport();

      if (model.code == "1") {
        banksLocalDataSource.cacheAccountReport(model);
      }
      return model;
    } else {
      print("fetch local getAccountReport data");
      return banksLocalDataSource.getAccountReport();
    }
  }

  Future<BasicSuccessModel> deleteAccount(Map<String, dynamic> bodyData) async {
    if (await networkInfo.isConnected) {
      print("fetch remote deleteAccount data");
      BasicSuccessModel model =
          await banksRemoteDataSource.deleteAccount(bodyData);

      return model;
    } else {
      print("fetch local deleteAccount data");
      return banksLocalDataSource.deleteAccount(bodyData);
    }
  }

  Future<BasicSuccessModel> updateAccount(Map<String, dynamic> bodyData) async {
    if (await networkInfo.isConnected) {
      print("fetch remote updateAccount data");
      BasicSuccessModel model =
          await banksRemoteDataSource.updateAccount(bodyData);

      return model;
    } else {
      print("fetch local updateAccount data");
      return banksLocalDataSource.updateAccount(bodyData);
    }
  }
}
