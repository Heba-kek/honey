import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/Helpers/SizeConfig.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/presentation/page/Bank/Component/GreyButtonWithWhiteBorder.dart';
import 'package:honey/presentation/page/Bank/Component/TextFieldDatePicker.dart';

import 'package:honey/presentation/page/Bank/Component/TopHeader.dart';
import 'package:honey/presentation/page/Bank/ReportDetails.dart';

class BankReportMainView extends StatefulWidget {
  final String bankName;

  const BankReportMainView({Key key, this.bankName}) : super(key: key);
  @override
  _BankReportMainViewState createState() => _BankReportMainViewState();
}

class _BankReportMainViewState extends State<BankReportMainView> {
  final AppLocalizations local = AppLocalizations();
  bool didPressSubmit = false;
  bool startOfTheYearSelected = true;
  String fromDate;
  String toDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Container(
          width: SizeConfig.screenWidth(context),
          height: SizeConfig.screenHeight(context),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.0, -1.0),
              end: Alignment(0.0, 1.0),
              colors: [
                CustomColors.mainYellowColor,
                CustomColors.mainGreyColor
              ],
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopHeader(
                  title: local.lbBank,
                  image: Image.asset("assets/images/BankAccounts.png"),
                  onPress: () {
                    Navigator.of(context).pop();
                  },
                ),
                Container(
                  color: Colors.grey[300].withAlpha(100),
                  width: SizeConfig.screenWidth(context),
                  padding: EdgeInsets.only(top: 12),
                  child: Center(
                    child: Container(
                      width: SizeConfig.screenWidth(context) * 0.6,
                      padding: EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Image.asset("assets/images/bankReport.png"),
                          Text(local.lbReportBank + " " + widget.bankName),
                        ],
                      ),
                    ),
                  ),
                ),
                didPressSubmit
                    ? ReportDetails(
                        bankName: widget.bankName,
                        fromData: "10/5/2019",
                        toDate: "21/9/2020",
                        money: "10000",
                        numbersOfMove: "3",
                      )
                    : reportSubmitDataWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget reportSubmitDataWidget() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Checkbox(
                onChanged: (value) {
                  setState(() {
                    startOfTheYearSelected = value;
                  });
                },
                value: startOfTheYearSelected,
                checkColor: Colors.green,
                activeColor: Colors.white,
              ),
              Text(
                local.lbStartOfTheYear,
                style: TextStyle(
                    fontSize: 24,
                    color: startOfTheYearSelected
                        ? Colors.black
                        : Colors.black.withAlpha(100)),
              )
            ],
          ),
        ),
        //from date
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Checkbox(
                    onChanged: (value) {
                      setState(() {
                        startOfTheYearSelected = !value;
                      });
                    },
                    value: !startOfTheYearSelected,
                    checkColor: Colors.green,
                    activeColor: Colors.white,
                  ),
                  Text(
                    local.lbShowData,
                    style: TextStyle(
                        fontSize: 24,
                        color: !startOfTheYearSelected
                            ? Colors.black
                            : Colors.black.withAlpha(100)),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Text(
                  local.lbFrom,
                  style: TextStyle(
                      fontSize: 24,
                      color: !startOfTheYearSelected
                          ? Colors.black
                          : Colors.black.withAlpha(100)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 4, 24, 16),
                child: MyTextFieldDatePicker(
                    lastDate: DateTime.now().add(Duration(days: 50000)),
                    firstDate: DateTime.now(),
                    initialDate: DateTime.now().add(Duration(days: 1)),
                    fillColor: !startOfTheYearSelected
                        ? Colors.black
                        : Colors.black.withAlpha(100),
                    onDateChanged: (selectedDate) {
                      fromDate = selectedDate.toString();
                    }),
              ),
            ],
          ),
        ),

        //toDate
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 44),
                child: Text(
                  local.lbTodate,
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 4, 24, 16),
                child: MyTextFieldDatePicker(
                    lastDate: DateTime.now().add(Duration(days: 50000)),
                    firstDate: DateTime.now(),
                    initialDate: DateTime.now().add(Duration(days: 1)),
                    fillColor: Colors.black,
                    onDateChanged: (selectedDate) {
                      toDate = selectedDate.toString();
                    }),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 44.0),
                  child: GreyButtonWithWhiteBorder(
                    title: local.lbSubmit,
                    onPress: () {
                      setState(() {
                        didPressSubmit = !didPressSubmit;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
