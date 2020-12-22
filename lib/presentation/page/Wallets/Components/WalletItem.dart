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
      height: 50,
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(color: CustomColors.mainYellowColor, width: 1)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: SvgPicture.network(imagePath),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: WalletHelper.getAutoSizeTextWith(
                      title: value, maxLines: 1, maxFontSize: 14),
                ),
              ),
              Expanded(
                flex: 0,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 12.0),
                  child: WalletHelper.getAutoSizeTextWith(
                      title: unit, maxLines: 1, maxFontSize: 12),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(bottom: 4.0, end: 8),
                child: Container(
                  width: 1,
                  height: 14,
                  color: CustomColors.mainYellowColor,
                ),
              ),
              InkWell(
                onTap: onPressDelete,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                  child:
                      SvgPicture.asset(WalletHelper.svgPath + "ic_trash.svg"),
                ),
              ),
            ],
          ),
          Expanded(
            child: WalletHelper.getAutoSizeTextWith(
                title: title, maxLines: 1, maxFontSize: 12),
          ),
        ],
      ),
    );
  }
}
