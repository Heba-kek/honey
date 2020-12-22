import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/PreferenceUtils.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/Domain/Wallets/Entities/WalletTypeEntity.dart';
import 'package:honey/application/Wallets/WalletsBloc.dart';
import 'package:honey/application/Wallets/bloc.dart';
import 'package:honey/presentation/Common/ProgressWidget.dart';
import 'package:honey/presentation/page/Helper/UIHelper.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/HideWallet.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletCategoryName.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletCurrentBalance.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletCustomButton.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletsHeader.dart';
import 'package:honey/presentation/page/Wallets/Components/bottomHomeButton.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;

import 'Components/Create Wallet/WalletDatePicket.dart';

class CreateOtherWallet extends StatefulWidget {
  final WalletTypeData walletTypeData;

  const CreateOtherWallet({Key key, this.walletTypeData}) : super(key: key);

  @override
  _CreateOtherWalletState createState() => _CreateOtherWalletState();
}

class _CreateOtherWalletState extends State<CreateOtherWallet> {
  final AppLocalizations local = AppLocalizations();
  final TextEditingController currentCashController = TextEditingController();
  final TextEditingController otherNameController = TextEditingController();
  final FocusNode node = FocusNode();
  WalletsBloc walletsBloc;
  bool hideWallet = false;

  TimeOfDay time = TimeOfDay.now();
  DateTime date = DateTime.now();

  @override
  void initState() {
    walletsBloc = WalletsBloc();
    node.requestFocus();
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
                builder: (context1, state) {
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
                        UIHelper.showHelperToast(state.basicSuccessEntity.msg);
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
                  title: local.lbOthers,
                  currentBalancecontroller: otherNameController,
                  keyboardType: TextInputType.text,
                  unit: "",
                  node: node,
                ),
                WaleetCurrentBalance(
                  title: local.lbCurrentBalance,
                  currentBalancecontroller: currentCashController,
                  unit: PreferenceUtils().user.data.currency,
                ),
                WalletDatePicker(
                  onDayChanged: (tempDay) {
                    setState(() {
                      date = tempDay;
                    });
                  },
                  onTimeChanged: (tempTime) {
                    setState(() {
                      time = tempTime;
                    });
                  },
                  selectedDay: date,
                  selectedTime: time,
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
                  flex: 1,
                  child: Container(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: WalletCustomButton(
                    buttonTitle: local.lbcreate,
                    onPress: () {
                      walletsBloc.add(AddWalletEvent(
                          balance: currentCashController.text,
                          name: otherNameController.text,
                          isHidden: hideWallet ? "1" : "0",
                          walletType: widget.walletTypeData.id,
                          date: DateFormat('dd/MM/yyyy').format(date),
                          time: time.format(context),
                          paymentDate: "",
                          projectValue: "",
                          reminderDate: ""));
                    },
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
