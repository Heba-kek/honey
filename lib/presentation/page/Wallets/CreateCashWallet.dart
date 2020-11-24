import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
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
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletDatePicket.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletsHeader.dart';
import 'package:honey/presentation/page/Wallets/Components/bottomHomeButton.dart';
import 'package:intl/intl.dart';

///cash and bank wallets
class CreateCashWallet extends StatefulWidget {
  final bool isBank;
  final WalletTypeData walletTypeData;

  const CreateCashWallet({Key key, this.isBank = false, this.walletTypeData})
      : super(key: key);

  @override
  _CreateCashWalletState createState() => _CreateCashWalletState();
}

class _CreateCashWalletState extends State<CreateCashWallet> {
  final AppLocalizations local = AppLocalizations();
  final TextEditingController currentCashController = TextEditingController();
  final TextEditingController bankNameController = TextEditingController();
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
    return BlocProvider(
      create: (context) => walletsBloc,
      child: Container(
        color: CustomColors.mainYellowColor,
        child: SafeArea(
          top: true,
          bottom: false,
          child: Scaffold(
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
                      Navigator.of(context).pop();
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
                if (widget.isBank)
                  WaleetCurrentBalance(
                    title: local.lbBankName,
                    currentBalancecontroller: bankNameController,
                    unit: "",
                  ),
                WaleetCurrentBalance(
                  title: local.lbCurrentBalance,
                  currentBalancecontroller: currentCashController,
                  unit: "Sp",
                ),
                WalletDatePicker(),
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
                  buttonTitle: "Create",
                  onPress: () {
                    if ((bankNameController.text.isEmpty && widget.isBank) ||
                        currentCashController.text.isEmpty) {
                      UIHelper.showHelperToast(local.lbFeildsAreRequired);
                    } else {
                      walletsBloc.add(AddWalletEvent(
                          balance: currentCashController.text,
                          name: bankNameController.text,
                          isHidden: hideWallet ? "1" : "0",
                          walletType: widget.walletTypeData.id,
                          date: DateFormat('dd/MM/yyyy').format(DateTime.now()),
                          time: DateFormat.jm().format(DateTime.now()),
                          paymentDate: "",
                          projectValue: "",
                          reminderDate: ""));
                    }
                  },
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
