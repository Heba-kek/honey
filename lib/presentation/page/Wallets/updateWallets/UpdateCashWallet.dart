import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/PreferenceUtils.dart';
import 'package:honey/Core/Router/Router.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/Domain/Wallets/Entities/WalletDetailsEntity.dart';
import 'package:honey/Domain/Wallets/Entities/WalletTypeEntity.dart';
import 'package:honey/application/Wallets/WalletsBloc.dart';
import 'package:honey/application/Wallets/bloc.dart';
import 'package:honey/presentation/Common/Helpers.dart';
import 'package:honey/presentation/Common/ProgressWidget.dart';
import 'package:honey/presentation/page/Helper/UIHelper.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/HideWallet.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletCategoryName.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletCurrentBalance.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletCustomButton.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletDatePicket.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletsHeader.dart';
import 'package:honey/presentation/page/Wallets/Components/bottomHomeButton.dart';
import 'package:honey/presentation/page/Wallets/Components/walletDeleteDialog.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;

///cash and bank wallets
class UpdateCashWallet extends StatefulWidget {
  final bool isBank;
  final WalletTypeData walletTypeData;

  const UpdateCashWallet({
    Key key,
    this.isBank = false,
    this.walletTypeData,
  }) : super(key: key);

  @override
  _UpdateCashWalletState createState() => _UpdateCashWalletState();
}

class _UpdateCashWalletState extends State<UpdateCashWallet> {
  final AppLocalizations local = AppLocalizations();
  final TextEditingController currentCashController = TextEditingController();
  final TextEditingController bankNameController = TextEditingController();
  final FocusNode node = FocusNode();
  WalletsBloc walletsBloc;
  bool hideWallet = false;

  WalletDetailsData walletDetailsData;

  TimeOfDay time = TimeOfDay.now();
  DateTime date = DateTime.now();

  @override
  void initState() {
    walletsBloc = WalletsBloc();
    print("test dani");
    print(widget.walletTypeData.id);
    walletsBloc.add(
        GetWalletDetailsEvent(walletID: widget.walletTypeData.id.toString()));
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
                  } else if (state is GetWalletDetailsLoaded) {
                    if (state.walletDetailsEntity.code == "1") {
                      walletDetailsData = state.walletDetailsEntity.data;
                      bankNameController.text =
                          walletDetailsData.details[0].name;
                      currentCashController.text =
                          walletDetailsData.details[0].balance;
                      hideWallet =
                          walletDetailsData.details[0].disappear == "1";

                      date = DateTime.parse(walletDetailsData.details[0].date);
                      time = TimeOfDay(
                          hour: int.parse(
                              walletDetailsData.details[0].time.split(":")[0]),
                          minute: int.parse(
                              walletDetailsData.details[0].time.split(":")[1]));

                      walletsBloc.add(InitialEvent());
                    } else {
                      return Center(
                        child: Text(state.walletDetailsEntity.msg),
                      );
                    }
                  } else if (state is Loaded) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      UIHelper.showHelperToast(state.basicSuccessEntity.msg);

                      Navigator.of(context).pop();
                    });
                    walletsBloc.add(InitialEvent());
                  } else if (state is Loading) {
                    return progressWidget();
                  }
                  return walletDetailsData != null
                      ? getBody(walletDetailsData)
                      : Container();
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

  Widget getBody(WalletDetailsData data) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Column(
        children: [
          WalletsHeader(
            onPressAdd: () {},
            showAdd: false,
            showDelete: true,
            onPressedDelete: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (_) => DeleteDialog(
                  description: local.lbWalletDeleteWarning,
                  dialogTitle: local.lbWarning,
                  titleColor: Colors.red,
                  onPressedDelete: () {
                    walletsBloc.add(
                        DeleteWalletEvent(walletID: widget.walletTypeData.id));
                    Navigator.of(context).pop();
                  },
                  walletNameAndIcon: WalletCategoryName(
                    imagePath: widget.walletTypeData.icon,
                    title: widget.walletTypeData.name,
                    showDivider: false,
                  ),
                ),
              );
            },
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
                if (widget.isBank)
                  WaleetCurrentBalance(
                    title: local.lbBankName,
                    currentBalancecontroller: bankNameController,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WalletCustomButton(
                        buttonTitle: local.lbEdit,
                        onPress: () {
                          walletsBloc.add(UpdateWalletEvent(
                              walletId: widget.walletTypeData.id,
                              balance: currentCashController.text,
                              name: bankNameController.text,
                              isHidden: hideWallet ? "1" : "0",
                              walletType: widget.walletTypeData.id,
                              date: DateFormat('dd/MM/yyyy').format(date),
                              time: time.format(context),
                              paymentDate: "",
                              projectValue: "",
                              reminderDate: ""));
                        },
                      ),
                      WalletCustomButton(
                        buttonTitle: local.lbTransActionsDetails,
                        onPress: () {
                          Navigator.of(context).pushNamed(
                            RouteNames.cashWalletDetailsReport,
                            arguments: {
                              "isBank": true,
                              "WalletTypeData": widget.walletTypeData
                            },
                          );
                        },
                      ),
                    ],
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
