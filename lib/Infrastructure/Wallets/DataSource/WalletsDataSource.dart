import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Wallets/Model/WalletDetailsModel.dart';
import 'package:honey/Infrastructure/Wallets/Model/WalletTypeModel.dart';
import 'package:honey/Infrastructure/Wallets/Model/WalletsModel.dart';

abstract class WalletsDataSource {
  Future<WalletTypeModel> getWalletTypes();
  Future<WalletsModel> getWallets();
  Future<WalletDetailsModel> getWalletDetails(Map<String, dynamic> data);
  Future<BasicSuccessModel> addWallet(Map<String, dynamic> data);
  Future<BasicSuccessModel> updateWallet(Map<String, dynamic> data);
}
