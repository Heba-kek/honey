import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:honey/Domain/BasicSuccessEntity.dart';
import 'package:honey/Domain/Home/Entity/CategoryForAddEntity.dart';
import 'package:honey/Domain/Home/Entity/DebtEntity.dart';
import 'package:honey/Domain/Home/Entity/ExpensesLoanEntity.dart';
import 'package:honey/Domain/Home/Entity/HomeEentity.dart';
import 'package:honey/Domain/Home/Entity/MedicineEntity.dart';
import 'package:honey/Domain/Home/Entity/PaymentEntity.dart';

@immutable
abstract class HomeState extends Equatable {
  @override
  List<Object> get props => [];
}

class Empty extends HomeState {}

class Loading extends HomeState {}

class Error extends HomeState {
  final String message;
  final VoidCallback callback;

  Error(this.message, this.callback);

  @override
  List<Object> get props => [message, this.callback];
}

class Loaded extends HomeState {
  final BasicSuccessEntity basicSuccessEntity;

  Loaded(this.basicSuccessEntity);
  @override
  List<Object> get props => [this.basicSuccessEntity];
}

class GetHomeLoaded extends HomeState {
  final HomeEntity homeEntity;

  GetHomeLoaded(this.homeEntity);

  @override
  List<Object> get props => [homeEntity];
}

class GETHomeMedicineDetailsLoaded extends HomeState {
  final HomeMedicineEntity homeMedicineEntity;

  GETHomeMedicineDetailsLoaded(this.homeMedicineEntity);

  @override
  List<Object> get props => [homeMedicineEntity];
}

class GETHomePaymentDataLoaded extends HomeState {
  final PaymentDataEntity paymentDataEntity;

  GETHomePaymentDataLoaded(this.paymentDataEntity);

  @override
  List<Object> get props => [paymentDataEntity];
}

class GetCategoryForAddloaded extends HomeState {
  final CategoryForAddEntity categoryForAddEntity;

  GetCategoryForAddloaded(this.categoryForAddEntity);

  @override
  List<Object> get props => [categoryForAddEntity];
}

class GETDebtloaded extends HomeState {
  final DebtEntity debtEntity;

  GETDebtloaded(this.debtEntity);

  @override
  List<Object> get props => [debtEntity];
}

class GETExpensesLoanLoaded extends HomeState {
  final ExpensesLoanEntity expensesLoanEntity;

  GETExpensesLoanLoaded(this.expensesLoanEntity);
  @override
  List<Object> get props => [expensesLoanEntity];
}
