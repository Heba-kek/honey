import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:honey/Domain/Auth/Entities/ExpensesCategoryReportWithouSubEntity.dart';
import 'package:honey/Domain/Revenue/Entities/RevenueCategoryReportEntity.dart';
import 'package:honey/Domain/Revenue/Entities/RevenueReportEntity.dart';
import 'package:honey/Domain/Revenue/Entities/RevenueSubCategoryReportEntity.dart';
import 'package:honey/domain/Auth/Entities/ExpenAntity.dart';

@immutable
abstract class ExpState extends Equatable {
  @override
  List<Object> get props => [];
}

class Empty extends ExpState {}

class Loading extends ExpState {}

class Loaded extends ExpState {
  final ExpenEntity ExpResponse;

  Loaded({this.ExpResponse});

  @override
  List<Object> get props => [];
}

class Error extends ExpState {
  final String message;
  final VoidCallback callback;

  Error(this.message, this.callback);

  @override
  List<Object> get props => [message, this.callback];
}

class ExpensesReportLoaded extends ExpState {
  final RevenueReportEntity expenseReportEnity;

  ExpensesReportLoaded(this.expenseReportEnity);

  @override
  List<Object> get props => [this.expenseReportEnity];
}

class ExpensesCategoryReportLoaded extends ExpState {
  final RevenueCategoryReportEntity expensesCategoryReportEntity;

  ExpensesCategoryReportLoaded({this.expensesCategoryReportEntity});

  @override
  List<Object> get props => [this.expensesCategoryReportEntity];
}

class ExpensesSubCategoryReportLoaded extends ExpState {
  final RevenueSubCategoryReportEntity expensesSubCategoryReportEntity;

  ExpensesSubCategoryReportLoaded({this.expensesSubCategoryReportEntity});

  @override
  List<Object> get props => [this.expensesSubCategoryReportEntity];
}

class ExpensesCategoryReportWithoutSubLoaded extends ExpState {
  final ExpensesReportWithoutSubEntity expensesReportWithoutSubEntity;

  ExpensesCategoryReportWithoutSubLoaded({this.expensesReportWithoutSubEntity});

  @override
  List<Object> get props => [this.expensesReportWithoutSubEntity];
}
