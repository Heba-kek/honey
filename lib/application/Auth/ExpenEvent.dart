import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class ExpEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ExpenEvent extends ExpEvent {
  final String userid;

  ExpenEvent(
      this.userid,
      );

  @override
  List<Object> get props => [userid];

  Map<String, dynamic> toMap() {
    return {
      'user_id': userid,
    };
  }
}
