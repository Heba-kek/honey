import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:honey/Domain/BasicSuccessEntity.dart';
import 'package:honey/Domain/Wallets/Entities/WalletDetailsEntity.dart';
import 'package:honey/Domain/Wallets/Entities/WalletDetailsReportEntity.dart';
import 'package:honey/Domain/Wallets/Entities/WalletTypeEntity.dart';
import 'package:honey/Domain/Wallets/Entities/WalletsEntity.dart';

@immutable
abstract class WalletState extends Equatable {
  @override
  List<Object> get props => [];
}

class Empty extends WalletState {}

class Loading extends WalletState {}

class Loaded extends WalletState {
  final BasicSuccessEntity basicSuccessEntity;

  Loaded({this.basicSuccessEntity});

  @override
  List<Object> get props => [this.basicSuccessEntity];
}

class Error extends WalletState {
  final String message;
  final VoidCallback callback;

  Error(this.message, this.callback);

  @override
  List<Object> get props => [message, this.callback];
}

class GetWalletTypeLoaded extends WalletState {
  final WalletTypeEntity walletTypeEntity;

  GetWalletTypeLoaded(this.walletTypeEntity);

  @override
  List<Object> get props => [this.walletTypeEntity];
}

class GetWalletsLoaded extends WalletState {
  final WalletsEntity walletsEntity;

  GetWalletsLoaded(this.walletsEntity);

  @override
  List<Object> get props => [this.walletsEntity];
}

class GetWalletDetailsLoaded extends WalletState {
  final WalletDetailsEntity walletDetailsEntity;

  GetWalletDetailsLoaded(this.walletDetailsEntity);

  @override
  List<Object> get props => [this.walletDetailsEntity];
}

class GetWalletDetailsReportLoaded extends WalletState {
  final WalletDetailsReportEntity walletDetailsReportEntity;

  GetWalletDetailsReportLoaded(this.walletDetailsReportEntity);

  @override
  List<Object> get props => [this.walletDetailsReportEntity];
}
