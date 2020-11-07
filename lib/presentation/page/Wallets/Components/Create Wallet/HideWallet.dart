import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/lang/localss.dart';

class HideWallet extends StatelessWidget {
  final AppLocalizations local = AppLocalizations();
  final onChangedSwitch;
  final switchValue;

  HideWallet({Key key, this.onChangedSwitch, this.switchValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(color: CustomColors.mainYellowColor, width: 2)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              AutoSizeText(local.lbHideWallet),
              CupertinoSwitch(value: switchValue, onChanged: onChangedSwitch),
            ],
          ),
          AutoSizeText(local.lbHideWalletDescription),
        ],
      ),
    );
  }
}
