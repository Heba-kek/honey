import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Wallets/DataSource/WalletsDataSource.dart';
import 'package:honey/Infrastructure/Wallets/Model/WalletDetailsModel.dart';
import 'package:honey/Infrastructure/Wallets/Model/WalletTypeModel.dart';
import 'package:honey/Infrastructure/Wallets/Model/WalletsModel.dart';

class WalletLocalDataSource extends WalletsDataSource {
  @override
  Future<WalletTypeModel> getWalletTypes() {
    throw UnimplementedError();
  }

  @override
  Future<WalletsModel> getWallets() {
    throw UnimplementedError();
  }

  @override
  Future<WalletDetailsModel> getWalletDetails(Map<String, dynamic> data) {
    throw UnimplementedError();
  }

  Future<BasicSuccessModel> addWallet(Map<String, dynamic> data) {
    throw UnimplementedError();
  }

  Future<BasicSuccessModel> updateWallet(Map<String, dynamic> data) {
    throw UnimplementedError();
  }

  Future<BasicSuccessModel> deleteWallet(Map<String, dynamic> data) {
    throw UnimplementedError();
  }
}
