import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/lang/localss.dart';

class WaleetCurrentBalance extends StatelessWidget {
  final AppLocalizations local = AppLocalizations();
  final TextEditingController currentBalancecontroller;
  final String unit;

  WaleetCurrentBalance({Key key, this.currentBalancecontroller, this.unit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(color: CustomColors.mainYellowColor, width: 2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AutoSizeText(
              local.lbCurrentBalance,
              maxLines: 1,
              maxFontSize: 16,
              minFontSize: 10,
            ),
          ),
          Container(
            width: 1,
            height: 55,
            color: Colors.black,
          ),
          Expanded(
              child: TextField(
            keyboardType: TextInputType.number,
            controller: currentBalancecontroller,
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AutoSizeText(
              unit,
              maxLines: 1,
              maxFontSize: 16,
              minFontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
