import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class WalletsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class InitialEvent extends WalletsEvent {
  InitialEvent();
  @override
  List<Object> get props => [];

  Map<String, dynamic> toMap() {
    return {};
  }
}

class GetWalletTypesEvent extends WalletsEvent {
  GetWalletTypesEvent();
  @override
  List<Object> get props => [];

  Map<String, dynamic> toMap() {
    return {};
  }
}

class GetWalletsEvent extends WalletsEvent {
  GetWalletsEvent();
  @override
  List<Object> get props => [];

  Map<String, dynamic> toMap() {
    return {};
  }
}

class GetWalletDetailsEvent extends WalletsEvent {
  final String walletID;

  GetWalletDetailsEvent({this.walletID});
  @override
  List<Object> get props => [this.walletID];

  Map<String, dynamic> toMap() {
    return {
      "id": walletID,
    };
  }
}

class AddWalletEvent extends WalletsEvent {
  final String balance;
  final String date;
  final String time;
  final String name;
  //credit card
  final String paymentDate;
  final String reminderDate;

  //saving projects
  final String projectValue;

  final String walletType;
  final String isHidden;

  AddWalletEvent(
      {this.balance,
      this.date,
      this.time,
      this.name,
      this.paymentDate,
      this.reminderDate,
      this.projectValue,
      this.walletType,
      this.isHidden});

  @override
  List<Object> get props => [
        this.balance,
        this.date,
        this.time,
        this.name,
        this.paymentDate,
        this.reminderDate,
        this.projectValue,
        this.walletType,
        this.isHidden
      ];

  Map<String, dynamic> toMap() {
    return {
      "balance": this.balance,
      "date": this.date,
      "time": this.time,
      "name": this.name,
      "payment_date": this.paymentDate,
      "reminder_date": this.reminderDate,
      "project_value": this.projectValue,
      "type": this.walletType,
      "disappear": this.isHidden
    };
  }
}

class UpdateWalletEvent extends WalletsEvent {
  final String walletId;
  final String balance;
  final String date;
  final String time;
  final String name;
  //credit card
  final String paymentDate;
  final String reminderDate;

  //saving projects
  final String projectValue;

  final String walletType;
  final String isHidden;

  UpdateWalletEvent(
      {this.walletId,
      this.balance,
      this.date,
      this.time,
      this.name,
      this.paymentDate,
      this.reminderDate,
      this.projectValue,
      this.walletType,
      this.isHidden});

  @override
  List<Object> get props => [
        this.walletId,
        this.balance,
        this.date,
        this.time,
        this.name,
        this.paymentDate,
        this.reminderDate,
        this.projectValue,
        this.walletType,
        this.isHidden
      ];

  Map<String, dynamic> toMap() {
    return {
      'id': this.walletId,
      "balance": this.balance,
      "date": this.date,
      "time": this.time,
      "name": this.name,
      "payment_date": this.paymentDate,
      "reminder_date": this.reminderDate,
      "project_value": this.projectValue,
      "type": this.walletType,
      "disappear": this.isHidden
    };
  }
}
