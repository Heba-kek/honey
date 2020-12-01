import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/presentation/page/Medicine/Pickers.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletHelper.dart';

class WalletNumberPicker extends StatelessWidget {
  final String title;
  final Function(int) onSelectedValue;
  final int selectedValue;
  final AppLocalizations locale = AppLocalizations();

  WalletNumberPicker(
      {Key key, this.title, this.selectedValue, this.onSelectedValue})
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
          Expanded(
            child: WalletHelper.getAutoSizeTextWith(
              title: title,
              maxFontSize: 20,
              minFontSize: 10,
              maxLines: 1,
            ),
          ),
          FlatButton(
            onPressed: () {
              showNumberPicker(
                context: context,
                title: locale.lbDay,
                maxNumber: 31,
                minNumber: 1,
                selectedNumber: selectedValue,
                onChanged: onSelectedValue,
                headerColor: CustomColors.mainYellowColor,
                cancelText: locale.lbCancel,
                confirmText: locale.lbSubmit,
              );
            },
            child: Container(
              height: 30,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: selectedValue == null
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.spaceEvenly,
                children: [
                  if (selectedValue != null)
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(selectedValue.toString()),
                    ),
                  Icon(Icons.arrow_drop_down_sharp)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
