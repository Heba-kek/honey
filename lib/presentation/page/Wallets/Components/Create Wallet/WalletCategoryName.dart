import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletHelper.dart';

class WalletCategoryName extends StatelessWidget {
  final String imagePath;
  final String title;

  const WalletCategoryName({Key key, this.imagePath, this.title})
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: SvgPicture.network(imagePath),
          ),
          WalletHelper.getAutoSizeTextWith(
            title: title,
            maxFontSize: 20,
            minFontSize: 10,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
