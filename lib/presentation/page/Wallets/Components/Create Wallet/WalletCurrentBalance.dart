import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletHelper.dart';

class WaleetCurrentBalance extends StatelessWidget {
  final AppLocalizations local = AppLocalizations();
  final TextEditingController currentBalancecontroller;
  final String title;
  final String unit;
  final TextInputType keyboardType;

  WaleetCurrentBalance({
    Key key,
    this.currentBalancecontroller,
    this.unit,
    this.title,
    this.keyboardType = TextInputType.number,
  }) : super(key: key);

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
            child: WalletHelper.getAutoSizeTextWith(
              title: this.title,
              maxFontSize: 20,
              minFontSize: 10,
              maxLines: 1,
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(12.0),
          //   child: Container(
          //     width: 1,
          //     color: Colors.black,
          //   ),
          // ),
          Expanded(
              child: TextField(
            keyboardType: keyboardType,
            controller: currentBalancecontroller,
            decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none),
            cursorColor: Colors.black,
          )),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8, 24, 8),
            child: WalletHelper.getAutoSizeTextWith(
              title: unit,
              maxFontSize: 20,
              minFontSize: 10,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
