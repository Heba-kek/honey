import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/Domain/Wallets/Entities/WalletDetailsReportEntity.dart';
import 'package:honey/Domain/Wallets/Entities/WalletTypeEntity.dart';
import 'package:honey/application/Wallets/WalletsBloc.dart';
import 'package:honey/application/Wallets/WalletsEvent.dart';
import 'package:honey/application/Wallets/WalletsState.dart';
import 'package:honey/presentation/Common/ProgressWidget.dart';
import 'package:honey/presentation/page/Helper/UIHelper.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletCategoryName.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletCurrentBalance.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletCustomButton.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletHelper.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletsHeader.dart';
import 'package:honey/presentation/page/Wallets/Components/bottomHomeButton.dart';
import 'package:honey/presentation/page/Wallets/Components/walletDeleteDialog.dart';
import 'package:honey/presentation/page/Wallets/updateWallets/monthsSlider.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;
import 'package:honey/Core/Extension/StringExtension.dart';

import 'Components/WalletDateText.dart';

class CashWalletDetailsReport extends StatefulWidget {
  final WalletTypeData walletTypeData;

  const CashWalletDetailsReport({Key key, this.walletTypeData})
      : super(key: key);
  @override
  _CashWalletDetailsReportState createState() =>
      _CashWalletDetailsReportState();
}

class _CashWalletDetailsReportState extends State<CashWalletDetailsReport> {
  final AppLocalizations local = AppLocalizations();
  final DateFormat dateFormat = DateFormat("yyyy-MM-dd", "en");
  int currentMonth;
  final DateTime now = DateTime.now();

  final FocusNode node = FocusNode();
  WalletsBloc walletsBloc;
  bool hideWallet = false;

  WalletDetailsReportData walletDetailsReportData;

  bool showReport = true;

