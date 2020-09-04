import 'package:honey/Infrastructure/Core/BasicSuccessModel.dart';
import 'package:honey/Infrastructure/Home/Model/CategoryForAddModel.dart';
import 'package:honey/Infrastructure/Home/Model/DebtModel.dart';
import 'package:honey/Infrastructure/Home/Model/ExpensesLoanModel.dart';
import 'package:honey/Infrastructure/Home/Model/HomeMedicineModel.dart';
import 'package:honey/Infrastructure/Home/Model/HomeModel.dart';
import 'package:honey/Infrastructure/Home/Model/PaymentDataModel.dart';

abstract class HomeDataSource {
  Future<HomeModel> getHome();
  Future<BasicSuccessModel> getMedicineStatus(Map<String, dynamic> bodyData);
  Future<HomeMedicineModel> getMedicineDetails(Map<String, dynamic> bodyData);
  Future<PaymentDataModel> getPaymentData(Map<String, dynamic> bodyData);
  Future<CategoryForAddModel> getExpensesCategoryForAdd();
  Future<CategoryForAddModel> getRevenueCategoryForAdd();
  Future<DebtModel> getExpensesDebt();
  Future<DebtModel> getRevenueDebt();
  Future<ExpensesLoanModel> getExpensesLoan();
  Future<BasicSuccessModel> addPayment(Map<String, dynamic> bodyData);
  Future<BasicSuccessModel> addLoanPayment(Map<String, dynamic> bodyData);
}
