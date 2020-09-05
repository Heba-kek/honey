import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class BanksEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AddAccountEvent extends BanksEvent {
  final String bankName;
  final int currency;
  final double amount;
  final String date;

  AddAccountEvent(this.bankName, this.currency, this.amount, this.date);

  @override
  List<Object> get props =>
      [this.bankName, this.currency, this.amount, this.date];

  Map<String, dynamic> toMap() {
    return {
      "bank_name": this.bankName,
      "date": this.date,
      "currency": this.currency,
      "amount": this.amount,
    };
  }
}

class GETBanksAccountEvent extends BanksEvent {
  GETBanksAccountEvent();
  @override
  List<Object> get props => [];

  Map<String, dynamic> toMap() {
    return {};
  }
}

class AddCommissionEvent extends BanksEvent {
  final double amount;
  final int accountID;
  final String description;
  final String date;

  AddCommissionEvent(this.amount, this.accountID, this.description, this.date);

  @override
  List<Object> get props =>
      [this.amount, this.accountID, this.description, this.date];

  Map<String, dynamic> toMap() {
    return {
      "amount": this.amount,
      "account_id": this.accountID,
      "description": this.description,
      "date": this.date
    };
  }
}

class GETBankAccountReportEvent extends BanksEvent {
  GETBankAccountReportEvent();
  @override
  List<Object> get props => [];

  Map<String, dynamic> toMap() {
    return {};
  }
}

class DeleteBankAccountEvent extends BanksEvent {
  final int id;

  DeleteBankAccountEvent(this.id);

  @override
  List<Object> get props => [this.id];

  Map<String, dynamic> toMap() {
    return {"id": this.id};
  }
}

class UpdateBankAccountEvent extends BanksEvent {
  final int id;
  final String name;
  UpdateBankAccountEvent(this.id, this.name);

  @override
  List<Object> get props => [this.id, this.name];

  Map<String, dynamic> toMap() {
    return {
      "id": this.id,
      "name": this.name,
    };
  }
}
