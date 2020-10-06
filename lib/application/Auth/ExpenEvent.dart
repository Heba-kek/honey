import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class ExpEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ExpenEvent extends ExpEvent {
  ExpenEvent();

  @override
  List<Object> get props => [];

  Map<String, dynamic> toMap() {
    return {};
  }
}

class ExpensesReportEvent extends ExpEvent {
  final String startDate;
  final String endDate;

  ExpensesReportEvent(this.startDate, this.endDate);

  @override
  List<Object> get props => [startDate, endDate];

  Map<String, dynamic> toMap() {
    return {"start_date": this.startDate, "end_date": this.endDate};
  }
}

class ExpensesCategoryReportEvent extends ExpEvent {
  final int category;
  final String startDate;
  final String endDate;

  ExpensesCategoryReportEvent(this.category, this.startDate, this.endDate);

  Map<String, dynamic> toMap() {
    return {
      "category": this.category,
      "start_date": this.startDate,
      "end_date": this.endDate
    };
  }
}

class ExpensesSubCategoryReportEvent extends ExpEvent {
  final int category;
  final String startDate;
  final String endDate;
  final int subCategory;

  ExpensesSubCategoryReportEvent(
      this.category, this.startDate, this.endDate, this.subCategory);

  Map<String, dynamic> toMap() {
    return {
      "category": this.category,
      "start_date": this.startDate,
      "end_date": this.endDate,
      "sub_category": this.subCategory
    };
  }
}

class ExpensesCategoryReportWithoutSubEvent extends ExpEvent {
  final int category;
  final String startDate;
  final String endDate;

  ExpensesCategoryReportWithoutSubEvent(
      this.category, this.startDate, this.endDate);

  Map<String, dynamic> toMap() {
    return {
      "category": this.category,
      "start_date": this.startDate,
      "end_date": this.endDate,
    };
  }
}
