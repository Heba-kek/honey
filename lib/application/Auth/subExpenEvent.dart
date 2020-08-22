import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class ExpEventSub extends Equatable {
  @override
  List<Object> get props => [];
}

class ExpenEventSub extends ExpEventSub {
  final String userid;
  final String cateId;

  ExpenEventSub(
      this.userid,
      this.cateId,

      );

  @override
  List<Object> get props => [userid];

  Map<String, dynamic> toMap() {
    return {
      'user_id': userid,
      'category_id': cateId,

    };
  }
}
