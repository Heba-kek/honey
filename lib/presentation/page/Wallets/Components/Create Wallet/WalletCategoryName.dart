import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletHelper.dart';

class WalletCategoryName extends StatelessWidget {
  final String imagePath;
  final String title;
  final bool showDivider;
  final double height;

  const WalletCategoryName(
      {Key key,
      this.imagePath,
      this.title,
      this.showDivider = true,
      this.height = 60})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        border: Border(
            bottom: showDivider
                ? BorderSide(color: CustomColors.mainYellowColor, width: 1)
                : BorderSide.none),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: showDivider ? MainAxisSize.max : MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: SvgPicture.network(imagePath),
          ),
          WalletHelper.getAutoSizeTextWith(
            title: title,
            maxFontSize: 16,
            minFontSize: 10,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
