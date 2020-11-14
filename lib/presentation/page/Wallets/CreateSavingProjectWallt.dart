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
class CreateSavingProjectWallet extends StatefulWidget {
  @override
  _CreateSavingProjectWalletState createState() =>
      _CreateSavingProjectWalletState();
}

class _CreateSavingProjectWalletState extends State<CreateSavingProjectWallet> {
  final AppLocalizations local = AppLocalizations();
  final TextEditingController projectNameController = TextEditingController();
  final TextEditingController projectValueController = TextEditingController();
  final TextEditingController projectStartValueController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.mainYellowColor,
      child: SafeArea(
        top: true,
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
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
                                title: local.lbPro + " Saving",
                              ),
                            ),
                            WaleetCurrentBalance(
                              title: local.lbProjectName,
                              currentBalancecontroller: projectNameController,
                              unit: "",
                            ),
                            WaleetCurrentBalance(
                              title: local.lbProjectValue,
                              currentBalancecontroller:
                                  projectStartValueController,
                              unit: "Sp",
                            ),
                            WaleetCurrentBalance(
                              title: local.lbProjectStartValue,
                              currentBalancecontroller:
                                  projectStartValueController,
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
                              buttonTitle: local.lbcreate,
                              onPress: () {},
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomHomeButton(),
        ),
      ),
    );
  }
}
