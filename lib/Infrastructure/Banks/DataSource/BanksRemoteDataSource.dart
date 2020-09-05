import 'package:honey/Infrastructure/Banks/DataSource/BanksDataSource.dart';
import 'package:honey/Infrastructure/Banks/Models/BankAccountReportModel.dart';
import 'package:honey/Infrastructure/Banks/Models/BanksModel.dart';
import 'package:honey/Infrastructure/Core/APINames.dart';
import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Core/Networking.dart';

class BanksRemoteDataSource extends BanksDataSource {
  final ApiProvider apiProvider = ApiProvider();

  @override
  Future<BasicSuccessModel> addAccount(Map<String, dynamic> bodyData) async {
    final reponse = await apiProvider.fetchData(
        method: HttpMethod.POST, url: APINames.addAccount, bodyData: bodyData);
    return BasicSuccessModel.fromJson(reponse);
  }

  Future<BanksModel> getBanksAccount() async {
    final reponse = await apiProvider.fetchData(
        method: HttpMethod.GET, url: APINames.getBanksAccount, bodyData: {});
    return BanksModel.fromJson(reponse);
  }

  Future<BasicSuccessModel> addCommission(Map<String, dynamic> bodyData) async {
    final reponse = await apiProvider.fetchData(
        method: HttpMethod.POST,
        url: APINames.addCommission,
        bodyData: bodyData);
    return BasicSuccessModel.fromJson(reponse);
  }

  Future<BasicSuccessModel> addDeposit(Map<String, dynamic> bodyData) async {
    final reponse = await apiProvider.fetchData(
        method: HttpMethod.POST, url: APINames.addDeposit, bodyData: bodyData);
    return BasicSuccessModel.fromJson(reponse);
  }

  Future<BankAccountReportModel> getAccountReport() async {
    final reponse = await apiProvider.fetchData(
        method: HttpMethod.GET, url: APINames.bankAccountReport, bodyData: {});
    return BankAccountReportModel.fromJson(reponse);
  }

  Future<BasicSuccessModel> deleteAccount(Map<String, dynamic> bodyData) async {
    final reponse = await apiProvider.fetchData(
        method: HttpMethod.POST,
        url: APINames.deleteBankAccount,
        bodyData: bodyData);
    return BasicSuccessModel.fromJson(reponse);
  }

  Future<BasicSuccessModel> updateAccount(Map<String, dynamic> bodyData) async {
    final reponse = await apiProvider.fetchData(
        method: HttpMethod.POST,
        url: APINames.updateBankAccount,
        bodyData: bodyData);
    return BasicSuccessModel.fromJson(reponse);
  }
}
