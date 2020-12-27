import 'package:honey/Infrastructure/Core/APINames.dart';
import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Core/Networking.dart';
import 'package:honey/Infrastructure/Wallets/Model/WalletDetailsModel.dart';
import 'package:honey/Infrastructure/Wallets/Model/WalletDetailsReportModel.dart';
import 'package:honey/Infrastructure/Wallets/Model/WalletTypeModel.dart';
import 'package:honey/Infrastructure/Wallets/Model/WalletsModel.dart';

import 'WalletsDataSource.dart';

class WalletRemoteDataSource extends WalletsDataSource {
  ApiProvider _provider = ApiProvider();

  @override
  Future<WalletTypeModel> getWalletTypes() async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET, url: APINames.getWalletType, bodyData: {});

    return WalletTypeModel.fromJson(response);
  }

  @override
  Future<WalletsModel> getWallets() async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET, url: APINames.getWallets, bodyData: {});

    return WalletsModel.fromJson(response);
  }

  @override
  Future<WalletDetailsModel> getWalletDetails(Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET,
        url: APINames.getWalletDetails,
        queryParameters: data);

    return WalletDetailsModel.fromJson(response);
  }

  @override
  Future<WalletDetailsReportModel> getWalletDetailsReport(
      Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET,
        url: APINames.getWalletReport,
        queryParameters: data);

    return WalletDetailsReportModel.fromJson(response);
  }

  Future<BasicSuccessModel> addWallet(Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.POST, url: APINames.addWallet, bodyData: data);

    return BasicSuccessModel.fromJson(response);
  }

  Future<BasicSuccessModel> updateWallet(Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.POST, url: APINames.updateWallet, bodyData: data);

    return BasicSuccessModel.fromJson(response);
  }

  Future<BasicSuccessModel> deleteWallet(Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET,
        url: APINames.deleteWallet,
        queryParameters: data);

    return BasicSuccessModel.fromJson(response);
  }
}
