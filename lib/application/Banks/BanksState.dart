import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:honey/Domain/Banks/Entity/BankAccountReportEntity.dart';
import 'package:honey/Domain/Banks/Entity/BanksEntity.dart';
import 'package:honey/Domain/BasicSuccessEntity.dart';

@immutable
abstract class BanksState extends Equatable {
  @override
  List<Object> get props => [];
}

class Empty extends BanksState {}

class Loading extends BanksState {}

class Error extends BanksState {
  final String message;
  final VoidCallback callback;

  Error(this.message, this.callback);

  @override
  List<Object> get props => [message, this.callback];
}

class Loaded extends BanksState {
  final BasicSuccessEntity basicSuccessEntity;

  Loaded(this.basicSuccessEntity);
  @override
  List<Object> get props => [this.basicSuccessEntity];
}

class GETBanksAccountsLoaded extends BanksState {
  final BanksEntity banksEntity;

  GETBanksAccountsLoaded(this.banksEntity);

  @override
  List<Object> get props => [this.banksEntity];
}

class GETBankAccountsReportLoaded extends BanksState {
  final BankAccountReportEntity bankAccountReportEntity;

  GETBankAccountsReportLoaded(this.bankAccountReportEntity);

  @override
  List<Object> get props => [this.bankAccountReportEntity];
}
