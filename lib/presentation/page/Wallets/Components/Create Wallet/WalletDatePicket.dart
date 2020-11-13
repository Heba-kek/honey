import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletHelper.dart';
import 'package:intl/intl.dart';

class WalletDatePicker extends StatelessWidget {
  final AppLocalizations local = AppLocalizations();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
      child: Container(
          height: 80,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border(
                bottom:
                    BorderSide(color: CustomColors.mainYellowColor, width: 2)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                "assets/images/SVG/ic_calendar.svg",
                fit: BoxFit.fill,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  WalletHelper.getAutoSizeTextWith(
                    title: local.lbDate,
                    maxFontSize: 20,
                    minFontSize: 10,
                    maxLines: 1,
                    fontColor: Colors.grey[600],
                  ),
                  WalletHelper.getAutoSizeTextWith(
                      title: DateFormat('dd/MM/yyyy').format(DateTime.now()),
                      maxFontSize: 20,
                      minFontSize: 10,
                      maxLines: 1,
                      fontColor: Colors.grey[600]),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsetsDirectional.only(start: 12.0, end: 12.0),
                child: SvgPicture.asset(
                  "assets/images/SVG/ic_clock.svg",
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  WalletHelper.getAutoSizeTextWith(
                      title: local.lbTime,
                      maxFontSize: 20,
                      minFontSize: 10,
                      maxLines: 1,
                      fontColor: Colors.grey[600]),
                  WalletHelper.getAutoSizeTextWith(
                      title: DateFormat.jm().format(DateTime.now()),
                      maxFontSize: 20,
                      minFontSize: 10,
                      maxLines: 1,
                      fontColor: Colors.grey[600]),
                ],
              )
            ],
          )),
    );
  }
}
