import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/Helpers/SizeConfig.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/presentation/page/Bank/Component/AddButtonWithWhiteHeader.dart';
import 'package:honey/presentation/page/Bank/Component/TopHeader.dart';

import 'Component/GreyButtonWithWhiteBorder.dart';

class AddBankMainView extends StatefulWidget {
  @override
  _AddBankMainViewState createState() => _AddBankMainViewState();
}

class _AddBankMainViewState extends State<AddBankMainView> {
  AppLocalizations local = AppLocalizations();
  final TextEditingController bankNameController = TextEditingController();
  final TextEditingController moneyController = TextEditingController();
  String selectedCurrncey = "SYP";
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
              AddButtonWithWhiteHeader(
                showAddButoon: false,
                onPress: () {},
              ),
              //bank name
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(SizeConfig.borderRadius),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(bottom: 24, left: 16, right: 16),
                    child: TextField(
                      controller: bankNameController,
                      decoration: new InputDecoration(
                          hintText: "",
                          labelText: local.lbBankName,
                          labelStyle: new TextStyle(color: Colors.black),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          border: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black))),
                    ),
                  ),
                ),
              ),
              //money amount
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(SizeConfig.borderRadius),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(bottom: 24, left: 16, right: 16),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: moneyController,
                      decoration: new InputDecoration(
                          hintText: "",
                          labelText: local.lbAmount,
                          labelStyle: new TextStyle(color: Colors.black),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          border: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black))),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  width: SizeConfig.screenWidth(context) * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(SizeConfig.borderRadius),
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(local.lbCurrency),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(SizeConfig.borderRadius),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  offset: Offset(0, 8),
                                  blurRadius: 10,
                                ),
                              ]),
                          child: Container(
                            margin: EdgeInsets.all(4),
                            child: new DropdownButton<String>(
                              items: <String>['SYP', 'USD', 'EURO']
                                  .map((String value) {
                                return new DropdownMenuItem<String>(
                                  value: value,
                                  child: new Text(value),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  selectedCurrncey = value;
                                });
                              },
                              value: selectedCurrncey,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: GreyButtonWithWhiteBorder(
                    title: local.lbSave,
                    onPress: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
