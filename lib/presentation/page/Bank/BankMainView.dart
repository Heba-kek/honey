import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/Colors.dart';
import 'package:honey/Core/Helpers/SizeConfig.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/presentation/page/Bank/AddBankMainView.dart';
import 'package:honey/presentation/page/Bank/Component/AddButtonWithWhiteHeader.dart';
import 'package:honey/presentation/page/Bank/Component/BankInfoContainer.dart';
import 'package:honey/presentation/page/Bank/Component/TopHeader.dart';
import 'package:honey/presentation/page/Bank/Component/TotalAmountsinBanks.dart';
import 'package:honey/presentation/page/Bank/ReportMainView.dart';

class BankMainView extends StatefulWidget {
  final Function onPressBack;

  const BankMainView({Key key, this.onPressBack}) : super(key: key);
  @override
  _BankMainViewState createState() => _BankMainViewState();
}

class _BankMainViewState extends State<BankMainView> {
  AppLocalizations local = AppLocalizations();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth(context),
      height: SizeConfig.screenHeight(context),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.0, -1.0),
          end: Alignment(0.0, 1.0),
          colors: [CustomColors.mainYellowColor, CustomColors.mainGreyColor],
          stops: [0.0, 1.0],
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0x29000000),
            offset: Offset(0, 10),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        children: [
          TopHeader(
            title: local.lbBank,
            image: Image.asset("assets/images/BankAccounts.png"),
            onPress: widget.onPressBack,
          ),
          AddButtonWithWhiteHeader(
            showAddButoon: true,
            onPress: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AddBankMainView()));
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TotalAmountInbankWidget(
              currncies: {"SYP": "250000", "USD": "100"},
            ),
          ),
          BankInfoContainer(
            bankName: "Bemo",
            feesOnPress: () {},
            interestOnPress: () {},
            moneyAmount: "15000 SYP",
            reportOnPress: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BankReportMainView()));
            },
          ),
        ],
      ),
    );
  }
}
