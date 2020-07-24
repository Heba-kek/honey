import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class SigninEntity extends Equatable {
  //json body proprties without tojson and fromjson
  final String code;
  final SigninData data;
  final String token;

  SigninEntity(
      {@required this.code, @required this.data, @required this.token});

  @override
  List<Object> get props => [this.code, this.data, this.token];
}

class SigninData extends Equatable {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String mobile;
  final String country;
  final String createdAt;
  final String status;
  final String code;
  final String adminId;
  final String price;
  final String currency;
  final String active;
  final String activeDate;
  final String paid;
  final String mainUserCurrency;

  SigninData(
      {@required this.id,
      @required this.firstName,
      @required this.lastName,
      @required this.email,
      @required this.mobile,
      @required this.country,
      @required this.createdAt,
      @required this.status,
      @required this.code,
      @required this.adminId,
      @required this.price,
      @required this.currency,
      @required this.active,
      @required this.activeDate,
      @required this.paid,
      @required this.mainUserCurrency});

  @override
  List<Object> get props => [
        this.id,
        this.firstName,
        this.lastName,
        this.email,
        this.mobile,
        this.country,
        this.createdAt,
        this.status,
        this.code,
        this.adminId,
        this.price,
        this.currency,
        this.active,
        this.activeDate,
        this.paid,
        this.mainUserCurrency
      ];

  factory SigninData.fromJson(Map<String, dynamic> json) => SigninData(
        id: json["id"] == null ? null : json["id"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        email: json["email"] == null ? null : json["email"],
        mobile: json["mobile"] == null ? null : json["mobile"],
        country: json["country"] == null ? null : json["country"],
        createdAt: json["created_at"] == null ? null : json["created_at"],
        status: json["status"] == null ? null : json["status"],
        code: json["code"] == null ? null : json["code"],
        adminId: json["admin_id"],
        price: json["price"] == null ? null : json["price"],
        currency: json["currency"] == null ? null : json["currency"],
        active: json["active"] == null ? null : json["active"],
        activeDate: json["active_date"] == null ? null : json["active_date"],
        paid: json["paid"] == null ? null : json["paid"],
        mainUserCurrency: json["main_user_currency"] == null
            ? null
            : json["main_user_currency"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "first_name": firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
        "email": email == null ? null : email,
        "mobile": mobile == null ? null : mobile,
        "country": country == null ? null : country,
        "created_at": createdAt == null ? null : createdAt,
        "status": status == null ? null : status,
        "code": code == null ? null : code,
        "admin_id": adminId,
        "price": price == null ? null : price,
        "currency": currency == null ? null : currency,
        "active": active == null ? null : active,
        "active_date": activeDate == null ? null : activeDate,
        "paid": paid == null ? null : paid,
        "main_user_currency":
            mainUserCurrency == null ? null : mainUserCurrency,
      };
}
