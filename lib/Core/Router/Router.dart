import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Domain/Wallets/Entities/WalletTypeEntity.dart';
import 'package:honey/presentation/page/Wallets/CreatCreditWallet.dart';
import 'package:honey/presentation/page/Wallets/CreateCashWallet.dart';
import 'package:honey/presentation/page/Wallets/CreateSavingProjectWallt.dart';
import 'package:honey/presentation/page/Wallets/SelectWalletCategory.dart';

class RouteNames {
  static const selectWalletCategory = "/SelectWalletCategory";
  static const createCasheWallet = "/CreateCashWallet";
  static const creatCreditWallet = "/CreateCreditWallet";
  static const savingProjectWallet = "/SavingProjectWallet";
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    print(settings.name);

    switch (settings.name) {
      case RouteNames.selectWalletCategory:
        return MaterialPageRoute(builder: (_) => SelectWalletCategory());
      case RouteNames.createCasheWallet:
        Map<String, dynamic> data = settings.arguments as Map<String, dynamic>;
        bool isBank = data["isBank"] as bool;
        WalletTypeData walletElement = data["WalletTypeData"] as WalletTypeData;
        return MaterialPageRoute(
            builder: (_) => CreateCashWallet(
                  isBank: isBank,
                  walletTypeData: walletElement,
                ));

      case RouteNames.creatCreditWallet:
        Map<String, dynamic> data = settings.arguments as Map<String, dynamic>;
        CreateCreditType screenType = data["type"] as CreateCreditType;
        WalletTypeData walletElement = data["WalletTypeData"] as WalletTypeData;
        return MaterialPageRoute(
            builder: (_) => CreateCreditWallet(
                  screenType: screenType,
                  walletTypeData: walletElement,
                ));

      case RouteNames.savingProjectWallet:
        Map<String, dynamic> data = settings.arguments as Map<String, dynamic>;
        WalletTypeData walletElement = data["WalletTypeData"] as WalletTypeData;

        return MaterialPageRoute(
            builder: (_) => CreateSavingProjectWallet(
                  walletTypeData: walletElement,
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
