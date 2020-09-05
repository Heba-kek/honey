import 'package:honey/Infrastructure/Core/APINames.dart';
import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Core/Networking.dart';
import 'package:honey/Infrastructure/Core/genericResponse.dart';
import 'package:honey/Infrastructure/Home/DateSource/HomeDataSource.dart';
import 'package:honey/Infrastructure/Home/Model/CategoryForAddModel.dart';
import 'package:honey/Infrastructure/Home/Model/DebtModel.dart';
import 'package:honey/Infrastructure/Home/Model/ExpensesLoanModel.dart';
import 'package:honey/Infrastructure/Home/Model/HomeMedicineModel.dart';
import 'package:honey/Infrastructure/Home/Model/HomeModel.dart';
import 'package:honey/Infrastructure/Home/Model/PaymentDataModel.dart';

class HomeRemoteDataSource extends HomeDataSource {
  ApiProvider _provider = ApiProvider();

  @override
  Future<HomeModel> getHome() async {
    final response = await _provider
        .fetchData(method: HttpMethod.GET, url: APINames.getHome, bodyData: {});

    return HomeModel.fromJson(response);
  }

  Future<BasicSuccessModel> getMedicineStatus(
      Map<String, dynamic> bodyData) async {
    final reponse = await _provider.fetchData(
        method: HttpMethod.POST,
        url: APINames.medicineStatus,
        bodyData: bodyData);
    return BasicSuccessModel.fromJson(reponse);
  }

  Future<HomeMedicineModel> getMedicineDetails(
      Map<String, dynamic> bodyData) async {
    final reponse = await _provider.fetchData(
        method: HttpMethod.GET,
        url: APINames.medicineDetails,
        bodyData: bodyData);
    return HomeMedicineModel.fromJson(reponse);
  }

  Future<PaymentDataModel> getPaymentData(Map<String, dynamic> bodyData) async {
    final reponse = await _provider.fetchData(
        method: HttpMethod.GET,
        url: APINames.getPaymentData,
        bodyData: bodyData);
    return PaymentDataModel.fromJson(reponse);
  }

  Future<CategoryForAddModel> getExpensesCategoryForAdd() async {
    final reponse = await _provider.fetchData(
        method: HttpMethod.GET,
        url: APINames.getExpensesCategoryForAdd,
        bodyData: {});
    return CategoryForAddModel.fromJson(reponse);
  }

  Future<CategoryForAddModel> getRevenueCategoryForAdd() async {
    final reponse = await _provider.fetchData(
        method: HttpMethod.GET,
        url: APINames.getRevenueCategoryForAdd,
        bodyData: {});
    return CategoryForAddModel.fromJson(reponse);
  }

  Future<DebtModel> getExpensesDebt() async {
    final reponse = await _provider.fetchData(
        method: HttpMethod.GET,
        url: APINames.getRevenueCategoryForAdd,
        bodyData: {});
    return DebtModel.fromJson(reponse);
  }

  Future<DebtModel> getRevenueDebt() async {
    final reponse = await _provider.fetchData(
        method: HttpMethod.GET,
        url: APINames.getRevenueCategoryForAdd,
        bodyData: {});
    return DebtModel.fromJson(reponse);
  }

  Future<ExpensesLoanModel> getExpensesLoan() async {
    final reponse = await _provider.fetchData(
        method: HttpMethod.GET, url: APINames.getExpensesLoan, bodyData: {});
    return ExpensesLoanModel.fromJson(reponse);
  }

  Future<BasicSuccessModel> addPayment(Map<String, dynamic> bodyData) async {
    final reponse = await _provider.fetchData(
        method: HttpMethod.POST,
        url: APINames.addDebtPaymetn,
        bodyData: bodyData);
    return BasicSuccessModel.fromJson(reponse);
  }

  Future<BasicSuccessModel> addLoanPayment(
      Map<String, dynamic> bodyData) async {
    final reponse = await _provider.fetchData(
        method: HttpMethod.POST,
        url: APINames.addLoanPayment,
        bodyData: bodyData);
    return BasicSuccessModel.fromJson(reponse);
  }
}
