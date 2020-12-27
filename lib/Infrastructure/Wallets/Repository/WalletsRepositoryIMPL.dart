import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:honey/Domain/BasicSuccessEntity.dart';
import 'package:honey/Domain/Wallets/Entities/WalletDetailsEntity.dart';
import 'package:honey/Domain/Wallets/Entities/WalletDetailsReportEntity.dart';
import 'package:honey/Domain/Wallets/Entities/WalletTypeEntity.dart';
import 'package:honey/Domain/Wallets/Entities/WalletsEntity.dart';
import 'package:honey/Domain/Wallets/WalletsRepository.dart';
import 'package:honey/Infrastructure/Core/CustomException.dart';
import 'package:honey/Infrastructure/Core/NetworkInfo.dart';
import 'package:honey/Infrastructure/Wallets/DataSource/WalletsDataSource.dart';
import 'package:honey/Infrastructure/Wallets/DataSource/WalletsLocalDataSource.dart';
import 'package:honey/Infrastructure/Wallets/DataSource/WalletsRemoteDataSource.dart';

class WalletRepositoryIMPL extends WalletsRepository {
  final WalletsDataSource remoteDataSource = WalletRemoteDataSource();
  final WalletsDataSource localDataSource = WalletLocalDataSource();
  final NetworkInfo networkInfo = NetworkInfoImpl(DataConnectionChecker());

  @override
  Future<WalletTypeEntity> getWalletTypes() async {
    if (await networkInfo.isConnected) {
      WalletTypeEntity model = await remoteDataSource.getWalletTypes();

      return model;
    } else {
      throw NoInternetConnectionException();
    }
  }

  @override
  Future<WalletsEntity> getWallets() async {
    if (await networkInfo.isConnected) {
      WalletsEntity model = await remoteDataSource.getWallets();

      return model;
    } else {
      throw NoInternetConnectionException();
    }
  }

  @override
  Future<WalletDetailsEntity> getWalletDetails(
      Map<String, dynamic> data) async {
    if (await networkInfo.isConnected) {
      WalletDetailsEntity model = await remoteDataSource.getWalletDetails(data);

      return model;
    } else {
      throw NoInternetConnectionException();
    }
  }

  Future<BasicSuccessEntity> addWallet(Map<String, dynamic> data) async {
    if (await networkInfo.isConnected) {
      BasicSuccessEntity model = await remoteDataSource.addWallet(data);

      return model;
    } else {
      throw NoInternetConnectionException();
    }
  }

  Future<BasicSuccessEntity> updateWallet(Map<String, dynamic> data) async {
    if (await networkInfo.isConnected) {
      BasicSuccessEntity model = await remoteDataSource.updateWallet(data);

      return model;
    } else {
      throw NoInternetConnectionException();
    }
  }

  Future<BasicSuccessEntity> deleteWallet(Map<String, dynamic> data) async {
    if (await networkInfo.isConnected) {
      BasicSuccessEntity model = await remoteDataSource.deleteWallet(data);

      return model;
    } else {
      throw NoInternetConnectionException();
    }
  }

  Future<WalletDetailsReportEntity> walletReport(
      Map<String, dynamic> data) async {
    if (await networkInfo.isConnected) {
      WalletDetailsReportEntity model =
          await remoteDataSource.getWalletDetailsReport(data);

      return model;
    } else {
      throw NoInternetConnectionException();
    }
  }
}
