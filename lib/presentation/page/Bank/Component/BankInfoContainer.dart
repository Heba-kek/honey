import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/SizeConfig.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/presentation/page/Bank/Component/GreyButtonWithWhiteBorder.dart';

class BankInfoContainer extends StatelessWidget {
  final String bankName;
  final String moneyAmount;
  final Function reportOnPress;
  final Function feesOnPress;
  final Function interestOnPress;
  final AppLocalizations local = AppLocalizations();

  BankInfoContainer(
      {Key key,
      this.bankName,
      this.moneyAmount,
      this.reportOnPress,
      this.feesOnPress,
      this.interestOnPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(SizeConfig.borderRadius),
            ),
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                bankName,
                style: TextStyle(fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                moneyAmount,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GreyButtonWithWhiteBorder(
                      title: local.lbinterest, onPress: interestOnPress),
                ),
                GreyButtonWithWhiteBorder(
                    title: local.lbFees, onPress: feesOnPress),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GreyButtonWithWhiteBorder(
                      title: local.lbReport, onPress: reportOnPress),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
