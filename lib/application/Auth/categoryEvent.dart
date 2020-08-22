import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class CateEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class CategoryEvent extends CateEvent {
  final String userid;

  CategoryEvent(
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
