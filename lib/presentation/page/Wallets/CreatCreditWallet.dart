import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/HideWallet.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletCategoryName.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletCurrentBalance.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletCustomButton.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletDatePicket.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletNumberPicker.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletsHeader.dart';
import 'package:honey/presentation/page/Wallets/Components/bottomHomeButton.dart';

enum CreateCreditType { PrePaidCard, CreditCard, ProjectBox }

///cash and bank wallets
class CreateCreditWallet extends StatefulWidget {
  final CreateCreditType screenType;

  const CreateCreditWallet(
      {Key key, this.screenType = CreateCreditType.CreditCard})
      : super(key: key);

  @override
  _CreateCreditWalletState createState() => _CreateCreditWalletState();
}

class _CreateCreditWalletState extends State<CreateCreditWallet> {
  final AppLocalizations local = AppLocalizations();
  final TextEditingController currentCashController = TextEditingController();
  final TextEditingController credNameController = TextEditingController();

  int payDay;
  int remindeDay;

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
                                title: widget.screenType ==
                                        CreateCreditType.PrePaidCard
                                    ? local.lbCardName
                                    : local.lbPro,
                              ),
                            ),
                            WaleetCurrentBalance(
                              title: local.lbCardName,
                              currentBalancecontroller: credNameController,
                              unit: "",
                            ),
                            WaleetCurrentBalance(
                              title: local.lbCurrentBalance,
                              currentBalancecontroller: currentCashController,
                              unit: "Sp",
                            ),
                            WalletDatePicker(
                              showYellowDivider: widget.screenType ==
                                  CreateCreditType.CreditCard,
                            ),
                            if (widget.screenType ==
                                CreateCreditType.CreditCard)
                              WalletNumberPicker(
                                title: local.lbPayDate,
                                selectedValue: payDay,
                                onSelectedValue: (newDay) {
                                  setState(() {
                                    payDay = newDay;
                                  });
                                },
                              ),
                            if (widget.screenType ==
                                CreateCreditType.CreditCard)
                              WalletNumberPicker(
                                title: local.lbReminderPayDate,
                                selectedValue: remindeDay,
                                onSelectedValue: (newDay) {
                                  setState(() {
                                    remindeDay = newDay;
                                  });
                                },
                              ),
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
