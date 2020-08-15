import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:honey/Domain/BasicSuccessEntity.dart';
import 'package:honey/Domain/Revenue/Entities/RevenueCategoryEntity.dart';
import 'package:honey/Domain/Revenue/Entities/RevenueEntity.dart';
import 'package:honey/Infrastructure/Revenue/Models/IconsModel.dart';

@immutable
abstract class RevenueState extends Equatable {
  @override
  List<Object> get props => [];
}

class Empty extends RevenueState {}

class Loading extends RevenueState {}

class GetRevenueLoaded extends RevenueState {
  final RevenueEntity revenueEntity;

  GetRevenueLoaded({this.revenueEntity});

  @override
  List<Object> get props => [];
}

class GetRevenueCategoriesLoaded extends RevenueState {
  final RevenueCategoryEntity revenueCategoryEntity;

  GetRevenueCategoriesLoaded({this.revenueCategoryEntity});

  @override
  List<Object> get props => [];
}

class Error extends RevenueState {
  final String message;
  final VoidCallback callback;

  Error(this.message, this.callback);

  @override
  List<Object> get props => [message, this.callback];
}

class BasicLoaded extends RevenueState {
  final BasicSuccessEntity basicSuccessEntity;

  BasicLoaded({this.basicSuccessEntity});

  @override
  List<Object> get props => [this.basicSuccessEntity];
}

class GEtIconsLoaded extends RevenueState {
  final IconsModel iconsModel;

  GEtIconsLoaded({this.iconsModel});
}
