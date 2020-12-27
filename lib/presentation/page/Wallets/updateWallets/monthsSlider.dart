import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletHelper.dart';
import 'dart:math';

final List<String> monthsAr = [
  "كانون الثاني",
  "شباط",
  "آذار",
  "نيسان",
  "أيار",
  "حزيران",
  "تموز",
  "آب",
  "أيلول",
  "تشرين الأول",
  "تشرين الثاني	",
  "كانون الأول",
];

final List<String> monthsEn = [
  "January",
  "February",
  "March",
  "April",
  "May",
  "June",
  "July",
  "August",
  "September",
  "October",
  "November",
  "December",
];

class MonthsSlider extends StatelessWidget {
  final AppLocalizations localizations = AppLocalizations();

  final AppLocalizations local = AppLocalizations();
  final int selectedIndex;
  final Function onPressedBack;
  final Function onPressedNext;

  MonthsSlider(
      {Key key, this.selectedIndex, this.onPressedBack, this.onPressedNext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              icon: Icon(Icons.arrow_back_ios), onPressed: onPressedBack),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24),
            child: WalletHelper.getAutoSizeTextWith(
              title: local.locale.contains("ar")
                  ? monthsAr[selectedIndex]
                  : monthsEn[selectedIndex],
              maxFontSize: 16,
              minFontSize: 10,
              maxLines: 1,
            ),
          ),
          Transform.rotate(
              angle: 180 * pi / 180,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: onPressedNext,
              ))
        ],
      ),
    );
  }
}
