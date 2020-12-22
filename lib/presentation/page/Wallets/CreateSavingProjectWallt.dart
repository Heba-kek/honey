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
import 'package:honey/presentation/page/Wallets/Components/WalletsHeader.dart';
import 'package:honey/presentation/page/Wallets/Components/bottomHomeButton.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;

///cash and bank wallets
class CreateSavingProjectWallet extends StatefulWidget {
  final WalletTypeData walletTypeData;

  const CreateSavingProjectWallet({Key key, this.walletTypeData})
      : super(key: key);
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
      child: Container(
        color: CustomColors.mainYellowColor,
        child: SafeArea(
          top: true,
          bottom: false,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: BlocProvider(
              create: (context) => walletsBloc,
              child: BlocConsumer<WalletsBloc, WalletState>(
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
            ),
            bottomNavigationBar: BottomHomeButton(),
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
                          title: local.lbPro + " " + local.lbSave,
                        ),
                      ),
                      WaleetCurrentBalance(
                        title: local.lbProjectName,
                        currentBalancecontroller: projectNameController,
                        keyboardType: TextInputType.text,
                        unit: "",
                        node: node,
                      ),
                      WaleetCurrentBalance(
                        title: local.lbProjectValue,
                        currentBalancecontroller: projectValueController,
                        unit: PreferenceUtils().user.data.currency,
                      ),
                      WaleetCurrentBalance(
                        title: local.lbProjectStartValue,
                        currentBalancecontroller: projectStartValueController,
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
                              projectValue: projectValueController.text,
                              balance: projectStartValueController.text,
                              name: projectNameController.text,
                              isHidden: hideWallet ? "1" : "0",
                              walletType: widget.walletTypeData.id,
                              date: DateFormat('dd/MM/yyyy').format(date),
                              time: time.format(context),
                            ));
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
          ),
        ],
      ),
    );
  }
}
