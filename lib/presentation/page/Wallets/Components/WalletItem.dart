import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';

class WalletItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String value;
  final String unit;

  const WalletItem({Key key, this.imagePath, this.title, this.value, this.unit})
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
          Container(
            padding: EdgeInsets.all(8),
            height: 50,
            width: 50,
            child: Image.network(imagePath),
          ),
          Expanded(
              child: AutoSizeText(
            title,
            maxFontSize: 12,
            minFontSize: 10,
            maxLines: 1,
          )),
          Expanded(
              child: AutoSizeText(
            value,
            maxFontSize: 12,
            minFontSize: 10,
            maxLines: 1,
          )),
          Expanded(
              child: AutoSizeText(
            unit,
            maxFontSize: 12,
            minFontSize: 10,
            maxLines: 1,
          )),
        ],
      ),
    );
  }
}
