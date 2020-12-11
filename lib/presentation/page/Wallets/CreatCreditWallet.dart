import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/PreferenceUtils.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/Domain/Wallets/Entities/WalletTypeEntity.dart';
import 'package:honey/application/Wallets/bloc.dart';
import 'package:honey/presentation/Common/ProgressWidget.dart';
import 'package:honey/presentation/page/Helper/UIHelper.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/HideWallet.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletCategoryName.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletCurrentBalance.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletCustomButton.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletDatePicket.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletNumberPicker.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletsHeader.dart';
import 'package:honey/presentation/page/Wallets/Components/bottomHomeButton.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;

enum CreateCreditType { PrePaidCard, CreditCard, ProjectBox }

///cash and bank wallets
class CreateCreditWallet extends StatefulWidget {
  final CreateCreditType screenType;
  final WalletTypeData walletTypeData;

  const CreateCreditWallet(
      {Key key,
      this.screenType = CreateCreditType.CreditCard,
      this.walletTypeData})
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

  WalletsBloc walletsBloc;
  bool hideWallet = false;

  @override
  void initState() {
    walletsBloc = WalletsBloc();
    super.initState();
  }

  @override
  void dispose() {
    walletsBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: local.locale.contains("ar")
          ? ui.TextDirection.rtl
          : ui.TextDirection.ltr,
      child: BlocProvider(
        create: (context) => walletsBloc,
        child: Container(
          color: CustomColors.mainYellowColor,
          child: SafeArea(
            top: true,
            bottom: false,
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.white,
              body: BlocConsumer<WalletsBloc, WalletState>(
                builder: (context, state) {
                  if (state is Error) {
                    return Center(
                      child: Text(state.message),
                    );
                  } else if (state is Loaded) {
                    if (state.basicSuccessEntity.code.toString() == "1") {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        int count = 0;
                        Navigator.popUntil(context, (route) {
                          return count++ == 2;
                        });
                      });
                    } else {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text(state.basicSuccessEntity.msg),
                        ));
                      });
                    }
                    walletsBloc.add(InitialEvent());
                  } else if (state is Loading) {
                    return progressWidget();
                  }
                  return getBody();
                },
                listener: (context, state) {},
              ),
              bottomNavigationBar: BottomHomeButton(),
            ),
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    return GestureDetector(
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
                          imagePath: widget.walletTypeData.icon,
                          title: widget.walletTypeData.name,
                        ),
                      ),
                      WaleetCurrentBalance(
                        title: local.lbCardName,
                        currentBalancecontroller: credNameController,
                        keyboardType: TextInputType.text,
                        unit: "",
                      ),
                      WaleetCurrentBalance(
                        title: local.lbCurrentBalance,
                        currentBalancecontroller: currentCashController,
                        unit: PreferenceUtils().user.data.currency,
                      ),
                      WalletDatePicker(
                        showYellowDivider:
                            widget.screenType == CreateCreditType.CreditCard,
                      ),
                      if (widget.screenType == CreateCreditType.CreditCard)
                        WalletNumberPicker(
                          title: local.lbPayDate,
                          selectedValue: payDay,
                          onSelectedValue: (newDay) {
                            setState(() {
                              payDay = newDay;
                            });
                          },
                        ),
                      if (widget.screenType == CreateCreditType.CreditCard)
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
                        onChangedSwitch: (bool value) {
                          setState(() {
                            hideWallet = value;
                          });
                        },
                        switchValue: hideWallet,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      WalletCustomButton(
                        buttonTitle: local.lbcreate,
                        onPress: () {
                          if (widget.screenType ==
                              CreateCreditType.CreditCard) {
                            walletsBloc.add(AddWalletEvent(
                              reminderDate: remindeDay.toString(),
                              paymentDate: payDay.toString(),
                              balance: currentCashController.text,
                              name: credNameController.text,
                              isHidden: hideWallet ? "1" : "0",
                              walletType: widget.walletTypeData.id,
                              date: DateFormat('dd/MM/yyyy')
                                  .format(DateTime.now()),
                              time: DateFormat.jm().format(DateTime.now()),
                            ));
                          } else {
                            walletsBloc.add(AddWalletEvent(
                              balance: currentCashController.text,
                              name: credNameController.text,
                              isHidden: hideWallet ? "1" : "0",
                              walletType: widget.walletTypeData.id,
                              date: DateFormat('dd/MM/yyyy')
                                  .format(DateTime.now()),
                              time: DateFormat.jm().format(DateTime.now()),
                            ));
                          }
                        },
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
