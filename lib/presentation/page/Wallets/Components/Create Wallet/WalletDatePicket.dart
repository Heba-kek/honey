import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:intl/intl.dart';

class WalletDatePicker extends StatelessWidget {
  final AppLocalizations local = AppLocalizations();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        decoration: BoxDecoration(
          border: Border(
              bottom:
                  BorderSide(color: CustomColors.mainYellowColor, width: 2)),
        ),
        child: Row(
          children: [
            Image.asset("DateImage"),
            Column(
              children: [
                AutoSizeText(
                  local.lbDate,
                  maxFontSize: 14,
                  minFontSize: 10,
                ),
                AutoSizeText(
                  DateFormat('dd/MM/yyyy').format(DateTime.now()),
                  maxFontSize: 14,
                  minFontSize: 10,
                ),
              ],
            ),
            Image.asset("timeImage"),
            Column(
              children: [
                AutoSizeText(
                  local.lbTime,
                  maxFontSize: 14,
                  minFontSize: 10,
                ),
                AutoSizeText(
                  DateFormat.jm().format(DateTime.now()),
                  maxFontSize: 14,
                  minFontSize: 10,
                ),
              ],
            )
          ],
        ));
  }
}
