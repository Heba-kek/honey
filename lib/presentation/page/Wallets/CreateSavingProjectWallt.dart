import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
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
    return Container(
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
                      Navigator.of(context).pop();
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
                        currentBalancecontroller: projectValueController,
                        unit: "Sp",
                      ),
                      WaleetCurrentBalance(
                        title: local.lbProjectStartValue,
                        currentBalancecontroller: projectStartValueController,
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
                        buttonTitle: local.lbcreate,
                        onPress: () {
                          if (projectValueController.text.isEmpty ||
                              projectStartValueController.text.isEmpty ||
                              projectNameController.text.isEmpty) {
                            UIHelper.showHelperToast(local.lbFeildsAreRequired);
                          } else {
                            walletsBloc.add(AddWalletEvent(
                              projectValue: projectValueController.text,
                              balance: projectStartValueController.text,
                              name: projectNameController.text,
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
