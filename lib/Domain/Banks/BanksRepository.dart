import 'package:honey/Infrastructure/Banks/Models/BankAccountReportModel.dart';
import 'package:honey/Infrastructure/Banks/Models/BanksModel.dart';
import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';

abstract class BanksRepository {
  Future<BasicSuccessModel> addAccount(Map<String, dynamic> bodyData);
  Future<BanksModel> getBanksAccount();
  Future<BasicSuccessModel> addCommission(Map<String, dynamic> bodyData);
  Future<BasicSuccessModel> addDeposit(Map<String, dynamic> bodyData);
  Future<BankAccountReportModel> getAccountReport();

  Future<BasicSuccessModel> deleteAccount(Map<String, dynamic> bodyData);
  Future<BasicSuccessModel> updateAccount(Map<String, dynamic> bodyData);
}
