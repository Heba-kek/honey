import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

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
