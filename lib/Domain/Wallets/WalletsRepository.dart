import 'package:honey/Domain/BasicSuccessEntity.dart';
import 'package:honey/Domain/Wallets/Entities/WalletDetailsEntity.dart';
import 'package:honey/Domain/Wallets/Entities/WalletTypeEntity.dart';
import 'package:honey/Domain/Wallets/Entities/WalletsEntity.dart';

abstract class WalletsRepository {
  Future<WalletTypeEntity> getWalletTypes();
  Future<WalletsEntity> getWallets();
  Future<WalletDetailsEntity> getWalletDetails(Map<String, dynamic> data);
  Future<BasicSuccessEntity> addWallet(Map<String, dynamic> data);
  Future<BasicSuccessEntity> updateWallet(Map<String, dynamic> data);
}
