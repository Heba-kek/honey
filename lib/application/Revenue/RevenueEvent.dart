import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class RevenueEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetRevenueEvent extends RevenueEvent {
  GetRevenueEvent();
  @override
  List<Object> get props => [];

  Map<String, dynamic> toMap() {
    return {};
  }
}

class GetRevenueCategoryEvent extends RevenueEvent {
  GetRevenueCategoryEvent();
  @override
  List<Object> get props => [];

  Map<String, dynamic> toMap() {
    return {};
  }
}

class AddRevenueEvent extends RevenueEvent {
  final int totalAmount;
  final String notes;
  final int categoryId;
  final String description;
  final int subCategoryId;
  final double amount;
  final String personName;
  final int paymentType;
  final int bankAccount;
  final String paymentDate;
  final String reminderDate;

  AddRevenueEvent(
      this.totalAmount,
      this.notes,
      this.categoryId,
      this.description,
      this.subCategoryId,
      this.amount,
      this.personName,
      this.paymentType,
      this.bankAccount,
      this.paymentDate,
      this.reminderDate);

  @override
  List<Object> get props => [
        this.totalAmount,
        this.notes,
        this.categoryId,
        this.description,
        this.subCategoryId,
        this.amount,
        this.personName,
        this.paymentType,
        this.bankAccount,
        this.paymentDate,
        this.reminderDate
      ];

  Map<String, dynamic> toMap() {
    return {
      "total_amount": this.totalAmount,
      "notes": this.notes,
      "category_id": this.categoryId,
      "description": this.description,
      "sub_category": this.subCategoryId,
      "amount": this.amount,
      "person_name": this.personName,
      "payment": this.paymentType,
      "bank_account": this.bankAccount,
      "payment_date": this.paymentDate,
      "reminder_date": this.reminderDate
    };
  }
}

class AddRevenueCategoryEvent extends RevenueEvent {
  final String name;
  final String icon;

  AddRevenueCategoryEvent(this.name, this.icon);
  @override
  List<Object> get props => [name, icon];

  Map<String, dynamic> toMap() {
    return {
      "name": this.name,
      "icon": this.icon,
    };
  }
}

class EditCategoryEvent extends AddRevenueCategoryEvent {
  final int category;

  EditCategoryEvent({name, icon, this.category}) : super(name, icon);

  @override
  List<Object> get props => [name, icon, category];

  @override
  Map<String, dynamic> toMap() {
    return {"name": this.name, "icon": this.icon, "category": this.category};
  }
}

class AddSubCategoryEvent extends RevenueEvent {
  final String name;
  final String icon;
  final int categoryID;

  AddSubCategoryEvent(this.name, this.icon, this.categoryID);

  @override
  List<Object> get props => [name, icon, categoryID];

  Map<String, dynamic> toMap() {
    return {
      "name": this.name,
      "icon": this.icon,
      "category_id": this.categoryID
    };
  }
}

class GetIconsEvent extends RevenueEvent {
  GetIconsEvent();
  @override
  List<Object> get props => [];
}
