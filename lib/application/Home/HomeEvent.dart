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
