import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletHelper.dart';

class WalletItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String value;
  final String unit;
  final Function onPressDelete;

  const WalletItem(
      {Key key,
      this.imagePath,
      this.title,
      this.value,
      this.unit,
      this.onPressDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(color: CustomColors.mainYellowColor, width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            height: 50,
            width: 50,
            child: SvgPicture.network(imagePath),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: WalletHelper.getAutoSizeTextWith(title: title),
            ),
          ),
          Expanded(
            flex: 2,
            child: WalletHelper.getAutoSizeTextWith(title: value),
          ),
          Expanded(
            flex: 1,
            child: WalletHelper.getAutoSizeTextWith(title: unit),
          ),
          Padding(
            padding:
                EdgeInsetsDirectional.only(top: 14.0, bottom: 14.0, end: 8),
            child: Container(
              width: 1,
              color: CustomColors.mainYellowColor,
            ),
          ),
          InkWell(
            onTap: onPressDelete,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              child: SvgPicture.asset(WalletHelper.svgPath + "ic_trash.svg"),
            ),
          ),
        ],
      ),
    );
  }
}
