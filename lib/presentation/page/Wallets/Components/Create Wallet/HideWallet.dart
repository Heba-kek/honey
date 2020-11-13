import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletHelper.dart';

class HideWallet extends StatelessWidget {
  final AppLocalizations local = AppLocalizations();
  final onChangedSwitch;
  final switchValue;

  HideWallet({Key key, this.onChangedSwitch, this.switchValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(color: CustomColors.mainYellowColor, width: 2)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: WalletHelper.getAutoSizeTextWith(
                  title: local.lbHideWallet,
                  maxFontSize: 20,
                  minFontSize: 10,
                  maxLines: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 12, end: 12),
                child: CupertinoSwitch(
                    value: switchValue, onChanged: onChangedSwitch),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 16.0),
            child: WalletHelper.getAutoSizeTextWith(
                title: local.lbHideWalletDescription,
                maxFontSize: 20,
                minFontSize: 10,
                maxLines: 2,
                fontColor: Colors.grey[800]),
          ),
        ],
      ),
    );
  }
}
