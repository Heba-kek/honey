import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/HideWallet.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletCategoryName.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletCurrentBalance.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletCustomButton.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletDatePicket.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletsHeader.dart';
import 'package:honey/presentation/page/Wallets/Components/bottomHomeButton.dart';

///cash and bank wallets
class CreateCashWallet extends StatefulWidget {
  final bool isBank;

  const CreateCashWallet({Key key, this.isBank = false}) : super(key: key);

  @override
  _CreateCashWalletState createState() => _CreateCashWalletState();
}

class _CreateCashWalletState extends State<CreateCashWallet> {
  final AppLocalizations local = AppLocalizations();
  final TextEditingController currentCashController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.mainYellowColor,
      child: SafeArea(
        top: true,
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              WalletsHeader(
                onPressAdd: () {},
                showAdd: false,
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: WalletCategoryName(
                        imagePath: "",
                        title: local.lbCash,
                      ),
                    ),
                    if (widget.isBank)
                      WaleetCurrentBalance(
                        title: local.lbBankName,
                        currentBalancecontroller: currentCashController,
                        unit: "",
                      ),
                    WaleetCurrentBalance(
                      title: local.lbCurrentBalance,
                      currentBalancecontroller: currentCashController,
                      unit: "Sp",
                    ),
                    WalletDatePicker(),
                    HideWallet(
                      onChangedSwitch: (bool) {},
                      switchValue: false,
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    WalletCustomButton(
                      buttonTitle: "Create",
                      onPress: () {},
                    ),
                  ],
                ),
              ))
            ],
          ),
          bottomNavigationBar: BottomHomeButton(),
        ),
      ),
    );
  }
}
