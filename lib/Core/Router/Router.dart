import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        bool isBank = settings.arguments as bool;
        return MaterialPageRoute(
            builder: (_) => CreateCashWallet(
                  isBank: isBank,
                ));

      case RouteNames.creatCreditWallet:
        CreateCreditType screenType = settings.arguments as CreateCreditType;

        return MaterialPageRoute(
            builder: (_) => CreateCreditWallet(
                  screenType: screenType,
                ));

      case RouteNames.savingProjectWallet:
        return MaterialPageRoute(builder: (_) => CreateSavingProjectWallet());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
