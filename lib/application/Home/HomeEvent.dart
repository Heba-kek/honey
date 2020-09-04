import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class HomeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetHomeEvent extends HomeEvent {
  GetHomeEvent();
  @override
  List<Object> get props => [];

  Map<String, dynamic> toMap() {
    return {};
  }
}

class GeMedicineStatus extends HomeEvent {
  final String date;
  final int status;
  final String doneDate;

  GeMedicineStatus(this.date, this.status, this.doneDate);

  @override
  List<Object> get props => [
        this.date,
        this.status,
        this.doneDate,
      ];

  Map<String, dynamic> toMap() {
    return {
      "date": this.date,
      "status": this.status,
      "date_done": this.doneDate,
    };
  }
}

class GETHomeMedicineDetails extends HomeEvent {
  final int medicineId;

  GETHomeMedicineDetails(this.medicineId);
  @override
  List<Object> get props => [this.medicineId];

  Map<String, dynamic> toMap() {
    return {"medicine_id": this.medicineId};
  }
}

class GetHomePaymentDataEvent extends HomeEvent {
  final int payment;

  GetHomePaymentDataEvent(this.payment);
  @override
  List<Object> get props => [this.payment];

  Map<String, dynamic> toMap() {
    return {"payment": this.payment};
  }
}

class GetRevenueCategoryForAddEvent extends HomeEvent {
  GetRevenueCategoryForAddEvent();
  @override
  List<Object> get props => [];

  Map<String, dynamic> toMap() {
    return {};
  }
}

class GetExpensesCategoryForAddEvent extends HomeEvent {
  GetExpensesCategoryForAddEvent();
  @override
  List<Object> get props => [];

  Map<String, dynamic> toMap() {
    return {};
  }
}

class GETExpensesDebtEvent extends HomeEvent {
  GETExpensesDebtEvent();
  @override
  List<Object> get props => [];

  Map<String, dynamic> toMap() {
    return {};
  }
}

class GETRevenueDebtEvent extends HomeEvent {
  GETRevenueDebtEvent();
  @override
  List<Object> get props => [];

  Map<String, dynamic> toMap() {
    return {};
  }
}

class GetExpensesLoanEvent extends HomeEvent {
  GetExpensesLoanEvent();
  @override
  List<Object> get props => [];

  Map<String, dynamic> toMap() {
    return {};
  }
}

class AddPaymentEvent extends HomeEvent {
  final int debtID;
  final double amount;
  final int categoryID;
  final String description;
  final String date;

  AddPaymentEvent(
      this.debtID, this.amount, this.categoryID, this.description, this.date);

  @override
  List<Object> get props =>
      [this.debtID, this.amount, this.categoryID, this.description, this.date];

  Map<String, dynamic> toMap() {
    return {
      "debt_id": this.debtID,
      "amount": this.amount,
      "category_id": this.categoryID,
      "description": this.description,
      "date": this.date,
    };
  }
}

class AddLoanPaymentEvent extends HomeEvent {
  final int debtID;
  final double amount;
  final String description;
  final String date;

  AddLoanPaymentEvent(this.debtID, this.amount, this.description, this.date);

  @override
  List<Object> get props =>
      [this.debtID, this.amount, this.description, this.date];

  Map<String, dynamic> toMap() {
    return {
      "debt_id": this.debtID,
      "amount": this.amount,
      "description": this.description,
      "date": this.date,
    };
  }
}