  @override
  void initState() {
    walletsBloc = WalletsBloc();

    walletsBloc.add(WalletDetailsReportEvent(
      endDate: dateFormat.format(now),
      walletID: widget.walletTypeData.id,
    ));

    currentMonth = now.month;
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
                  } else if (state is GetWalletDetailsReportLoaded) {
                    if (state.walletDetailsReportEntity.code == "1") {
                      walletDetailsReportData =
                          state.walletDetailsReportEntity.data;

                      walletsBloc.add(InitialEvent());
                    } else {
                      return Center(
                        child: Text("Something happened"),
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
                  return getBody(walletDetailsReportData);
                },
                listener: (context, state) {},
              ),
              bottomNavigationBar: BottomHomeButton(
                showReportButoon: true,
                onPressReportButton: () {
                  setState(() {
                    showReport = true;
                  });
                },
                onPressShowReguralPage: () {
                  setState(() {
                    showReport = false;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getBody(WalletDetailsReportData data) {
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
            padding: EdgeInsets.only(top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WalletDateText(
                        title: "${now.year}/$currentMonth/1",
                      ),
                      WalletDateText(
                        title:
                            "${now.year}/$currentMonth/${DateTime(now.year, currentMonth + 1, 0).day}",
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                  child: Center(
                    child: WalletCategoryName(
                      imagePath: widget.walletTypeData.icon,
                      title: widget.walletTypeData.name,
                    ),
                  ),
                ),
                MonthsSlider(
                  selectedIndex: currentMonth - 1,
                  onPressedBack: () {
                    setState(() {
                      if (currentMonth == 1) {
                        currentMonth = 12;
                      } else {
                        currentMonth--;
                      }
                      refreshDate();
                    });
                  },
                  onPressedNext: () {
                    setState(() {
                      if (currentMonth == 12) {
                        currentMonth = 1;
                      } else {
                        currentMonth++;
                      }
                      refreshDate();
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 32.0, right: 32.0, bottom: 24),
                  child: WaleetCurrentBalance(
                    title: local.lbCurrentBalance,
                    currentBalancecontroller: TextEditingController(
                      text: data?.balance != null && data.balance.length > 0
                          ? StringComma.withComma(data.balance[0].balance)
                          : "",
                    ),
                    isEnabled: false,
                    unit: data?.currency != null && data.currency.length > 0
                        ? data.currency[0].name
                        : "",
                  ),
                ),
                if (data?.expenses != null && data.expenses.length > 0)
                  showReport
                      ? Flexible(
                          child:
                              _getBodyWidget(walletDetailsReportData.expenses))
                      : Expanded(
                          child:
                              getReportCell(data.expenses, data.currency[0])),
                if (data?.total != null && data.total.length > 0)
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                    child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: CustomColors.mainYellowColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            WalletHelper.getAutoSizeTextWith(
                                title: local.lbTotalSpending,
                                fontColor: Colors.black,
                                maxFontSize: 16),
                            WalletHelper.getAutoSizeTextWith(
                                title: StringComma.withComma(
                                    data?.total[0].total.toString()),
                                fontColor: Colors.black,
                                maxFontSize: 16),
                            WalletHelper.getAutoSizeTextWith(
                                title: data.currency.length > 0
                                    ? data.currency[0].name
                                    : "",
                                fontColor: Colors.black,
                                maxFontSize: 16),
                          ],
                        )),
                  ),
              ],
            ),
          ))
        ],
      ),
    );
  }

  void refreshDate() {
    walletsBloc.add(WalletDetailsReportEvent(
      startDate: "${now.year}/$currentMonth/1",
      endDate:
          "${now.year}/$currentMonth/${DateTime(now.year, currentMonth + 1, 0).day}",
      walletID: widget.walletTypeData.id,
    ));
  }

  Widget getReportCell(List<Expense> expenses, Currency currency) {
    return ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: expenses.length,
        itemBuilder: (context, index) {
          Expense expense = expenses[index];
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [UIHelper.getShadow()]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      WalletHelper.getAutoSizeTextWith(
                          title: expense.time,
                          fontColor: Colors.grey[400],
                          maxFontSize: 16),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 12, start: 10.0),
                        child: Row(
                          children: [
                            Image.network(
                              expense.categoryIcon,
                              width: 30,
                              height: 30,
                            ),
                            Container(
                              width: 6,
                            ),
                            WalletHelper.getAutoSizeTextWith(
                                title: expense.catName,
                                fontColor: Colors.black87,
                                maxFontSize: 16),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            size: 30,
                            color: CustomColors.praimarydark,
                          ),
                          Container(
                            width: 6,
                          ),
                          WalletHelper.getAutoSizeTextWith(
                              title: expense.contactName,
                              fontColor: Colors.black87,
                              maxFontSize: 16),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.details,
                            size: 30,
                            color: CustomColors.praimarydark,
                          ),
                          Container(
                            width: 6,
                          ),
                          WalletHelper.getAutoSizeTextWith(
                              title: expense.details,
                              fontColor: Colors.black87,
                              maxFontSize: 16),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      WalletHelper.getAutoSizeTextWith(
                          title: expense.date,
                          fontColor: Colors.grey[400],
                          maxFontSize: 16),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, bottom: 4.0),
                        child: WalletCategoryName(
                          imagePath: widget.walletTypeData.icon,
                          title: widget.walletTypeData.name,
                          showDivider: false,
                          height: 40,
                        ),
                      ),
                      getMoneyLabel(local.lbTotal, expense.total, currency.name,
                          Colors.black),
                      getMoneyLabel(local.lbPaidName, expense.amount,
                          currency.name, Colors.blue[900]),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget getMoneyLabel(
      String label, String total, String currency, Color moneyTextColor) {
    return Row(
      children: [
        RichText(
          textDirection: local.locale.contains("ar")
              ? ui.TextDirection.rtl
              : ui.TextDirection.ltr,
          text: TextSpan(children: [
            TextSpan(
              text: label + "  ",
              style: TextStyle(
                fontFamily: "Ebrima",
                fontSize: 14,
                color: Colors.grey[800],
              ),
            ),
            TextSpan(
              text: StringComma.withComma(total),
              style: TextStyle(
                fontFamily: "Ebrima",
                fontSize: 14,
                color: moneyTextColor,
              ),
            ),
          ]),
        ),
        WalletHelper.getAutoSizeTextWith(
            title: " " + currency,
            fontColor: Colors.grey[800],
            maxFontSize: 16),
      ],
    );
  }

  Widget _getBodyWidget(List<Expense> expenses) {
    double elementWidth = MediaQuery.of(context).size.width / 3;
    return HorizontalDataTable(
      leftHandSideColumnWidth: elementWidth,
      rightHandSideColumnWidth: elementWidth * 2,
      isFixedHeader: true,
      headerWidgets: _getTitleWidget(
        MediaQuery.of(context).size.width / 3,
      ),
      leftSideItemBuilder: (context, index) {
        return _getBodyItemWidget(StringComma.withComma(expenses[index].total),
            elementWidth, index % 2 != 0);
      },
      rightSideItemBuilder: (context, index) {
        return Row(
          children: [
            _getBodyItemWidget(
                expenses[index].date, elementWidth, index % 2 != 0),
            _getBodyItemWidget(
                expenses[index].details, elementWidth, index % 2 != 0),
          ],
        );
      },
      itemCount: expenses.length,
      rowSeparatorWidget: const Divider(
        color: Colors.yellow,
        height: 1.0,
        thickness: 1.0,
      ),
      leftHandSideColBackgroundColor: Colors.black,
    );
  }

  List<Widget> _getTitleWidget(double width) {
    return [
      _getTitleItemWidget(AppLocalizations().lbTotal, width),
      _getTitleItemWidget(AppLocalizations().lbDate, width),
      _getTitleItemWidget(AppLocalizations().lbDes, width),
    ];
  }

  Widget _getTitleItemWidget(String label, double width) {
    return Container(
      color: CustomColors.praimarydark,
      child: Center(
        child: Text(label,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      ),
      height: 40,
      width: width,
      alignment: Alignment.center,
    );
  }

  Widget _getBodyItemWidget(String label, double width, bool isEven) {
    return Row(
      children: [
        Container(),
        Container(
          color: isEven ? Colors.grey[200] : Colors.white,
          child: Center(
            child: Text(label,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.black)),
          ),
          height: 36,
          width: width - 2,
          alignment: Alignment.center,
        ),
        Container(
          height: 36,
          width: 2,
          color: CustomColors.mainYellowColor,
        )
      ],
    );
  }
}
